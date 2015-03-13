using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Duality;
using Duality.Drawing;
using Duality.Resources;
using OpenTK;
using TextureStitch.Stitch;
using TextureStitch.Utils;

namespace TextureStitch.Components
{
    [Serializable]
    [RequiredComponent(typeof(StitchPath))]
    public class StitchRenderer : Component, ICmpRenderer
    {
        public VisibilityFlag VisibilityGroup { get; set; }

        public float TopThreshold { get; set; }
        public float SegmentSplitSize { get; set; }

        public ContentRef<Material> TopMaterial { get; set; }
        public ContentRef<Material> BottomMaterial { get; set; }
        public ContentRef<Material> SideMaterial { get; set; }
        public ContentRef<Material> FillMaterial { get; set; }
        public ContentRef<Material> LeftCapMaterial { get; set; }
        public ContentRef<Material> RightCapMaterial { get; set; }

        public Vector2 FillUvOffset { get; set; }
        public float FillScale { get; set; }
   
        [NonSerialized]
        private VertexCache<VertexC1P3T2> _vertexCache = new VertexCache<VertexC1P3T2>(); 

        public StitchRenderer()
        {
            VisibilityGroup = VisibilityFlag.Group0;
            TopThreshold = 60;
            SegmentSplitSize = 64f;
            FillScale = 1f;
        }

        #region ICmpRenderer Implementation

        public bool IsVisible(IDrawDevice device)
        {
            if ((device.VisibilityMask & VisibilityFlag.ScreenOverlay) != (VisibilityGroup & VisibilityFlag.ScreenOverlay)) return false;
            if ((VisibilityGroup & device.VisibilityMask & VisibilityFlag.AllGroups) == VisibilityFlag.None) return false;
            return device.IsCoordInView(GameObj.Transform.Pos, BoundRadius);
        }

        public float BoundRadius
        {
            get
            {
                // TODO: move to instance variable, set on initialize
                var path = GameObj.GetComponent<StitchPath>().Path;

                if (path == null)
                    return 256f;

                float maxDist = 0f;
                foreach (var point in path)
                {
                    float dst = point.Pos.DistanceTo(GameObj.Transform.Pos.Xy);
                    if (dst > maxDist)
                        maxDist = dst;
                }
                return maxDist;
            }
        }
        
        #endregion

        private Side GetSideFromAngle(float angle)
        {
            if (!MathHelper.AngleInRange(angle, -TopThreshold, TopThreshold))
                return Side.Left;
            if (MathHelper.AngleInRange(angle, -TopThreshold, TopThreshold))
                return Side.Top;

            // TODO: bottom

            return Side.Top;
        }

        private void IterateSegments(Action<MeshNode, MeshNode, int> segmentAction)
        {
            var path = GameObj.GetComponent<StitchPath>().Path;
            for (int i = 0; i < path.Count; i++)
            {
                var p1 = path[i];
                var p2 = i == path.Count - 1 ? path[0] : path[i + 1];
                segmentAction(p1, p2, i);
            }
        }

        private MeshNode PreviousNode(MeshNode node)
        {
            var path = GameObj.GetComponent<StitchPath>().Path;
            int i = path.IndexOf(node);
            return i == 0 ? path[path.Count - 1] : path[i - 1];
        }

        private MeshNode NextNode(MeshNode node)
        {
            var path = GameObj.GetComponent<StitchPath>().Path;
            int i = path.IndexOf(node);
            return i == path.Count - 1 ? path[0] : path[i + 1];
        }
        
        // TODO: miter or not when angle too sharp
        public void DrawDebug(Canvas canvas)
        {
            var path = GameObj.GetComponent<StitchPath>().Path;

            float z = GameObj.Transform.Pos.Z - 1f;

            // Preprocess Coords
            Vector3 actualPosition = GameObj.Transform.Pos;
            float actualScale = 1f;
            canvas.DrawDevice.PreprocessCoords(ref actualPosition, ref actualScale);

            ColorRgba nodeColor = ColorRgba.White;

            // all points
            foreach (var point in path)
            {
                canvas.State.ColorTint = nodeColor;
                canvas.FillCircle(point.Pos.X, point.Pos.Y, z, 8f);
            }

            // fill mesh
            {
                canvas.State.ColorTint = new ColorRgba(0.75f, 0f, 1f);
                var fillPoints = path;
                var triangles = Triangulator.Triangulate(fillPoints.Select(x => x.Pos));
                foreach (var triangle in triangles)
                    canvas.DrawPolygon(new []{ triangle.Pos1.Xy, triangle.Pos2.Xy, triangle.Pos3.Xy }, 0f, 0f, 0f);
            }

            // side meshes
            canvas.State.ColorTint = new ColorRgba(1f, 1f, 0f);
            IterateSegments((point1, point2, i) =>
            {
                var angle = point1.Pos.AngleTo(point2.Pos);
                var side = GetSideFromAngle(angle);

                bool useMiterLeft = GetSideFromAngle(PreviousNode(point1).Pos.AngleTo(point1.Pos)) == side;
                bool useMiterRight = GetSideFromAngle(point2.Pos.AngleTo(NextNode(point2).Pos)) == side;

                bool useLeftCap = !useMiterRight && (side == Side.Bottom || side == Side.Top);
                bool useRightCap =!useMiterLeft && (side == Side.Bottom || side == Side.Top);

                var height = TopMaterial.IsAvailable ? TopMaterial.Res.MainTexture.Res.PixelHeight : 32f;

                float distance = point1.Pos.DistanceTo(point2.Pos);
                int segments = (int)(distance / SegmentSplitSize) + 1;

                var localNodes = new List<Vector2>();
                localNodes.Add(PreviousNode(point1).Pos);
                localNodes.AddRange(SplitSegmentIntoNodes(point1, point2, segments).ToList());
                localNodes.Add(NextNode(point2).Pos);

                for (int k = 1; k < localNodes.Count - 2; k++)
                {
                    var p0 = localNodes[k - 1];
                    var p1 = localNodes[k];
                    var p2 = localNodes[k + 1];
                    var p3 = localNodes[k + 2];

                    if (k == 1 && !useMiterLeft)
                        p0 = localNodes[k];
                    if (k == localNodes.Count - 3 && !useMiterRight)
                        p3 = localNodes[k + 1];

                    // 1) define the line between the two points
                    var line = (p2 - p1).Normalized;

                    // 2) find the normal vector of this line
                    var normal = new Vector2(-line.Y, line.X).Normalized;

                    // 3) find the tangent vector at both the end points:
                    //		-if there are no segments before or after this one, use the line itself
                    //		-otherwise, add the two normalized lines and average them by normalizing again
                    var tangent1 = (p0 == p1) ? line : ((p1 - p0).Normalized + line).Normalized;
                    var tangent2 = (p2 == p3) ? line : ((p3 - p2).Normalized + line).Normalized;

                    // 4) find the miter line, which is the normal of the tangent
                    var miter1 = new Vector2(-tangent1.Y, tangent1.X);
                    var miter2 = new Vector2(-tangent2.Y, tangent2.X);

                    // find length of miter by projecting the miter onto the normal,
                    // take the length of the projection, invert it and multiply it by the thickness:
                    //		length = thickness * ( 1 / |normal|.|miter| )
                    float length1 = (height / 2f) / Vector2.Dot(normal, miter1);
                    float length2 = (height / 2f) / Vector2.Dot(normal, miter2);

                    canvas.State.ColorTint = new ColorRgba(1f, 0f, 0f);
                    // miter 1
                    var miter1Start = p1 - miter1 * length1;
                    var miter1End = p1 + miter1 * length1;
                    // miter 2
                    var miter2Start = p2 - miter2 * length2;
                    var miter2End = p2 + miter2 * length2;
                    {
                        canvas.DrawLine(miter1Start.X, miter1Start.Y, 0f, miter1End.X, miter1End.Y, 0f);
                        canvas.DrawLine(miter2Start.X, miter2Start.Y, 0f, miter2End.X, miter2End.Y, 0f);
                    }

                    var verts = new Vector2[4];

                    verts[0] = new Vector2(miter1Start.X, miter1Start.Y);
                    verts[1] = new Vector2(miter1End.X, miter1End.Y);
                    verts[2] = new Vector2(miter2End.X, miter2End.Y);
                    verts[3] = new Vector2(miter2Start.X, miter2Start.Y);


                    //for (int j = 0; j < verts.Length; j++)
                    //{
                    //    verts[j] = Vector2.Transform(verts[j],
                    //        Matrix4.CreateTranslation(/*k * width*/0, -height / 2f, 0f) * // center it
                    //        Matrix4.CreateRotationZ(angle) *
                    //        Matrix4.CreateTranslation(p2.Pos.X, p2.Pos.Y, 0f));
                    //}

                    canvas.State.ColorTint = new ColorRgba(1f, 1f, 0f);
                    canvas.DrawLine(verts[0].X, verts[0].Y, 0f, verts[3].X, verts[3].Y, 0f);
                    canvas.DrawLine(verts[1].X, verts[1].Y, 0f, verts[2].X, verts[2].Y, 0f);
                }

                float capZOffset = -0.5f;

                canvas.State.ColorTint = new ColorRgba(0f, 1f, 0f);
                if (useLeftCap && LeftCapMaterial.IsAvailable)
                {
                    var material = LeftCapMaterial;
                    var texture = material.Res.MainTexture.Res;
                    float width = texture.PixelWidth;
                    float halfHeight = texture.PixelHeight * 0.5f;

                    var vertices = _vertexCache.Next(4);
                    vertices[0].Pos = new Vector3(-width, -halfHeight, z + capZOffset);
                    vertices[1].Pos = new Vector3(-width, halfHeight, z + capZOffset);
                    vertices[2].Pos = new Vector3(0, halfHeight, z + capZOffset);
                    vertices[3].Pos = new Vector3(0, -halfHeight, z + capZOffset);

                    for (int j = 0; j < vertices.Length; j++)
                    {
                        vertices[j].Pos = Vector3.Transform(vertices[j].Pos,
                            Matrix4.CreateRotationZ(angle) *
                            Matrix4.CreateTranslation(new Vector3(point2.Pos)));
                    }

                    canvas.DrawPolygon(vertices.Select(x => x.Pos.Xy).ToArray(), 0f, 0f, 0f);
                }

                if (useRightCap && RightCapMaterial.IsAvailable)
                {
                    var material = RightCapMaterial;
                    var texture = material.Res.MainTexture.Res;
                    float width = texture.PixelWidth;
                    float halfHeight = texture.PixelHeight * 0.5f;

                    var vertices = _vertexCache.Next(4);
                    vertices[0].Pos = new Vector3(0, -halfHeight, z + capZOffset);
                    vertices[1].Pos = new Vector3(0, halfHeight, z + capZOffset);
                    vertices[2].Pos = new Vector3(width, halfHeight, z + capZOffset);
                    vertices[3].Pos = new Vector3(width, -halfHeight, z + capZOffset);

                    for (int j = 0; j < vertices.Length; j++)
                    {
                        vertices[j].Pos = Vector3.Transform(vertices[j].Pos,
                            Matrix4.CreateRotationZ(angle) *
                            Matrix4.CreateTranslation(new Vector3(point1.Pos)));
                    }

                    canvas.DrawPolygon(vertices.Select(x => x.Pos.Xy).ToArray(), 0f, 0f, 0f);
                }
            });

            // poly lines
            canvas.State.ColorTint = ColorRgba.Red;
            IterateSegments((p1, p2, i) =>
            {
                canvas.DrawDashLine(p1.Pos.X, p1.Pos.Y, z, p2.Pos.X, p2.Pos.Y, z);
            });

        }

        private IEnumerable<Vector2> SplitSegmentIntoNodes(MeshNode p1, MeshNode p2, int segments)
        {
            for (int i = 0; i < segments; i++)
            {
                yield return Vector2.Lerp(p1.Pos, p2.Pos, (float) i/(float) segments);
            }
            yield return Vector2.Lerp(p1.Pos, p2.Pos, 1f);
        }

        public void Draw(IDrawDevice device)
        {
            _vertexCache.Restart();

            DrawFill(device);

            var path = GameObj.GetComponent<StitchPath>().Path;

            float z = GameObj.Transform.Pos.Z - 1f;

            // Preprocess Coords
            Vector3 actualPosition = GameObj.Transform.Pos;
            float actualScale = 1f;
            device.PreprocessCoords(ref actualPosition, ref actualScale);

            IterateSegments((point1, point2, i) =>
            {
                var angle = point1.Pos.AngleTo(point2.Pos);
                var side = GetSideFromAngle(angle);
                float zOffset = 0f;

                ContentRef<Material> material = null;

                switch (side)
                {
                    case Side.Top:
                        material = TopMaterial;
                        zOffset = -1f;
                        break;
                    case Side.Left:
                    case Side.Right:
                        material = SideMaterial;
                        zOffset = -0.5f;
                        break;
                    case Side.Bottom:
                        material = BottomMaterial;
                        zOffset = -1f;
                        break;
                }

                if (material == null) return;

                bool useMiterLeft = GetSideFromAngle(PreviousNode(point1).Pos.AngleTo(point1.Pos)) == side;
                bool useMiterRight = GetSideFromAngle(point2.Pos.AngleTo(NextNode(point2).Pos)) == side;

                bool useLeftCap = !useMiterRight && (side == Side.Bottom || side == Side.Top);
                bool useRightCap = !useMiterLeft && (side == Side.Bottom || side == Side.Top);

                var texture = material.Res.MainTexture.Res;
                var height = texture.PixelHeight;

                float distance = point1.Pos.DistanceTo(point2.Pos);
                int segments = (int)(distance / SegmentSplitSize) + 1;

                var localNodes = new List<Vector2>();
                localNodes.Add(PreviousNode(point1).Pos);
                localNodes.AddRange(SplitSegmentIntoNodes(point1, point2, segments).ToList());
                localNodes.Add(NextNode(point2).Pos);

                for (int k = 1; k < localNodes.Count - 2; k++)
                {
                    var p0 = localNodes[k - 1];
                    var p1 = localNodes[k];
                    var p2 = localNodes[k + 1];
                    var p3 = localNodes[k + 2];

                    if (k == 1 && !useMiterLeft)
                        p0 = localNodes[k];
                    if (k == localNodes.Count - 3 && !useMiterRight)
                        p3 = localNodes[k + 1];

                    // 1) define the line between the two points
                    var line = (p2 - p1).Normalized;

                    // 2) find the normal vector of this line
                    var normal = new Vector2(-line.Y, line.X).Normalized;

                    // 3) find the tangent vector at both the end points:
                    //		-if there are no segments before or after this one, use the line itself
                    //		-otherwise, add the two normalized lines and average them by normalizing again
                    var tangent1 = (p0 == p1) ? line : ((p1 - p0).Normalized + line).Normalized;
                    var tangent2 = (p2 == p3) ? line : ((p3 - p2).Normalized + line).Normalized;

                    // 4) find the miter line, which is the normal of the tangent
                    var miter1 = new Vector2(-tangent1.Y, tangent1.X);
                    var miter2 = new Vector2(-tangent2.Y, tangent2.X);

                    // find length of miter by projecting the miter onto the normal,
                    // take the length of the projection, invert it and multiply it by the thickness:
                    //		length = thickness * ( 1 / |normal|.|miter| )
                    float length1 = (height/2f)/Vector2.Dot(normal, miter1);
                    float length2 = (height/2f)/Vector2.Dot(normal, miter2);

                    // miter 1
                    var miter1Start = p1 - miter1*length1;
                    var miter1End = p1 + miter1*length1;
                    // miter 2
                    var miter2Start = p2 - miter2*length2;
                    var miter2End = p2 + miter2*length2;

                    var vertices = _vertexCache.Next(4);

                    vertices[0].Pos = new Vector3(miter1Start);
                    vertices[1].Pos = new Vector3(miter1End);
                    vertices[2].Pos = new Vector3(miter2End);
                    vertices[3].Pos = new Vector3(miter2Start);

                    vertices[0].Pos.Z = z + zOffset;
                    vertices[1].Pos.Z = z + zOffset;
                    vertices[2].Pos.Z = z + zOffset;
                    vertices[3].Pos.Z = z + zOffset;

                    vertices[0].Color = point1.Color * material.Res.MainColor;
                    vertices[1].Color = point1.Color * material.Res.MainColor;

                    vertices[2].Color = point2.Color * material.Res.MainColor;
                    vertices[3].Color = point2.Color * material.Res.MainColor;

                    var uvs = new Rect(0f, 0f, 1f, 1f);
                    vertices[0].TexCoord = uvs.BottomRight;
                    vertices[1].TexCoord = uvs.TopRight;
                    vertices[2].TexCoord = uvs.TopLeft;
                    vertices[3].TexCoord = uvs.BottomLeft;

                    for (int j = 0; j < vertices.Length; j++)
                    {
                        vertices[j].Pos = Vector3.Transform(vertices[j].Pos,
                            Matrix4.CreateScale(actualScale)*
                            Matrix4.CreateTranslation(actualPosition));
                    }

                    device.AddVertices(material, VertexMode.Quads, vertices);
                }

                
                float capZOffset = -1.5f;

                if (useLeftCap && LeftCapMaterial.IsAvailable)
                {
                    material = LeftCapMaterial;
                    texture = material.Res.MainTexture.Res;
                    float width = texture.PixelWidth;
                    float halfHeight = texture.PixelHeight * 0.5f;

                    var vertices = _vertexCache.Next(4);
                    vertices[0].Pos = new Vector3(-width, -halfHeight, z + capZOffset);
                    vertices[1].Pos = new Vector3(-width, halfHeight, z + capZOffset);
                    vertices[2].Pos = new Vector3(0, halfHeight, z + capZOffset);
                    vertices[3].Pos = new Vector3(0, -halfHeight, z + capZOffset);

                    vertices[0].Color = ColorRgba.White;
                    vertices[1].Color = ColorRgba.White;
                    vertices[2].Color = ColorRgba.White;
                    vertices[3].Color = ColorRgba.White;

                    var uvs = new Rect(0f, 0f, 1f, 1f);

                    vertices[0].TexCoord = uvs.TopLeft;
                    vertices[1].TexCoord = uvs.BottomLeft;
                    vertices[2].TexCoord = uvs.BottomRight;
                    vertices[3].TexCoord = uvs.TopRight;

                    for (int j = 0; j < vertices.Length; j++)
                    {
                        vertices[j].Pos = Vector3.Transform(vertices[j].Pos,
                            Matrix4.CreateRotationZ(angle) *
                            Matrix4.CreateTranslation(new Vector3(point2.Pos)) *
                            Matrix4.CreateScale(actualScale) *
                            Matrix4.CreateTranslation(actualPosition));
                    }

                    device.AddVertices(material, VertexMode.Quads, vertices);
                }

                if (useRightCap && RightCapMaterial.IsAvailable)
                {
                    material = RightCapMaterial;
                    texture = material.Res.MainTexture.Res;
                    float width = texture.PixelWidth;
                    float halfHeight = texture.PixelHeight * 0.5f;

                    var vertices = _vertexCache.Next(4);
                    vertices[0].Pos = new Vector3(0, -halfHeight, z + capZOffset);
                    vertices[1].Pos = new Vector3(0, halfHeight, z + capZOffset);
                    vertices[2].Pos = new Vector3(width, halfHeight, z + capZOffset);
                    vertices[3].Pos = new Vector3(width, -halfHeight, z + capZOffset);

                    vertices[0].Color = ColorRgba.White;
                    vertices[1].Color = ColorRgba.White;
                    vertices[2].Color = ColorRgba.White;
                    vertices[3].Color = ColorRgba.White;

                    var uvs = new Rect(0f, 0f, 1f, 1f);

                    vertices[0].TexCoord = uvs.TopLeft;
                    vertices[1].TexCoord = uvs.BottomLeft;
                    vertices[2].TexCoord = uvs.BottomRight;
                    vertices[3].TexCoord = uvs.TopRight;

                    for (int j = 0; j < vertices.Length; j++)
                    {
                        vertices[j].Pos = Vector3.Transform(vertices[j].Pos,
                            Matrix4.CreateRotationZ(angle) *
                            Matrix4.CreateTranslation(new Vector3(point1.Pos)) *
                            Matrix4.CreateScale(actualScale) *
                            Matrix4.CreateTranslation(actualPosition));
                    }

                    device.AddVertices(material, VertexMode.Quads, vertices);
                }
            });
        }

        private void DrawFill(IDrawDevice device)
        {
            if (!FillMaterial.IsAvailable)
                return;

            var fillMaterial = FillMaterial;

            var path = GameObj.GetComponent<StitchPath>().Path;

            float z = GameObj.Transform.Pos.Z;

            // Preprocess Coords
            Vector3 actualPosition = GameObj.Transform.Pos;
            float actualScale = 1f;
            device.PreprocessCoords(ref actualPosition, ref actualScale);

            var uvs = UvHelper.CreateFullRectangle(fillMaterial.Res.MainTexture.Res);

            uvs.X = uvs.X / fillMaterial.Res.MainTexture.Res.PixelWidth;
            uvs.Y = uvs.Y / fillMaterial.Res.MainTexture.Res.PixelHeight;
            uvs.W = uvs.W / fillMaterial.Res.MainTexture.Res.PixelWidth;
            uvs.H = uvs.H / fillMaterial.Res.MainTexture.Res.PixelHeight;

            var triangles = Triangulator.Triangulate(path.Select(x => x.Pos));
            foreach (var triangle in triangles)
            {
                var vertices = _vertexCache.Next(3);

                vertices[0].Pos = triangle.Pos1;
                vertices[1].Pos = triangle.Pos2;
                vertices[2].Pos = triangle.Pos3;

                vertices[0].Pos.Z = z;
                vertices[1].Pos.Z = z;
                vertices[2].Pos.Z = z;

                vertices[0].Color = ColorRgba.White;
                vertices[1].Color = ColorRgba.White;
                vertices[2].Color = ColorRgba.White;

                vertices[0].TexCoord = (new Vector2(vertices[0].Pos.X / fillMaterial.Res.MainTexture.Res.PixelWidth, vertices[0].Pos.Y / fillMaterial.Res.MainTexture.Res.PixelHeight) + (FillUvOffset * 0.01f)) * -FillScale;
                vertices[1].TexCoord = (new Vector2(vertices[1].Pos.X / fillMaterial.Res.MainTexture.Res.PixelWidth, vertices[1].Pos.Y / fillMaterial.Res.MainTexture.Res.PixelHeight) + (FillUvOffset * 0.01f)) * -FillScale;
                vertices[2].TexCoord = (new Vector2(vertices[2].Pos.X / fillMaterial.Res.MainTexture.Res.PixelWidth, vertices[2].Pos.Y / fillMaterial.Res.MainTexture.Res.PixelHeight) + (FillUvOffset * 0.01f)) * -FillScale;

                for (int j = 0; j < vertices.Length; j++)
                {
                    vertices[j].Pos = actualPosition +
                                        Vector3.Transform(vertices[j].Pos,
                                            Matrix4.CreateScale(actualScale, actualScale, actualScale) *
                                            Matrix4.CreateRotationZ(GameObj.Transform.Angle));
                }

                device.AddVertices(fillMaterial, VertexMode.Triangles, vertices);
            }
        }
        
    }
}

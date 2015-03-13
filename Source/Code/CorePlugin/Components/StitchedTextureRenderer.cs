using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mime;
using System.Security;
using System.Text;
using Duality;
using Duality.Components.Diagnostics;
using Duality.Components.Physics;
using Duality.Drawing;
using Duality.Editor;
using Duality.Resources;
using OpenTK;
using TextureStitch.Stitch;
using TextureStitch.Utils;

namespace TextureStitch.Components
{
    [Serializable]
    public class StitchedTextureRenderer : Component, ICmpRenderer, ICmpInitializable
    {
        public VisibilityFlag VisibilityGroup { get; set; }

        public ColorRgba ColorTint { get; set; }

        public ContentRef<Material> FillMaterial { get; set; }
        public ContentRef<Material> TopMaterial { get; set; }
        public ContentRef<Material> TopLeftCapMaterial { get; set; }
        public ContentRef<Material> TopRightCapMaterial { get; set; }
        public ContentRef<Material> SideMaterial { get; set; }
        public ContentRef<Material> BottomMaterial { get; set; }

        public List<MeshNode> Points { get; set; }

        [NonSerialized]
        private List<Triangle> _triangles;
            
        [NonSerialized]
        private bool _dirtyVertices = false;

        [EditorHintFlags(MemberFlags.Invisible)]
        public float RuntimeOffset { get; set; }

        public Vector2 FillUvOffset { get; set; }
        public float FillScale { get; set; }

        public float LeftCapPadding { get; set; }
        public float RightCapPadding { get; set; }

        /// <summary>
        /// In degrees
        /// </summary>
        public int TopThresHold { get; set; }

        [NonSerialized]
        private readonly VertexCache<VertexC1P3T2> _vertexCache = new VertexCache<VertexC1P3T2>();

        private bool _createCollider;

        public int Offset { get; set; }

        public bool CreateCollider
        {
            get { return _createCollider; }
            set
            {
                _createCollider = value;
                if (value)
                    RecrateRigidBody();
            }
        }

        public StitchedTextureRenderer()
        {
            FillScale = 1f;
            TopThresHold = 50;
            ColorTint = ColorRgba.White;
            _triangles = null;
        }

        public void FlagAsDirty()
        {
            _dirtyVertices = true;
        }

        /// <summary>
        /// [GET] The internal Z-Offset added to the renderers vertices based on its <see cref="Offset"/> value.
        /// </summary>
        [EditorHintFlags(MemberFlags.Invisible)]
        public float VertexZOffset
        {
            get { return ((Offset) * 0.0001f) + RuntimeOffset * 0.001f; }
        }

        public float BoundRadius
        {
            get
            {
                if (Points == null)
                    return 256f;

                float maxDist = 0f;
                foreach (var point in Points)
                {
                    float dst = point.Pos.DistanceTo(GameObj.Transform.Pos.Xy);
                    if (dst > maxDist)
                        maxDist = dst;
                }
                return maxDist;
            }
        }

        private void RecrateRigidBody()
        {
            if (GameObj.RigidBody == null)
            {
                GameObj.AddComponent(new RigidBody());
            }

            var rigidBody = GameObj.RigidBody;

            rigidBody.ClearShapes();
            rigidBody.AddShape(new LoopShapeInfo(Points.Select(x => x.Pos).ToArray()));
            rigidBody.BodyType = BodyType.Static;

        }

        public void OnInit(InitContext context)
        {
            _triangles = null;
            FlagAsDirty();
        }

        public bool IsVisible(IDrawDevice device)
        {
            if ((device.VisibilityMask & VisibilityFlag.ScreenOverlay) != (VisibilityGroup & VisibilityFlag.ScreenOverlay)) return false;
            if ((VisibilityGroup & device.VisibilityMask & VisibilityFlag.AllGroups) == VisibilityFlag.None) return false;
            return device.IsCoordInView(GameObj.Transform.Pos, BoundRadius);
        }

        public void Draw(IDrawDevice device)
        {
            _vertexCache.Restart();

            if (Points == null || Points.Count < 4) return;

            RenderFill(device);
            RenderSides(device, -0.1f);
            RenderTops(device, -0.2f);
        }

        public void DrawDebugData(Canvas canvas)
        {
            float z = GameObj.Transform.Pos.Z - 1f;

            // Preprocess Coords
            Vector3 actualPosition = GameObj.Transform.Pos;
            float actualScale = 1f;
            canvas.DrawDevice.PreprocessCoords(ref actualPosition, ref actualScale);

            ColorRgba nodeColor = ColorRgba.White;
            ColorRgba lineColor = ColorRgba.White;
            var meshOutlineColor = new ColorRgba(0f, 1f, 1f);

            // all points
            foreach (var point in Points)
            {
                canvas.State.ColorTint = nodeColor;
                canvas.FillCircle(point.Pos.X, point.Pos.Y, z, 8f);
            }

            canvas.State.ColorTint = lineColor;
            // poly lines
            for (int i = 0; i < Points.Count; i++)
            {
                var p1 = Points[i];
                var p2 = i == Points.Count - 1 ? Points[0] : Points[i + 1];
                canvas.DrawDashLine(p1.Pos.X, p1.Pos.Y, z, p2.Pos.X, p2.Pos.Y, z);
            }

            Func<int, Tuple<Vector2, Vector2>> GetLine =
                i =>
                    new Tuple<Vector2, Vector2>(Points[i].Pos, i == Points.Count - 1 ? Points[0].Pos : Points[i + 1].Pos);

            canvas.State.ColorTint = meshOutlineColor;
            // meshes
            for (int i = 0; i < Points.Count; i++)
            {
                var p1 = Points[i];
                var p2 = i == Points.Count - 1 ? Points[0] : Points[i + 1];

                var length = p1.Pos.DistanceTo(p2.Pos);
                var angle = p1.Pos.AngleTo(p2.Pos);
                var sideType = GetSideFromAngle(angle);
                //float theta = GetLine(i -)// we neewd to theta for each side of the rect, different tangents.

                var height = 0f;

                switch (sideType)
                {
                    case Side.Left:
                    case Side.Right:
                        height = SideMaterial.Res.MainTexture.Res.PixelHeight;
                        break;
                    case Side.Top:
                        height = TopMaterial.Res.MainTexture.Res.PixelHeight;
                        break;
                }

                height = 256f; // hard set for now until calcs are ok.


                var vertices = new Vector3[4];

                vertices[0] = new Vector3(0, -height, z);
                vertices[1] = new Vector3(0, 0, z);
                vertices[2] = new Vector3(length, 0, z);
                vertices[3] = new Vector3(length, -height, z);


                float lineCrossX;
                float lineCrossY;

                float lineCross2X;
                float lineCross2Y;

                {
                    var line1 = GetLine(i);
                    var line2 = GetLine(i == Points.Count - 1 ? 0 : i + 1);

                    var line1Ang = line1.Item1.AngleTo(line1.Item2);
                    var line2Ang = line2.Item1.AngleTo(line2.Item2);

                    Vector2 lineOffset =
                        new Vector2((float) Math.Cos(line1Ang + MathF.DegToRad(90f)),
                            (float) Math.Sin(line1Ang + MathF.DegToRad(90f)))*-height;
                    Vector2 line2Offset =
                        new Vector2((float) Math.Cos(line2Ang + MathF.DegToRad(90f)),
                            (float) Math.Sin(line2Ang + MathF.DegToRad(90f)))*-height;

                    MathF.LinesCross(
                        line1.Item1.X + lineOffset.X, line1.Item1.Y + lineOffset.Y, line1.Item2.X + lineOffset.X,
                        line1.Item2.Y + lineOffset.Y,
                        line2.Item1.X + line2Offset.X, line2.Item1.Y + line2Offset.Y, line2.Item2.X + line2Offset.X,
                        line2.Item2.Y + line2Offset.Y,
                        out lineCrossX, out lineCrossY, true);

                    canvas.State.ColorTint = ColorRgba.Red;
                    canvas.FillCircle(lineCrossX, lineCrossY, z, 16f);
                }

                {
                    var line1 = GetLine(i == 0 ? Points.Count - 1 : i - 1);
                    var line2 = GetLine(i);

                    var line1Ang = line1.Item1.AngleTo(line1.Item2);
                    var line2Ang = line2.Item1.AngleTo(line2.Item2);

                    Vector2 lineOffset =
                        new Vector2((float)Math.Cos(line1Ang + MathF.DegToRad(90f)),
                            (float)Math.Sin(line1Ang + MathF.DegToRad(90f))) * -height;
                    Vector2 line2Offset =
                        new Vector2((float)Math.Cos(line2Ang + MathF.DegToRad(90f)),
                            (float)Math.Sin(line2Ang + MathF.DegToRad(90f))) * -height;

                    MathF.LinesCross(
                        line1.Item1.X + lineOffset.X, line1.Item1.Y + lineOffset.Y, line1.Item2.X + lineOffset.X,
                        line1.Item2.Y + lineOffset.Y,
                        line2.Item1.X + line2Offset.X, line2.Item1.Y + line2Offset.Y, line2.Item2.X + line2Offset.X,
                        line2.Item2.Y + line2Offset.Y,
                        out lineCross2X, out lineCross2Y, true);

                    canvas.State.ColorTint = ColorRgba.Blue;
                    canvas.FillCircle(lineCross2X, lineCross2Y, z, 16f);
                }
                //// I think this is correct but the wrong angle, use the theta between the lines instead.
                //float tangent = MathF.Cos(angle);// MathF.Cos(angle);

                //float offsetX = tangent * height / 2f;

                //vertices[0] = Vector3.Transform(vertices[0], Matrix4.CreateTranslation(-offsetX, 0f, 0f));
                //vertices[1] = Vector3.Transform(vertices[1], Matrix4.CreateTranslation(0, 0f, 0f));
                //vertices[2] = Vector3.Transform(vertices[2], Matrix4.CreateTranslation(0, 0f, 0f));
                //vertices[3] = Vector3.Transform(vertices[3], Matrix4.CreateTranslation(offsetX, 0f, 0f));

                for (int j = 0; j < vertices.Length; j++)
                {
                    // rotate and transform to world pos
                    vertices[j] = Vector3.Transform(vertices[j], 
                        Matrix4.CreateRotationZ(angle) *
                        Matrix4.CreateTranslation(p2.Pos.X, p2.Pos.Y, 0f));


                    
                    // transform to local position
                    //vertices[j] = Vector3.Transform(vertices[j], 
                    //    Matrix4.CreateTranslation(p2.Pos.X, p2.Pos.Y, 0f) * 
                    //    Matrix4.CreateScale(actualScale, actualScale, actualScale)/* *
                    //    Matrix4.CreateTranslation(actualPosition.X, actualPosition.Y, actualPosition.Z)*/);
                }

                vertices[0].X = lineCrossX;
                vertices[0].Y = lineCrossY;
                vertices[3].X = lineCross2X;
                vertices[3].Y = lineCross2Y;

                canvas.State.ColorTint = meshOutlineColor; 
                canvas.DrawPolygon(vertices.Select(x => x.Xy).ToArray(), 0, 0, 0);
            }
        }

        private Side GetSideFromAngle(float angle)
        {
            if(!MathHelper.AngleInRange(angle, -TopThresHold, TopThresHold))
                return Side.Left;
            if (MathHelper.AngleInRange(angle, -TopThresHold, TopThresHold))
                return Side.Top;

            // TODO: bottom

            return Side.Top;
        }

        private bool HasTopSideNeighborRight(int i)
        {
            var leftIndex = i == Points.Count - 1 ? 0 : i + 1;
            var leftNode = Points[leftIndex];
            var rightNode = leftIndex + 1 > Points.Count - 1 ? Points[0] : Points[leftIndex + 1];

            float angle = leftNode.Pos.AngleTo(rightNode.Pos);

            return MathHelper.AngleInRange(angle, -TopThresHold, TopThresHold);
        }

        private bool HasTopSideNeighborLeft(int i)
        {
            var leftNode = i == 0 ? Points[Points.Count - 1] : Points[i - 1];
            var rightNode = Points[i];

            float angle = leftNode.Pos.AngleTo(rightNode.Pos);

            return MathHelper.AngleInRange(angle, -TopThresHold, TopThresHold);
        }

        private bool HasSideSideNeighborLeft(int i)
        {
            var leftNode = i == 0 ? Points[Points.Count - 1] : Points[i - 1];
            var rightNode = Points[i];

            float angle = leftNode.Pos.AngleTo(rightNode.Pos);

            return MathHelper.AngleInRange(angle, -TopThresHold, TopThresHold);
        }

        private bool HasSideSideNeighborRight(int i)
        {
            var leftIndex = i == Points.Count - 1 ? 0 : i + 1;
            var leftNode = Points[leftIndex];
            var rightNode = leftIndex + 1 > Points.Count - 1 ? Points[0] : Points[leftIndex + 1];

            float angle = leftNode.Pos.AngleTo(rightNode.Pos);

            return MathHelper.AngleInRange(angle, -TopThresHold, TopThresHold);
        }

        private void RenderSides(IDrawDevice device, float offset)
        {
            // Preprocess Coords
            Vector3 actualPosition = GameObj.Transform.Pos;
            float actualScale = 1f;
            device.PreprocessCoords(ref actualPosition, ref actualScale);

            for (int i = 0; i < Points.Count; i++)
            {
                var p1 = Points[i];
                var p2 = (i == Points.Count - 1) ? Points[0] : Points[i + 1];

                float angle = p1.Pos.AngleTo(p2.Pos);
                if (MathHelper.AngleInRange(angle, -TopThresHold, TopThresHold)) continue;

                var texture = SideMaterial.Res.MainTexture.Res;
                var vertices = _vertexCache.Next(4);

                float width = p1.Pos.DistanceTo(p2.Pos);
                float height = texture.PixelHeight;

                int repeatCount = (int)(width / (texture.PixelWidth * 0.8f)) + 1;

                vertices[0].Pos = new Vector3(-width, -height / 2f, offset);
                vertices[1].Pos = new Vector3(-width, height / 2f, offset);
                vertices[2].Pos = new Vector3(0, height / 2f, offset);
                vertices[3].Pos = new Vector3(0, -height / 2f, offset);

                vertices[0].Color = SideMaterial.Res.MainColor * p2.Color * ColorTint;
                vertices[1].Color = SideMaterial.Res.MainColor * p2.Color * ColorTint;
                vertices[2].Color = SideMaterial.Res.MainColor * p1.Color * ColorTint;
                vertices[3].Color = SideMaterial.Res.MainColor * p1.Color * ColorTint;

                var uvs = UvHelper.CreateRepeatedHorizontallyRect(texture, repeatCount);

                uvs.X /= texture.PixelWidth;
                uvs.W /= texture.PixelWidth;

                uvs.Y /= texture.PixelHeight;
                uvs.H /= texture.PixelHeight;

                vertices[0].TexCoord = uvs.TopLeft;
                vertices[1].TexCoord = uvs.BottomLeft;
                vertices[2].TexCoord = uvs.BottomRight;
                vertices[3].TexCoord = uvs.TopRight;

                //for (int j = 0; j < vertices.Length; j++)
                //{
                //    // rotate and transform to world pos
                //    vertices[j].Pos =Vector3.Transform(vertices[j].Pos,
                //        Matrix4.CreateRotationZ(angle));

                //    // transform to local position
                //    vertices[j].Pos = actualPosition + Vector3.Transform(vertices[j].Pos, Matrix4.CreateTranslation(p1.Pos.X, p1.Pos.Y, 0f) *
                //        Matrix4.CreateScale(actualScale, actualScale, actualScale));
                //}
                for (int j = 0; j < vertices.Length; j++)
                {
                    // rotate and transform to world pos
                    vertices[j].Pos = Vector3.Transform(vertices[j].Pos,
                        Matrix4.CreateRotationZ(angle));

                    // transform to local position
                    vertices[j].Pos = actualPosition + Vector3.Transform(vertices[j].Pos, Matrix4.CreateTranslation(p1.Pos.X, p1.Pos.Y, 0f) *
                        Matrix4.CreateScale(actualScale, actualScale, actualScale));
                }

                device.AddVertices(SideMaterial, VertexMode.Quads, vertices);
            }
        }

        private void RenderTops(IDrawDevice device, float offset)
        {
            // Preprocess Coords
            Vector3 actualPosition = GameObj.Transform.Pos;
            float actualScale = 1f;
            device.PreprocessCoords(ref actualPosition, ref actualScale);

            for (int i = 0; i < Points.Count; i++)
            {
                var p1 = Points[i];
                var p2 = (i == Points.Count - 1) ? Points[0] : Points[i + 1];

                float angle = p1.Pos.AngleTo(p2.Pos);
                if (!MathHelper.AngleInRange(angle, -TopThresHold, TopThresHold)) continue;

                var texture = TopMaterial.Res.MainTexture.Res;

                var vertices = _vertexCache.Next(4);

                float width = p1.Pos.DistanceTo(p2.Pos);
                float height = texture.PixelHeight;

                int repeatCount = (int)(width / (texture.PixelWidth)) + 1;

                // TODO: connect vertices to next or/and previous mesh
                float horizontalOffsetRight = 0f;
                float horizontalOffsetRight2 = 0f;
                float horizontalOffsetLeft = 0f;
                float horizontalOffsetLeft2 = 0f;

                float tangent = (float) Math.Sin(angle)/(float) Math.Cos(angle);

                if (HasTopSideNeighborRight(i))
                {
                    horizontalOffsetLeft = tangent * height / 2f;
                    horizontalOffsetLeft2 = -tangent * height / 2f;
                }

                if (HasTopSideNeighborLeft(i))
                {
                    horizontalOffsetRight = -tangent * height / 2f;
                    horizontalOffsetRight2 = tangent * height / 2f;
                }

                vertices[0].Pos = new Vector3(horizontalOffsetLeft2, -height / 2f, offset);
                vertices[1].Pos = new Vector3(horizontalOffsetLeft, height / 2f, offset);
                vertices[2].Pos = new Vector3(width + horizontalOffsetRight2, height / 2f, offset);
                vertices[3].Pos = new Vector3(width + horizontalOffsetRight, -height / 2f, offset);

                vertices[0].Color = SideMaterial.Res.MainColor * p2.Color * ColorTint;
                vertices[1].Color = SideMaterial.Res.MainColor * p2.Color * ColorTint;
                vertices[2].Color = SideMaterial.Res.MainColor * p1.Color * ColorTint;
                vertices[3].Color = SideMaterial.Res.MainColor * p1.Color * ColorTint;

                var uvs = UvHelper.CreateRepeatedHorizontallyRect(texture, repeatCount);

                uvs.X /= texture.PixelWidth;
                uvs.W /= texture.PixelWidth;

                uvs.Y /= texture.PixelHeight;
                uvs.H /= texture.PixelHeight;

                vertices[0].TexCoord = uvs.TopLeft;
                vertices[1].TexCoord = uvs.BottomLeft;
                vertices[2].TexCoord = uvs.BottomRight;
                vertices[3].TexCoord = uvs.TopRight;

                for (int j = 0; j < vertices.Length; j++)
                {
                    // rotate and transform to world pos
                    vertices[j].Pos = Vector3.Transform(vertices[j].Pos,
                        Matrix4.CreateRotationZ(angle));

                    // transform to local position
                    vertices[j].Pos = actualPosition + Vector3.Transform(vertices[j].Pos, Matrix4.CreateTranslation(p2.Pos.X, p2.Pos.Y, 0f) *
                        Matrix4.CreateScale(actualScale, actualScale, actualScale));
                }

                //VisualLog.Default.DrawPolygon(0f, 0f, 0f, vertices.Select(x => x.Pos.Xy).ToArray());

                device.AddVertices(TopMaterial, VertexMode.Quads, vertices);

                if (!HasTopSideNeighborLeft(i))
                    RenderTopCap(device, p1, p2, false, offset - 0.1f);
                if (!HasTopSideNeighborRight(i))
                    RenderTopCap(device, p1, p2, true, offset - 0.1f);
            }
        }

        private void RenderTopCap(IDrawDevice device, MeshNode p1, MeshNode p2, bool left, float offset)
        { 
            // Preprocess Coords
            Vector3 actualPosition = GameObj.Transform.Pos;
            float actualScale = 1f;
            device.PreprocessCoords(ref actualPosition, ref actualScale);

            float angle = p1.Pos.AngleTo(p2.Pos);

            var material = left ? TopLeftCapMaterial.Res : TopRightCapMaterial.Res;
            var texture = material.MainTexture.Res;
            var color = material.MainColor;

            var vertices = _vertexCache.Next(4);
            var point = left ? p2 : p1;

            float width = texture.PixelWidth;
            float height = texture.PixelHeight;

            if (left)
            {
                vertices[0].Pos = new Vector3(-width, -height / 2f, offset);
                vertices[1].Pos = new Vector3(-width, height / 2f, offset);
                vertices[2].Pos = new Vector3(0, height / 2f, offset);
                vertices[3].Pos = new Vector3(0, -height / 2f, offset);
            }
            else
            {
                vertices[0].Pos = new Vector3(0f, -height/2f, offset);
                vertices[1].Pos = new Vector3(0f, height/2f, offset);
                vertices[2].Pos = new Vector3(width, height/2f, offset);
                vertices[3].Pos = new Vector3(width, -height/2f, offset);
            }

            if (left)
            {
                for (int i = 0; i < vertices.Length; i++)
                {
                    vertices[i].Pos.X += LeftCapPadding;
                }
            }
            else
            {
                for (int i = 0; i < vertices.Length; i++)
                {
                    vertices[i].Pos.X -= RightCapPadding;
                }
            }


            vertices[0].Color = color * point.Color * ColorTint;
            vertices[1].Color = color * point.Color * ColorTint;
            vertices[2].Color = color * point.Color * ColorTint;
            vertices[3].Color = color * point.Color * ColorTint;

            var uvs = UvHelper.CreateFullRectangle(texture);

            uvs.X /= texture.PixelWidth;
            uvs.W /= texture.PixelWidth;

            uvs.Y /= texture.PixelHeight;
            uvs.H /= texture.PixelHeight;

            vertices[0].TexCoord = uvs.TopLeft;
            vertices[1].TexCoord = uvs.BottomLeft;
            vertices[2].TexCoord = uvs.BottomRight;
            vertices[3].TexCoord = uvs.TopRight;

            for (int j = 0; j < vertices.Length; j++)
            {
                // rotate and transform to world pos
                vertices[j].Pos = Vector3.Transform(vertices[j].Pos,
                    Matrix4.CreateRotationZ(angle));

                // transform to local position
                vertices[j].Pos = actualPosition + Vector3.Transform(vertices[j].Pos, Matrix4.CreateTranslation(point.Pos.X, point.Pos.Y, 0f) *
                    Matrix4.CreateScale(actualScale, actualScale, actualScale));
            }

            device.AddVertices(material, VertexMode.Quads, vertices);
        }

        private void RenderFill(IDrawDevice device)
        {
            if (_dirtyVertices || _triangles == null)
                CleanVertices();

            foreach (var triangle in _triangles)
            {
                var vertices = _vertexCache.Next(3);

                var uvs = UvHelper.CreateFullRectangle(FillMaterial.Res.MainTexture.Res);

                uvs.X = uvs.X / FillMaterial.Res.MainTexture.Res.PixelWidth;
                uvs.Y = uvs.Y / FillMaterial.Res.MainTexture.Res.PixelHeight;
                uvs.W = uvs.W / FillMaterial.Res.MainTexture.Res.PixelWidth;
                uvs.H = uvs.H / FillMaterial.Res.MainTexture.Res.PixelHeight;

                // Preprocess Coords
                Vector3 actualPosition = GameObj.Transform.Pos;
                float actualScale = 1f;
                device.PreprocessCoords(ref actualPosition, ref actualScale);

                vertices[0].Pos = triangle.Pos1;
                vertices[1].Pos = triangle.Pos2;
                vertices[2].Pos = triangle.Pos3;

                for (int i = 0; i < vertices.Length; i++)
                {
                    var point = vertices[i];
                    vertices[i].TexCoord = (new Vector2(point.Pos.X / FillMaterial.Res.MainTexture.Res.PixelWidth, point.Pos.Y / FillMaterial.Res.MainTexture.Res.PixelHeight) + (FillUvOffset * 0.01f)) * -FillScale;
                }

                vertices[0].Color = FillMaterial.Res.MainColor * triangle.Col1 * ColorTint;
                vertices[1].Color = FillMaterial.Res.MainColor * triangle.Col2 * ColorTint;
                vertices[2].Color = FillMaterial.Res.MainColor * triangle.Col3 * ColorTint;

                for (int j = 0; j < vertices.Length; j++)
                {
                    vertices[j].Pos = actualPosition +
                                        Vector3.Transform(vertices[j].Pos,
                                            Matrix4.CreateScale(actualScale, actualScale, actualScale) *
                                            Matrix4.CreateRotationZ(GameObj.Transform.Angle));
                }

                device.AddVertices(FillMaterial, VertexMode.Triangles, vertices);
            }
        }

        private void CleanVertices()
        {
            _triangles = Triangulator.Triangulate(Points.Select(x => x.Pos)).ToList();
            CalculateColorsForTriangles();
            _dirtyVertices = false;
        }

        private void CalculateColorsForTriangles()
        {
            float nearThreshold = 10f;
            for (int i = 0; i < _triangles.Count; i++)
            {
                var triangle = _triangles[i];
                foreach (var meshNode in Points)
                {
                    if (meshNode.Pos.Near(triangle.Pos1.Xy, nearThreshold))
                    {
                        triangle.Col1 = meshNode.Color;
                    }
                    if (meshNode.Pos.Near(triangle.Pos2.Xy, nearThreshold))
                    {
                        triangle.Col2 = meshNode.Color;
                    }
                    if (meshNode.Pos.Near(triangle.Pos3.Xy, nearThreshold))
                    {
                        triangle.Col3 = meshNode.Color;
                    }
                }
            }
        }

        public void OnShutdown(ShutdownContext context)
        {
        }
    }
}

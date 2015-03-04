using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Duality;
using Duality.Drawing;
using Duality.Resources;
using OpenTK;

namespace TextureStitch.Utils
{
    public static class RenderHelper
    {
        public static void RenderQuad(this IDrawDevice device, GameObject self, VertexC1P3T2[] vertices,
            ContentRef<Material> material, Vector2 position, Rect source, float rotation, Vector2 scale, ColorRgba color,
            bool flipHorizontal, bool flipVertical, float depthOffset = 0f)
        {
            RenderQuad(device, self, vertices, material, position, Vector2.One * 0.5f, source, rotation, scale, color, flipHorizontal, flipVertical, depthOffset);
        }

        public static void RenderQuad(this IDrawDevice device, GameObject self, VertexC1P3T2[] vertices,
            BatchInfo material, Vector2 position, Rect source, float rotation, Vector2 scale, ColorRgba color,
            bool flipHorizontal, bool flipVertical, float depthOffset = 0f)
        {
            RenderQuad(device, self, vertices, material, position, Vector2.One * 0.5f, source, rotation, scale, color, flipHorizontal, flipVertical, depthOffset);
        }

        public static void RenderQuad(this IDrawDevice device, GameObject self, VertexC1P3T2[] vertices,
            BatchInfo material, Vector2 position, Vector2 origin, Rect source, float rotation, Vector2 scale,
            ColorRgba color, bool flipHorizontal, bool flipVertical, float depthOffset = 0f)
        {
            if (vertices.Length != 4)
                throw new ArgumentException("Must be exactly 4 vertices");

            color *= material.MainColor;

            var mainTex = material.MainTexture.Res;

            // Quad
            var quad = new Rect(source.W, source.H);
            quad.X -= quad.W * origin.X;
            quad.Y -= quad.H * origin.Y;

            // Localize source from pixel to unit texture space
            source.X = source.X / mainTex.PixelWidth;
            source.Y = source.Y / mainTex.PixelHeight;
            source.W = source.W / mainTex.PixelWidth;
            source.H = source.H / mainTex.PixelHeight;

            // Preprocess Coords
            Vector3 actualPosition = self.Transform.Pos;
            actualPosition += new Vector3(position.X, position.Y, 0f);
            float actualScale = 1f;
            device.PreprocessCoords(ref actualPosition, ref actualScale);

            // Rotate
            Vector2 xRotation, yRotation;
            MathF.GetTransformDotVec(self.Transform.Angle + rotation, actualScale, out xRotation, out yRotation);

            // Quad
            Rect expandedQuad = quad.Transform(self.Transform.Scale * scale.X, self.Transform.Scale * scale.Y);

            Vector2 topLeft = expandedQuad.TopLeft;
            Vector2 bottomLeft = expandedQuad.BottomLeft;
            Vector2 bottomRight = expandedQuad.BottomRight;
            Vector2 topRight = expandedQuad.TopRight;

            if (flipHorizontal || flipVertical)
            {
                Vector2 xFlipDot, yFlipDot;
                MathF.GetTransformDotVec(0f, new Vector2((flipHorizontal ? -1f : 1f), (flipVertical ? -1f : 1f)), out xFlipDot, out yFlipDot);

                MathF.TransformDotVec(ref topLeft, ref xFlipDot, ref yFlipDot);
                MathF.TransformDotVec(ref bottomLeft, ref xFlipDot, ref yFlipDot);
                MathF.TransformDotVec(ref bottomRight, ref xFlipDot, ref yFlipDot);
                MathF.TransformDotVec(ref topRight, ref xFlipDot, ref yFlipDot);
            }

            MathF.TransformDotVec(ref topLeft, ref xRotation, ref yRotation);
            MathF.TransformDotVec(ref bottomLeft, ref xRotation, ref yRotation);
            MathF.TransformDotVec(ref bottomRight, ref xRotation, ref yRotation);
            MathF.TransformDotVec(ref topRight, ref xRotation, ref yRotation);

            vertices[0].Pos.X = actualPosition.X + topLeft.X;
            vertices[0].Pos.Y = actualPosition.Y + topLeft.Y;
            vertices[0].Pos.Z = actualPosition.Z + depthOffset;
            vertices[0].TexCoord.X = source.X;
            vertices[0].TexCoord.Y = source.Y;
            vertices[0].Color = color;

            vertices[1].Pos.X = actualPosition.X + bottomLeft.X;
            vertices[1].Pos.Y = actualPosition.Y + bottomLeft.Y;
            vertices[1].Pos.Z = actualPosition.Z + depthOffset;
            vertices[1].TexCoord.X = source.X;
            vertices[1].TexCoord.Y = source.MaximumY;
            vertices[1].Color = color;

            vertices[2].Pos.X = actualPosition.X + bottomRight.X;
            vertices[2].Pos.Y = actualPosition.Y + bottomRight.Y;
            vertices[2].Pos.Z = actualPosition.Z + depthOffset;
            vertices[2].TexCoord.X = source.MaximumX;
            vertices[2].TexCoord.Y = source.MaximumY;
            vertices[2].Color = color;

            vertices[3].Pos.X = actualPosition.X + topRight.X;
            vertices[3].Pos.Y = actualPosition.Y + topRight.Y;
            vertices[3].Pos.Z = actualPosition.Z + depthOffset;
            vertices[3].TexCoord.X = source.MaximumX;
            vertices[3].TexCoord.Y = source.Y;
            vertices[3].Color = color;

            device.AddVertices(material, VertexMode.Quads, vertices);
        }

        public static void RenderQuad(this IDrawDevice device, GameObject self, VertexC1P3T2[] vertices, ContentRef<Material> material, Vector2 position, Vector2 origin, Rect source,  float rotation, Vector2 scale, ColorRgba color, bool flipHorizontal, bool flipVertical, float depthOffset = 0f)
        {
            if(vertices.Length != 4)
                throw new ArgumentException("Must be exactly 4 vertices");

            color *= material.Res.MainColor;

            var mainTex = material.Res.MainTexture.Res;

            // Quad
            var quad = new Rect(source.W, source.H);
            quad.X -= quad.W * origin.X;
            quad.Y -= quad.H * origin.Y;

            // Localize source from pixel to unit texture space
            source.X = source.X / mainTex.PixelWidth;
            source.Y = source.Y / mainTex.PixelHeight;
            source.W = source.W / mainTex.PixelWidth;
            source.H = source.H / mainTex.PixelHeight;

            // Preprocess Coords
            Vector3 actualPosition = self.Transform.Pos;
            actualPosition += new Vector3(position.X, position.Y, 0f);
            float actualScale = 1f;
            device.PreprocessCoords(ref actualPosition, ref actualScale);

            // Rotate
            Vector2 xRotation, yRotation;
            MathF.GetTransformDotVec(self.Transform.Angle + rotation, actualScale, out xRotation, out yRotation);
            
            // Quad
            Rect expandedQuad = quad.Transform(self.Transform.Scale*scale.X, self.Transform.Scale*scale.Y);

            Vector2 topLeft = expandedQuad.TopLeft;
            Vector2 bottomLeft = expandedQuad.BottomLeft;
            Vector2 bottomRight = expandedQuad.BottomRight;
            Vector2 topRight = expandedQuad.TopRight;

            if (flipHorizontal || flipVertical)
            {
                Vector2 xFlipDot, yFlipDot;
                MathF.GetTransformDotVec(0f, new Vector2((flipHorizontal ? -1f : 1f), (flipVertical ? -1f : 1f)), out xFlipDot, out yFlipDot);

                MathF.TransformDotVec(ref topLeft, ref xFlipDot, ref yFlipDot);
                MathF.TransformDotVec(ref bottomLeft, ref xFlipDot, ref yFlipDot);
                MathF.TransformDotVec(ref bottomRight, ref xFlipDot, ref yFlipDot);
                MathF.TransformDotVec(ref topRight, ref xFlipDot, ref yFlipDot);
            }

            MathF.TransformDotVec(ref topLeft, ref xRotation, ref yRotation);
            MathF.TransformDotVec(ref bottomLeft, ref xRotation, ref yRotation);
            MathF.TransformDotVec(ref bottomRight, ref xRotation, ref yRotation);
            MathF.TransformDotVec(ref topRight, ref xRotation, ref yRotation);

            vertices[0].Pos.X = actualPosition.X + topLeft.X;
            vertices[0].Pos.Y = actualPosition.Y + topLeft.Y;
            vertices[0].Pos.Z = actualPosition.Z + depthOffset;
            vertices[0].TexCoord.X = source.X;
            vertices[0].TexCoord.Y = source.Y;
            vertices[0].Color = color;

            vertices[1].Pos.X = actualPosition.X + bottomLeft.X;
            vertices[1].Pos.Y = actualPosition.Y + bottomLeft.Y;
            vertices[1].Pos.Z = actualPosition.Z + depthOffset;
            vertices[1].TexCoord.X = source.X;
            vertices[1].TexCoord.Y = source.MaximumY;
            vertices[1].Color = color;

            vertices[2].Pos.X = actualPosition.X + bottomRight.X;
            vertices[2].Pos.Y = actualPosition.Y + bottomRight.Y;
            vertices[2].Pos.Z = actualPosition.Z + depthOffset;
            vertices[2].TexCoord.X = source.MaximumX;
            vertices[2].TexCoord.Y = source.MaximumY;
            vertices[2].Color = color;

            vertices[3].Pos.X = actualPosition.X + topRight.X;
            vertices[3].Pos.Y = actualPosition.Y + topRight.Y;
            vertices[3].Pos.Z = actualPosition.Z + depthOffset;
            vertices[3].TexCoord.X = source.MaximumX;
            vertices[3].TexCoord.Y = source.Y;
            vertices[3].Color = color;

            device.AddVertices(material, VertexMode.Quads, vertices);
        }

        public static void RenderVerts(this IDrawDevice device, GameObject self, VertexC1P3T2[] vertices, ContentRef<Material> material, float depthOffset = 0f)
        {
            if (vertices.Length != 4)
                throw new ArgumentException("Must be exactly 4 vertices");

            // Preprocess Coords
            Vector3 actualPosition = self.Transform.Pos;
            float actualScale = 1f;
            device.PreprocessCoords(ref actualPosition, ref actualScale);

            // Rotate
            Vector2 xRotation, yRotation;
            MathF.GetTransformDotVec(self.Transform.Angle, actualScale, out xRotation, out yRotation);

            // Quad

            device.AddVertices(material, VertexMode.QuadStrip, vertices);
        }
    }
}

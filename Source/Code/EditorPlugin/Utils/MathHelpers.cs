using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OpenTK;

namespace TextureStitch.Editor.Utils
{
    public class MathHelpers
    {
        public static bool PointInPoly(Vector2[] vertices, Vector2 p)
        {
            var isInside = false;
            var minX = vertices[0].X;
            var maxX = vertices[0].X;
            var minY = vertices[0].Y;
            var maxY = vertices[0].Y;
            
            for (var n = 1; n < vertices.Length; n++)
            {
                var q = vertices[n];
                minX = Math.Min(q.X, minX);
                maxX = Math.Max(q.X, maxX);
                minY = Math.Min(q.Y, minY);
                maxY = Math.Max(q.Y, maxY);
            }

            if (p.X < minX || p.X > maxX || p.Y < minY || p.Y > maxY)
            {
                return false;
            }

            var i = 0;
            var j = vertices.Length - 1;
            for (; i < vertices.Length; j = i++)
            {
                if ((vertices[i].Y > p.Y) != (vertices[j].Y > p.Y) &&
                        p.X < (vertices[j].X - vertices[i].X) * (p.Y - vertices[i].Y) / (vertices[j].Y - vertices[i].Y) + vertices[i].X)
                {
                    isInside = !isInside;
                }
            }

            return isInside;
        }
    }
}

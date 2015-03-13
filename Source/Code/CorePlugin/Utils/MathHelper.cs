using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Duality;
using OpenTK;

namespace TextureStitch.Utils
{
    public  class MathHelper
    {
        public static Vector2 CatmullRom(Vector2 value1, Vector2 value2,
           Vector2 value3, Vector2 value4, float t)
        {
            // Tangents for value2 and value3
            Vector2 tan1 = (value3 - value1) / 2.0f;
            Vector2 tan2 = (value4 - value2) / 2.0f;

            // Powers of t
            float t2 = t * t;
            float t3 = t2 * t;

            float f1 = 2 * t3 - 3 * t2 + 1;
            float f2 = -2 * t3 + 3 * t2;
            float f3 = t3 - 2 * t2 + t;
            float f4 = t3 - t2;

            Vector2 point = value2 * f1 + tan1 * f3;
            point += value3 * f2 + tan2 * f4;

            return point;
        }

        public static bool AngleInRange(float angle, float rangeStart, float rangeEnd)
        {
            float b = MathF.RadToDeg(angle);
            float angle1 = rangeStart;
            float angle2 = rangeEnd;

            return b > rangeStart && b < rangeEnd;
        }

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

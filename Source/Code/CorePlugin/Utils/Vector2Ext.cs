using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OpenTK;

namespace TextureStitch.Utils
{
    public static class Vector2Ext
    {
        public static float DistanceTo(this Vector2 instance, Vector2 other)
        {
            return Vector2.Distance(ref instance, ref other);
        }

        public static float AngleTo(this Vector2 instance, Vector2 other)
        {
            return (float)Math.Atan2(instance.Y - other.Y, instance.X - other.X);
        }

        public static bool Near(this Vector2 instance, Vector2 other, float maxDistance)
        {
            return instance.DistanceTo(other) <= maxDistance;
        }
    }
}

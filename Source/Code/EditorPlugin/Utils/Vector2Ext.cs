using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OpenTK;

namespace TextureStitch.Editor.Utils
{
    public static class Vector2Ext
    {
        public static float DistanceTo(this Vector2 instance, Vector2 other)
        {
            return Vector2.Distance(ref instance, ref other);
        }
    }
}

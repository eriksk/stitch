using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Duality;
using Duality.Resources;

namespace TextureStitch.Utils
{
    public class UvHelper
    {
        public static Rect CreateFullRectangle(Texture texture)
        {
            return new Rect(0, 0, texture.PixelWidth, texture.PixelHeight);
        }

        public static Rect CreateRectangle(float width, float height)
        {
            return new Rect(0, 0, width, height);
        }

        public static Rect CreateRepeatedHorizontallyRect(Texture texture, int repeatCount)
        {
            var rect = CreateFullRectangle(texture);

            if (repeatCount == 0)
                repeatCount = 1;

            rect.W *= (float)repeatCount;
            return rect;
        }
    }
}

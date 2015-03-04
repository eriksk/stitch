using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TextureStitch.Stitch
{
    [Serializable]
    public class Caps
    {
        public Cap Left { get; set; }
        public Cap Right { get; set; }

        public Caps()
        {
            Left = new Cap();
            Right = new Cap();
        }
    }
}

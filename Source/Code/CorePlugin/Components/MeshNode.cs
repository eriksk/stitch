using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Duality.Drawing;
using Duality.Editor;
using OpenTK;

namespace TextureStitch.Components
{
    [Serializable]
    public class MeshNode
    {
        public Vector2 Pos;
        public ColorRgba Color;

        public MeshNode()
        {
            Color = ColorRgba.White;
        }
    }
}

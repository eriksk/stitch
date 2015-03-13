using System;
using System.Collections.Generic;
using Duality;
using OpenTK;

namespace TextureStitch.Components
{
    [Serializable]
    public class StitchPath : Component
    {
        private List<MeshNode> _path;

        public List<MeshNode> Path
        {
            get { return _path; }
            set { _path = value; }
        }
    }
}
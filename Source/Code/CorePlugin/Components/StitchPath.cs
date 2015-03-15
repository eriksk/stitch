using System;
using System.Collections.Generic;
using System.Linq;
using Duality;
using Duality.Components.Physics;
using OpenTK;
using TextureStitch.Utils;

namespace TextureStitch.Components
{
    [Serializable]
    public class StitchPath : Component
    {
        private List<MeshNode> _path;
        private bool _createCollider;

        public List<MeshNode> Path
        {
            get { return _path; }
            set { _path = value; }
        }

        public bool CreateCollider
        {
            get { return _createCollider; }
            set
            {
                _createCollider = value;
                if (value)
                {
                    UpdateCollider();
                }
            }
        }

        private void UpdateCollider()
        {
            var rigidBody = GameObj.GetComponent<RigidBody>();
            if (rigidBody == null)
            {
                GameObj.AddComponent(new RigidBody());
                UpdateCollider();
                return;
            }

            rigidBody.ClearShapes();
            rigidBody.BodyType = BodyType.Static;

            foreach (var triangle in Triangulator.Triangulate(_path.Select(x => x.Pos)))
            {
                var shape = new PolyShapeInfo(new []
                {
                    triangle.Pos1.Xy,
                    triangle.Pos2.Xy,
                    triangle.Pos3.Xy
                }, 1f);
                rigidBody.AddShape(shape);
            }
        }
    }
}
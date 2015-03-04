using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Duality.Editor;
using OpenTK;
using TextureStitch.Components;
using TextureStitch.Editor.Model;

namespace TextureStitch.Editor.Actions
{
    public class AddNodeAction : UndoRedoAction
    {
        private readonly MeshNodeWithGameObject _node;
        private readonly Vector3 _worldPosition;
        private MeshNode _addedNode;

        public AddNodeAction(MeshNodeWithGameObject node, Vector3 worldPosition)
        {
            if (node == null) throw new ArgumentNullException("node");
            _node = node;
            _worldPosition = worldPosition;
        }

        public override void Do()
        {
            var gameObject = _node.GameObject;
            var renderer = gameObject.GetComponent<StitchedTextureRenderer>();

            var index = renderer.Points.IndexOf(_node.Node);

            var newNode = new MeshNode()
            {
                Pos = gameObject.Transform.GetWorldPoint(_worldPosition.Xy),
                Color = _node.Node.Color
            };
            renderer.Points.Insert(index, newNode);
            _addedNode = newNode;
            renderer.FlagAsDirty();
        }

        public override void Undo()
        {
            var gameObject = _node.GameObject;
            var renderer = gameObject.GetComponent<StitchedTextureRenderer>();
            renderer.Points.Remove(_addedNode);
            renderer.FlagAsDirty();
        }

        public override string Name
        {
            get { return "Add node"; }
        }
    }
}

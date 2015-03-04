using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Duality.Drawing;
using Duality.Editor;
using OpenTK;
using TextureStitch.Components;
using TextureStitch.Editor.Model;

namespace TextureStitch.Editor.Actions
{
    public class SplitNodesAction : UndoRedoAction
    {
        private readonly IEnumerable<MeshNodeWithGameObject> _nodes;
        private MeshNode _addedNode;

        public SplitNodesAction(IEnumerable<MeshNodeWithGameObject> nodes)
        {
            if (nodes == null) throw new ArgumentNullException("nodes");
            _nodes = nodes;
        }

        public override void Do()
        {
            var gameObj = _nodes.First().GameObject;
            var renderer = gameObj.GetComponent<StitchedTextureRenderer>();
            var node1 = _nodes.First().Node;
            var node2 = _nodes.Last().Node;

            var indexOfNode1 = renderer.Points.IndexOf(node1);
            var indexOfNode2 = renderer.Points.IndexOf(node2);

            _addedNode = new MeshNode()
            {
                Color = ColorRgba.Lerp(node1.Color, node2.Color, 0.5f),
                Pos = Vector2.Lerp(node1.Pos, node2.Pos, 0.5f)
            };

            renderer.Points.Insert(Math.Min(indexOfNode1, indexOfNode2), _addedNode);
        }

        public override void Undo()
        {
            var gameObj = _nodes.First().GameObject;
            var renderer = gameObj.GetComponent<StitchedTextureRenderer>();
            renderer.Points.Remove(_addedNode);
        }

        public override string Name
        {
            get { return "Split Nodes"; }
        }
    }
}

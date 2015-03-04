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
    public class RemoveNodesAction : UndoRedoAction
    {
        private readonly IEnumerable<MeshNodeWithGameObject> _nodes;
        private List<int> _indices; 

        public RemoveNodesAction(IEnumerable<MeshNodeWithGameObject> nodes)
        {
            if (nodes == null) throw new ArgumentNullException("nodes");
            _nodes = nodes;
            _indices = new List<int>();
        }

        public override void Do()
        {
            foreach (var node in _nodes)
            {
                var gameObj = node.GameObject;
                var renderer = gameObj.GetComponent<StitchedTextureRenderer>();
                _indices.Add(renderer.Points.IndexOf(node.Node));
                renderer.Points.Remove(node.Node);
                renderer.FlagAsDirty();
            }
        }

        public override void Undo()
        {
            for (int j = _nodes.Count() - 1; j >= 0; j--)
            {
                var node = _nodes.ElementAt(j);
                var gameObj = node.GameObject;
                var renderer = gameObj.GetComponent<StitchedTextureRenderer>();
                renderer.Points.Insert(_indices[j], node.Node);
                renderer.FlagAsDirty();
            }
            _indices.Clear();
        }

        public override string Name
        {
            get { return "Remove nodes"; }
        }
    }
}

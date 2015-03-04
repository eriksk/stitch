using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Duality;
using TextureStitch.Components;

namespace TextureStitch.Editor.Model
{
    public class MeshNodeWithGameObject
    {
        public MeshNode Node;
        public GameObject GameObject;

        public MeshNodeWithGameObject(MeshNode node, GameObject gameObject)
        {
            Node = node;
            GameObject = gameObject;
        }
    }
}

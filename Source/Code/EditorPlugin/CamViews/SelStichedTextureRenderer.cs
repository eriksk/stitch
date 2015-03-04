using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Duality;
using Duality.Editor.Plugins.CamView.CamViewStates;
using OpenTK;
using TextureStitch.Components;
using TextureStitch.Editor.Model;

namespace TextureStitch.Editor.CamViews
{
    public class SelStichedTextureRenderer : CamViewState.SelObj
    {
        private readonly MeshNodeWithGameObject _node;

        public SelStichedTextureRenderer(MeshNodeWithGameObject node)
        {
            if (node == null) throw new ArgumentNullException("node");
            _node = node;
        
        }

        public override string UpdateActionText(CamViewState.ObjectAction action, bool performing)
        {
            if (action == CamViewState.ObjectAction.Move)
            {
                return Pos.ToString();
            }
            return base.UpdateActionText(action, performing);
        }

        public override bool IsActionAvailable(CamViewState.ObjectAction action)
        {
            if (action == CamViewState.ObjectAction.Move)
                return true;
            return base.IsActionAvailable(action);
        }

        public override bool ShowPos
        {
            get { return true; }
        }

        public override object ActualObject
        {
            get { return _node; }
        }

        public override bool HasTransform
        {
            get { return true; }
        }

        public override float BoundRadius
        {
            get { return 32f; }
        }

        public override Vector3 Pos
        {
            get
            {
                var pos = Vector2.Transform(_node.Node.Pos,
                    Matrix4.CreateTranslation(GameObject.Transform.Pos) *
                    Matrix4.CreateRotationZ(GameObject.Transform.Angle) *
                    Matrix4.CreateScale(GameObject.Transform.Scale));

                return new Vector3(pos, GameObject.Transform.Pos.Z);
            }
            set
            {
                var pos = Vector3.Transform(value,(
                    Matrix4.CreateTranslation(GameObject.Transform.Pos) *
                    Matrix4.CreateRotationZ(GameObject.Transform.Angle) *
                    Matrix4.CreateScale(GameObject.Transform.Scale)).Inverted());

                _node.Node.Pos = pos.Xy;
            }
        }

        public GameObject GameObject
        {
            get { return _node.GameObject; }
        }

    }
}

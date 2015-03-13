using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Duality;
using Duality.Components;
using Duality.Drawing;
using Duality.Editor;
using Duality.Editor.Plugins.CamView.CamViewStates;
using Duality.Editor.Plugins.CamView.Properties;
using Duality.Resources;
using OpenTK;
using TextureStitch.Components;
using TextureStitch.Editor.Actions;
using TextureStitch.Editor.Model;
using TextureStitch.Editor.Utils;

namespace TextureStitch.Editor.CamViews
{
    public class StitchedTextureCamViewState : CamViewState
    {
        private ToolStrip _toolstrip;
        private CursorState _cursorState = CursorState.Normal;

        private bool _leftControlDown;
        private Vector2 _mousePos;
        private bool _showMeshes;

        public override string StateName
        {
            get { return "Stitched Texture Editor"; }
        }

        public StitchedTextureCamViewState()
        {
            this.CameraActionAllowed = true;
            this.MouseActionAllowed = true;
            this.EngineUserInput = false;
        }

        protected override void OnEnterState()
        {
            base.OnEnterState();
            View.SuspendLayout();

            _toolstrip = new ToolStrip();
            _toolstrip.SuspendLayout();
            
            _toolstrip.GripStyle = ToolStripGripStyle.Hidden;
            _toolstrip.Name = "toolstrip";
            _toolstrip.Text = "Stitching Editor Tools";


            var toolButtonNormal = new ToolStripButton("Select", null, OnNormalSelectionToolstripSelected)
            {
                DisplayStyle = ToolStripItemDisplayStyle.Text,
                AutoToolTip = true,
                Text = "Select"
            };
            _toolstrip.Items.Add(toolButtonNormal);

            //var toolButtonCreateShape = new ToolStripButton("Split nodes", null, OnSplitNodesSelected)
            //{
            //    DisplayStyle = ToolStripItemDisplayStyle.Text,
            //    AutoToolTip = true,
            //    Text = "Split nodes"
            //};
            //_toolstrip.Items.Add(toolButtonCreateShape);

            var toolButtonCreateShape = new ToolStripButton("Show meshes", null, OnShowMeshesSelected)
            {
                DisplayStyle = ToolStripItemDisplayStyle.Text,
                AutoToolTip = true,
                Text = "Show meshes"
            };
            _toolstrip.Items.Add(toolButtonCreateShape);


            _toolstrip.ResumeLayout(true);
            View.Controls.Add(_toolstrip);
            View.Controls.SetChildIndex(_toolstrip, this.View.Controls.IndexOf(this.View.ToolbarCamera));
            View.ResumeLayout(true);
            this.View.SetToolbarCamSettingsEnabled(false);

            this.InvalidateSelectionStats();
            DualityEditorApp.SelectionChanged += this.EditorForm_SelectionChanged;
            DualityEditorApp.ObjectPropertyChanged += EditorForm_ObjectPropertyChanged;
        }

        private void OnShowMeshesSelected(object sender, EventArgs e)
        {
            _showMeshes = !_showMeshes;
        }

        private void OnNormalSelectionToolstripSelected(object sender, EventArgs e)
        {
            ChangeTool(CursorState.Normal);
            MouseActionAllowed = true;
        }

        private void OnSplitNodesSelected(object sender, EventArgs e)
        {
            if (allObjSel.OfType<SelMeshNode>().Count() < 2)
            {
                OnNormalSelectionToolstripSelected(sender, e);
                return;
            }

            UndoRedoManager.Do(new SplitNodesAction(allObjSel.OfType<SelMeshNode>().Select(x => x.ActualObject as MeshNodeWithGameObject)));
            // switch tool imidiately
            OnNormalSelectionToolstripSelected(sender, e);
        }

        private void ChangeTool(CursorState state)
        {
            _cursorState = state;
            this.MouseActionAllowed = false;
            this.Invalidate();

            if (Sandbox.State == SandboxState.Playing)
                Sandbox.Pause();
            DualityEditorApp.Deselect(this, ObjectSelection.Category.Other);
        }

        protected override void OnLeaveState()
        {
            base.OnLeaveState();

            // Cleanup GUI
            _toolstrip.Dispose();

            _toolstrip = null;

            this.View.SetToolbarCamSettingsEnabled(true);
            DualityEditorApp.SelectionChanged -= EditorForm_SelectionChanged;
            DualityEditorApp.ObjectPropertyChanged -= EditorForm_ObjectPropertyChanged;
        }

        protected override void OnSceneChanged()
        {
            base.OnSceneChanged();
            InvalidateSelectionStats();
        }

        protected override void PostPerformAction(IEnumerable<SelObj> selObjEnum, ObjectAction action)
        {
            base.PostPerformAction(selObjEnum, action);

            if (selObjEnum.OfType<SelMeshNode>().Any())
            {
                foreach (var obj in selObjEnum.OfType<SelMeshNode>())
                {
                    //(obj.ActualObject as MeshNodeWithGameObject).GameObject.GetComponent<StitchPath>().FlagAsDirty();
                }
            }

            if (action == ObjectAction.Move)
            {
                DualityEditorApp.NotifyObjPropChanged(
                    this,
                    new ObjectSelection(selObjEnum.Select(s => (s.ActualObject as MeshNodeWithGameObject).GameObject)));
            
            }
        }

        private void EditorForm_ObjectPropertyChanged(object sender, ObjectPropertyChangedEventArgs e)
        {
            this.Invalidate();
            this.InvalidateSelectionStats();
        }

        public override CamViewState.SelObj PickSelObjAt(int x, int y)
        {
            var pickedRenderer = FindRenderers().FirstOrDefault();

            if (pickedRenderer != null)
            {
                var nearestPoint = FindNearestPointFor(pickedRenderer.GameObj.GetComponent<StitchPath>(), x, y);
                if (nearestPoint != null)
                    return new SelMeshNode(new MeshNodeWithGameObject(nearestPoint, pickedRenderer.GameObj));
            }

            return null;
        }

        public override List<SelObj> PickSelObjIn(int x, int y, int w, int h)
        {
            var selected = new List<SelObj>();

            var pickedRenderer = FindRenderers().FirstOrDefault();

            if (pickedRenderer != null)
            {
                var pointsInSelection = FindAllNodesInRect(pickedRenderer.GameObj.GetComponent<StitchPath>(), x, y, w, h);
                selected.AddRange(pointsInSelection.Select(point => new SelMeshNode(new MeshNodeWithGameObject(point, pickedRenderer.GameObj))));
            }

            return selected;
        }

        private MeshNode FindNearestPointFor(StitchPath renderer, int x, int y)
        {
            Vector3 worldCoord = GetSpaceCoord(new Vector3(x, y, renderer.GameObj.Transform.Pos.Z));
            
            var points = renderer.Path;

            var nearest = points.FirstOrDefault();
            if (nearest == null) return null;

            var nearestDistance = nearest.Pos.DistanceTo(worldCoord.Xy);

            foreach (var meshNode in points)
            {
                var pos = Vector2.Transform(meshNode.Pos,
                    Matrix4.CreateTranslation(renderer.GameObj.Transform.Pos) *
                    Matrix4.CreateRotationZ(renderer.GameObj.Transform.Angle) *
                    Matrix4.CreateScale(renderer.GameObj.Transform.Scale));

                var dst = pos.DistanceTo(worldCoord.Xy);
                if (dst < nearestDistance)
                {
                    nearestDistance = dst;
                    nearest = meshNode;
                }
            }

            if (nearestDistance > 16f)
                return null;

            return nearest;
        }
        private IEnumerable<MeshNode> FindAllNodesInRect(StitchPath renderer, int x, int y, int w, int h)
        {
            var rect = GetSpaceRect(x, y, w, h, renderer.GameObj.Transform.Pos.Z);

            foreach (var point in renderer.Path)
            {
                var pos = Vector2.Transform(point.Pos,
                    Matrix4.CreateTranslation(renderer.GameObj.Transform.Pos) *
                    Matrix4.CreateRotationZ(renderer.GameObj.Transform.Angle) *
                    Matrix4.CreateScale(renderer.GameObj.Transform.Scale));
                if (rect.Contains(pos))
                    yield return point;
            }
        }

        private Rect GetSpaceRect(int x, int y, int w, int h, float z)
        {
            var pos = GetSpaceCoord(new Vector3(x, y, z));
            var endPos = GetSpaceCoord(new Vector3(x + w, y + h, z));
        
            return new Rect(pos.X, pos.Y, endPos.X - pos.X, endPos.Y - pos.Y);
        }

        private void EditorForm_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (e.SameObjects) return;

            allObjSel = new List<SelObj>();
            allObjSel.AddRange(e.Current.Objects.Where(x => (x as MeshNodeWithGameObject) != null).Select(x => new SelMeshNode((x as MeshNodeWithGameObject)) as SelObj));
          
            foreach (var s in e.Removed.Objects.Where(x => (x as MeshNodeWithGameObject) != null).Select(x => new SelMeshNode(x as MeshNodeWithGameObject)))
                actionObjSel.Remove(s);

            actionObjSel.AddRange(e.Added.Objects.Where(x => (x as MeshNodeWithGameObject) != null).Select(x => new SelMeshNode(x as MeshNodeWithGameObject)));

            indirectObjSel.Clear();
            // add gameobject
            indirectObjSel.AddRange(e.Added.Objects.Where(x => (x as MeshNodeWithGameObject) != null).Select(x => new SceneEditorCamViewState.SelGameObj(new SelMeshNode(x as MeshNodeWithGameObject).GameObject)));

            Log.Editor.Write("allObjSel: " + allObjSel.Count);
            Log.Editor.Write("actionObjSel: " + actionObjSel.Count);
            Log.Editor.Write("indirectObjSel: " + indirectObjSel.Count);

            InvalidateSelectionStats();
            //UpdateAction();
            Invalidate();
        }

        protected IEnumerable<StitchRenderer> FindRenderers()
        {
            var allColliders = Scene.Current.FindComponents<StitchRenderer>().Where(r =>
                r.Active &&
                !DesignTimeObjectData.Get(r.GameObj).IsHidden &&
                this.IsCoordInView(r.GameObj.Transform.Pos, r.BoundRadius));

            return allColliders;
        }

        public override void SelectObjects(IEnumerable<SelObj> selObjEnum, SelectMode mode = SelectMode.Set)
        {
            base.SelectObjects(selObjEnum, mode);

            if (selObjEnum.OfType<SelMeshNode>().Any())
            {
                DualityEditorApp.Deselect(this, ObjectSelection.Category.All);
                DualityEditorApp.Select(this,
                    new ObjectSelection(selObjEnum.OfType<SelMeshNode>().Select(s => s.ActualObject)),
                    mode);
            }
        }

        public override void ClearSelection()
        {
            base.ClearSelection();
            DualityEditorApp.Deselect(this, ObjectSelection.Category.All);
        }

        protected override void OnKeyDown(KeyEventArgs e)
        {
            base.OnKeyDown(e);
            if (e.KeyCode == (Keys.LButton | Keys.ShiftKey))
                _leftControlDown = true;
        }

        protected override void OnKeyUp(KeyEventArgs e)
        {
            base.OnKeyUp(e);

            if (e.KeyCode == (Keys.LButton | Keys.ShiftKey))
                _leftControlDown = false;
        }

        protected override void OnMouseMove(MouseEventArgs e)
        {
            base.OnMouseMove(e);
            _mousePos = new Vector2(e.X, e.Y);
        }

        protected override void OnMouseDown(MouseEventArgs e)
        {
            base.OnMouseDown(e);

            if (e.Button == MouseButtons.Left)
            {
                if (_leftControlDown)
                {
                    if (allObjSel.OfType<SelMeshNode>().Any())
                    {
                        UndoRedoManager.Do(
                            new AddNodeAction(
                                (allObjSel.OfType<SelMeshNode>().First().ActualObject as
                                    MeshNodeWithGameObject), GetSpaceCoord(_mousePos)));
                    }
                }
            }
        }

        public override void DeleteObjects(IEnumerable<SelObj> objEnum)
        {
            base.DeleteObjects(objEnum);

            if (objEnum.OfType<SelMeshNode>().Any())
            {
                UndoRedoManager.Do(new RemoveNodesAction((objEnum.OfType<SelMeshNode>().Select(x => x.ActualObject as MeshNodeWithGameObject))));
            }
        }

        protected override void OnCollectStateDrawcalls(Canvas canvas)
        {
            base.OnCollectStateDrawcalls(canvas);

            foreach (var meshNodeWithGameObject in allObjSel.Where(x => (x as SelMeshNode) != null).Select(x => (MeshNodeWithGameObject)(x as SelMeshNode).ActualObject))
            {
                if (meshNodeWithGameObject == null) continue;
                var stitches = meshNodeWithGameObject.GameObject.GetComponent<StitchPath>();
                var stitchRenderer = meshNodeWithGameObject.GameObject.GetComponent<StitchRenderer>();
                if (stitches == null) continue;

                //if (_showMeshes)
                //{
                    RenderMeshes(canvas, stitchRenderer);
                    continue;
                //}

                var points = stitches.Path;
                for (int i = 0; i < points.Count - 1; i++)
                {
                    var p1 = points[i];
                    var p2 = points[i + 1];
                    canvas.DrawLine(p1.Pos.X, p1.Pos.Y, 0f, p2.Pos.X, p2.Pos.Y, 0f);

                    // node create point
                    var center = Vector2.Lerp(p1.Pos, p2.Pos, 0.5f);
                    canvas.DrawCircle(center.X, center.Y, 4f);
                }
                canvas.DrawLine(points[points.Count - 1].Pos.X, points[points.Count - 1].Pos.Y, 0f, points[0].Pos.X, points[0].Pos.Y, 0f);

                foreach (var point in points)
                {
                    canvas.FillCircle(point.Pos.X, point.Pos.Y, 0f, 8f);
                }

                if (_leftControlDown)
                {
                    var mPos = GetSpaceCoord(_mousePos);
                    var crossSize = 32;
                    var offset = crossSize - 32;

                    canvas.DrawCircle(mPos.X, mPos.Y, 0f, 24);
                    canvas.DrawThickLine(mPos.X - offset, mPos.Y, 0f, mPos.X + offset * 2, mPos.Y, 0f, 2);
                    canvas.DrawThickLine(mPos.X, mPos.Y - offset, 0f, mPos.X, mPos.Y + offset * 2, 0f, 2);
                    canvas.DrawText(new FormattedText("Add node"), mPos.X + 24, mPos.Y + 24, 0, null, Alignment.TopLeft, true);
                }
            }
        }

        private void RenderMeshes(Canvas canvas, StitchRenderer stitches)
        {
            stitches.DrawDebug(canvas);
        }
    }
}

using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Duality.Drawing;
using FarseerPhysics.Common;
using FarseerPhysics.Common.Decomposition;
using MIConvexHull;
using OpenTK;
using TextureStitch.Components;

namespace TextureStitch.Utils
{
    public class Triangulator
    {
        public static IEnumerable<Triangle> Triangulate(IEnumerable<Vector2> vertices)
        {
            var triangles = EarclipDecomposer.TriangulatePolygon(new Vertices(vertices.ToList()));

            return triangles.Select(x => new Triangle(
                new Vector3(x.X[0], x.Y[0], 0f),
                new Vector3(x.X[1], x.Y[1], 0f),
                new Vector3(x.X[2], x.Y[2], 0f)
                ));
        }
    }

    public class Triangle
    {
        public Vector3 Pos1, Pos2, Pos3;
        public ColorRgba Col1, Col2, Col3;

        public Triangle(Vector3 pos1, Vector3 pos2, Vector3 pos3)
        {
            Pos1 = pos1;
            Pos2 = pos2;
            Pos3 = pos3;
            Col1 = ColorRgba.White;
            Col2 = ColorRgba.White;
            Col3 = ColorRgba.White;
        }

        public Vector2 Center
        {
            get
            {
                return new Vector2((Pos1.X + Pos2.X + Pos3.X) / 3f,
                                    (Pos1.Y + Pos2.Y + Pos3.Y) / 3f);
            }
        }
    }
}
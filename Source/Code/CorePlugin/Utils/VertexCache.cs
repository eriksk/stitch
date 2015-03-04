using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ExceptionServices;
using System.Text;

namespace TextureStitch.Utils
{
    public class VertexCache<TVertexType> where TVertexType : struct
    {
        private readonly List<TVertexType> _vertices;
        private int _currentNode;

        public VertexCache()
        {
            _vertices = new List<TVertexType>();
            _currentNode = 0;
        }

        public void Restart()
        {
            _currentNode = 0;
        }

        public TVertexType[] Next(int count)
        {
            if (_currentNode + count > _vertices.Count - 1)
            {
                for (int i = 0; i < count; i++)
                    _vertices.Add(new TVertexType());
            }

            var vertices = _vertices.Take(count).ToArray();
            _currentNode += count;

            return vertices;
        }
    }
}

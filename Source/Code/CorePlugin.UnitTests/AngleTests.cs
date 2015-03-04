using System;
using Duality;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TextureStitch.Utils;

namespace CorePlugin.UnitTests
{
    [TestClass]
    public class AngleTests
    {
        [TestMethod]
        public void TestMethod1()
        {
            Assert.IsTrue(MathHelper.AngleInRange(MathF.RadToDeg(0f), -90, 90));
        }

        [TestMethod]
        public void TestMethod2()
        {
            Assert.IsFalse(MathHelper.AngleInRange(MathF.RadToDeg(-91f), -90, 90));
        }
    }
}

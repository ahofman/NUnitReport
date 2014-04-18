using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tests
{
    [TestFixture]
    public class FailingTestFixture
    {
        [Test]
        public void FailingTest()
        {
            Assert.Fail("This test fails!");
        }

        [Test]
        public void PassingTest()
        {
            Assert.AreEqual(2, 1 + 1);
        }
    }
}

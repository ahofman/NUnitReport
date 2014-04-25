using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tests
{
    [TestFixture]
    public class SkippedTestFixture
    {
        [Test]
        public void ThisTestPasses()
        {
            Assert.AreEqual(2, 2);
        }

        [Test]
        [Ignore("For some reason this wont work so im ignoring it")]
        public void ThisTestPassesButIsIgnored()
        {
            Assert.AreEqual(2, 2);
        }
    }
}

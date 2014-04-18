using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tests
{
    [TestFixture]
    public class InconclusiveTestFixture
    {
        [Test]
        public void InconclusiveTest()
        {
            Assert.Inconclusive("No idea whats going on here");
        }

    }
}

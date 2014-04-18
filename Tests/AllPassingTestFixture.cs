using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tests
{
    [TestFixture]
    public class AllPassingTestFixture
    {
        [Test]
        public void PassingTest()
        {
            Assert.Pass("It's all good");
        }
    }
}

using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;
using MySQL_CS;

namespace UnitTestProjectUserDefinedFunctions
{
    [TestClass]
    public class UnitTestUserDefinedFunction
    {
        [TestMethod]
        public void TestMethodUserDefinedFunctions()
        {
            SqlDouble originalAmount = 100.0;
            SqlDouble ExpectedAmount = 100.0 * 1.010;
            SqlDouble finalAmount = UserDefinedFunctions.addGsTTax(originalAmount);
            Assert.AreEqual(ExpectedAmount, finalAmount);
        }
    }
}

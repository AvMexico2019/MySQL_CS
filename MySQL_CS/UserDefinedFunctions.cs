using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

namespace MySQL_CS
{
    public partial class UserDefinedFunctions
    {
        public const double GST_TAX = .010;

        [SqlProcedure]
        public static SqlDouble addGsTTax(SqlDouble originalAmount)
        {
            SqlDouble taxAmount = originalAmount * GST_TAX;

            return originalAmount + taxAmount;
        }
    }
}




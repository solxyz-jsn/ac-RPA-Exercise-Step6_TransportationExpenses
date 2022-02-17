using System;
using System.Collections.Generic;
using System.Text;

namespace TransportationExpenses
{
    // DataGridに表示するデータ
    public class Expenses
    {
        public string Date { get; set; }
        public string Route { get; set; }
        public string Categories { get; set; }
        public string Destination { get; set; }
        public int Expense { get; set; }
        public string RegNumber { get; set; }
    }
}

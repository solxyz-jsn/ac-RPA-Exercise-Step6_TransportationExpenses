using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Collections.ObjectModel;

namespace TransportationExpenses
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            var data = new ObservableCollection<Expenses>(
            Enumerable.Range(1, 3).Select(i => new Expenses
            {
                Date = "2021/07/0" + (4 - i).ToString(),
                Route = "品川 - 田町",
                Categories = "電車",
                Destination = "A社",
                Expense = 140,
                RegNumber = "T" + GeneratePassword(8)
            }));
            this.DataGridExpenses.ItemsSource = data;

            DateTime dt = DateTime.Now;
            this.Title = dt.ToString("交通費精算（例外練習用）　" + "yyyy/MM/dd HH:mm:ss");

            this.StetusBarItem1.Content = "";

            // ウィンドウ表示位置（ランダム）
            RandamWindowStartupLocation();
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnNewEntry_Click(object sender, RoutedEventArgs e)
        {
            this.StetusBarItem1.Content = "新規登録中...";
            var NewEntry = new NewEntry();
            NewEntry.setParent(this);
            NewEntry.ShowDialog();
            if ((bool)NewEntry.DialogResult)
            {
                // 登録成功時
            }
            else
            {
                // 登録失敗、キャンセル時
            }
        }

        public void InsertRowData(string dt, string rt, string ct, string ds, int ex, string rn)
        {
            // データグリッドに行を追加します。
            var dataList = DataGridExpenses.ItemsSource as ObservableCollection<Expenses>;
            var data = new Expenses { Date = dt, Route = rt, Categories = ct, Destination = ds, Expense = ex, RegNumber = rn };
            dataList.Insert(0, data);
        }

        //パスワードに使用する文字
        //private static readonly string passwordChars = "0123456789abcdefghijklmnopqrstuvwxyz";
        private static readonly string passwordChars = "0123456789";

        /// <summary>
        /// ランダムな文字列を生成する
        /// </summary>
        /// <param name="length">生成する文字列の長さ</param>
        /// <returns>生成された文字列</returns>
        public string GeneratePassword(int length)
        {
            StringBuilder sb = new StringBuilder(length);
            Random r = new Random();

            for (int i = 0; i < length; i++)
            {
                //文字の位置をランダムに選択
                int pos = r.Next(passwordChars.Length);
                //選択された位置の文字を取得
                char c = passwordChars[pos];
                //パスワードに追加
                sb.Append(c);
            }

            return sb.ToString();
        }

        // ウィンドウ表示位置
        private void RandamWindowStartupLocation()
        {
            Random r = new Random();
            int i = r.Next(0, 5);
            if (i == 0)
            {
                // 左上隅
                this.WindowStartupLocation = WindowStartupLocation.Manual;
                this.Top = 10;
                this.Left = 10;
            }
            else if (i == 1)
            {
                // 右上隅
                this.WindowStartupLocation = WindowStartupLocation.Manual;
                this.Top = 10;
                this.Left = SystemParameters.WorkArea.Width - this.Width;
            }
            else if (i == 2)
            {
                // 右下隅
                this.WindowStartupLocation = WindowStartupLocation.Manual;
                this.Top = SystemParameters.WorkArea.Height - this.Height;
                this.Left = SystemParameters.WorkArea.Width - this.Width;
            }
            else if (i == 3)
            {
                // 左下隅
                this.WindowStartupLocation = WindowStartupLocation.Manual;
                this.Top = SystemParameters.WorkArea.Height - this.Height;
                this.Left = 10;
            }
            else
            {
                // 中央
                this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;


namespace TransportationExpenses
{
    /// <summary>
    /// Login.xaml の相互作用ロジック
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();
        }

        Boolean blnClose = false;   //想定されたCloseアクションであるかの判定

        #region "最大化・最小化・閉じるボタンの非表示設定"

        [DllImport("user32.dll")]
        private static extern int GetWindowLong(IntPtr hWnd, int nIndex);

        [DllImport("user32.dll")]
        private static extern int SetWindowLong(IntPtr hWnd, int nIndex, int dwNewLong);

        const int GWL_STYLE = -16;
        const int WS_SYSMENU = 0x80000;

        protected override void OnSourceInitialized(EventArgs e)
        {
            base.OnSourceInitialized(e);
            IntPtr handle = new WindowInteropHelper(this).Handle;
            int style = GetWindowLong(handle, GWL_STYLE);
            style = style & (~WS_SYSMENU);
            SetWindowLong(handle, GWL_STYLE, style);
        }

        #endregion

        private void Button_Click_Login(object sender, RoutedEventArgs e)
        {
            if ((TextBoxUser.Text == "") || (PasswordBoxPassword.Password == ""))
            {
                MessageBox.Show("ログイン情報を入力してください。", "エラー", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else if (TextBoxUser.Text == "user1" && PasswordBoxPassword.Password != "")
            {
                MessageBox.Show("「ユーザー」または「パスワード」が間違っています。" + Environment.NewLine + "正しいログイン情報を入力してください。", "エラー", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else
            {
                // ログインまでの待機時間（ランダム）
                Random r = new Random();
                this.Cursor = Cursors.Wait;
                System.Threading.Thread.Sleep(r.Next(0, 30) * 100);
                this.Cursor = Cursors.Arrow;

                blnClose = true;
                this.DialogResult = true;
            }
        }

        protected virtual void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            // Closeボタン（現在は非表示）、Alt+F4など
            if (blnClose)
            {
                return;
            }
            else
            {
                // ボタン以外でのCloseを許さない
                e.Cancel = true;
                return;
            }
        }

        private void Button_Click_Cancel(object sender, RoutedEventArgs e)
        {
            blnClose = true;
            this.DialogResult = false;
        }


    }
}


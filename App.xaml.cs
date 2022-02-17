using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace TransportationExpenses
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        // このメソッドを追加
        private void Application_Startup(object sender, StartupEventArgs e)
        {
            // ログイン画面を表示する前に設定する
            this.MainWindow = new MainWindow();

            // ログイン画面を表示
            var loginWindow = new Login();
            bool? dialogResult = loginWindow.ShowDialog();

            if ((bool)!dialogResult)
            {
                this.Shutdown();
                return;
            }

            // メンテナンス画面を表示（ランダム）
            Random r = new Random();
            if (r.Next(0, 10) >= 7)     // 7 <= 30%の確率でメンテナンス画面を表示
            {
                MessageBox.Show("【メンテナンス】" + Environment.NewLine + "本日、20時から21時まで緊急メンテナンスを実施します。" + Environment.NewLine + "メンテナンス中はシステムを利用できません。", "お知らせ", MessageBoxButton.OK, MessageBoxImage.Information);
            }

            // メイン画面を表示
            this.MainWindow.Show();
        }

    }
}

   M S B A M L   `   `   `  ����Q  MTransportationExpenses, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TransportationExpensesTransportationExpenses  5   	   '    !TransportationExpenses.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:TransportationExpenses     5   	     � Title$*  $交通費精算（例外練習用）��5   	   $	��500��6   $	��800��6+   .��5	      � .+�5
   
   �� -   5         ��Name$ ButtonNewEntry��5
      $��新規登録��6)   $
��Left=�68   $��50��6S   $��	45,83,0,0q�6_   $	��Top=�6r   $	��200��6�   ���	#FF007BFF
����������	#FF003E7B6�   �� 5   
   -   5         ��Name$ lblTitle��5      $*��$交通費精算（例外練習用）��6"   $
��Left=�69   $��45,5,0,0q�6T   $	��Top=�6f   $��28(�6~   $
��Bold"�6�   $	��694��6�   �� 5   
   -   5        $ ButtonClose��5      $��アプリ終了��6&   $
��Left=�66   $��50��6Q   $��
539,83,0,0q�6]   $	��Top=�6q   $	��200��6�   ���	#FFDDDDDD
���   ����	#FF70707B6�   &   System.Windows.Controls.DataGrid  5   
   -   5        $��DataGridExpenses��5         
IsReadOnly$
 True��6+   $��45,150,45,80q�6=      AutoGenerateColumns$ False��6S      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 	年月日��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 70 6K   1  +System.Windows.Controls.DataGridBoundColumn   Binding 62   �� *Date+6K     5      $ 経路��6%   $	 200 6K    61   �� *Route+6K     5      $ 種別��6%   $	 100 6P    61   �� *
Categories+6P     5      $ 行先��6%   $	 190 6Q    61   �� *Destination+6Q     5      $ 金額��6%   $ 50 6M    61   �� *	Expense+	   ElementStyle	 5      �� 5      
 �� 
TargetType"
 ��6    .�5      ��  �� Property �@��TextAlignment �� Value$ Right=�6>   5      5        5      $ 登録番号��6%   $ 70 6Q    63   �� *	RegNumber+6Q   5      5      5      
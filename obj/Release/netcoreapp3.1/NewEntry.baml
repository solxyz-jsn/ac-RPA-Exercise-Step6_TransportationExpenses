   M S B A M L   `   `   `  ���� Q  MTransportationExpenses, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TransportationExpensesTransportationExpenses  %    TransportationExpenses.NewEntry   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6local$clr-namespace:TransportationExpenses       � Title$9  3交通費精算（例外練習用） - 新規登録��$	��430��$	��500�� � 
ResizeMode$ NoResize=�.��� .+��� -    ��Name$ 
LabelTitle��$��新規登録��$
��Left=�$��78,2,0,0q�$	��Top=�$��28(�$
��Bold"�$	��324���� -   $ 	LabelDate��$��	年月日��$
��Left=�$��	78,69,0,0q�$	��Top=�$��18(�(  "System.Windows.Controls.DatePicker  -     Name$ DatePickerDate��$
��Left=�$��
202,70,0,0q�$	��Top=� J� RenderTransformOrigin$ -0.499,3.636&�$��18(�$	��200���� -   $ 
LabelRoute��$��経路��$
��Left=�$��
78,122,0,0q�$	��Top=�$��18(��� -    ��Name$ TextBoxRoute��$
��Left=�$��202,126,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��200��$��18(��� -   $ LabelCategories��$��種別��$
��Left=�$��
78,168,0,0q�$	��Top=�$��18(�� -    �Name$ GridCategories��$
��Left=�$��23��$	��Top=�$	��200��$��202,179,0,0q�.+��� -    ��Name$ CheckBoxCategory1��$��電車��$
��Left=�$��Center=�$��16(��� -	   $ CheckBoxCategory2��$��バス��$
��Left=�$��Center=�$��16(�$��65,0,0,0q��� -
   $ CheckBoxCategory3��$��タクシー��$��Center=�$��16(�$��	118,0,0,0q��� -   $ LabelDestination��$��行先��$
��Left=�$��
78,217,0,0q�$	��Top=�$��18(�$ -0.515,-2.257&��� -   $ TextBoxDestination��$
��Left=�$��202,221,0,0q�$
 Wrap=�$	��Top=�$	��200��$��18(��� -   $ LabelExpense��$��金額��$
��Left=�$��
78,268,0,0q�$	��Top=�$��18(�$ -0.515,-2.257&��� -   $ TextBoxExpense��$
��Left=�$��202,272,0,0q�$
 Wrap=�$	��Top=�$	��200��$��18(�	 �� TextAlignment$	 Right=�
 �� IsInputMethodEnabled$
 False���� -    ��Name$ ButtonCancel��$��キャンセル��$
��Left=�$��29��$��202,332,0,0q�$	��Top=�$��90���� -   $ ButtonEntry��$��登録��$
��Left=�$��29��$��312,332,0,0q�$	��Top=�$��90�����	#FF007BFF
����������	#FF003E7B
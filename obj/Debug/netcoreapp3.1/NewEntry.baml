   M S B A M L   `   `   `  ����Q  MTransportationExpenses, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TransportationExpensesTransportationExpenses  5   	   %    TransportationExpenses.NewEntry   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:TransportationExpenses     5   	     � Title$$  交通費精算 - 新規登録��5   	   $	��430��6   $	��500��6+   .��5	      � .+�5
   
   �� -   5         ��Name$ 
LabelTitle��5
      $��新規登録��6$   $
��Left=�63   $��78,2,0,0q�6N   $	��Top=�6`   $��28(�6x   $
��Bold"�6�   $	��324��6�   �� 5   
   -   5        $ 	LabelDate��5      $��	年月日��6#   $
��Left=�61   $��	78,69,0,0q�6L   $	��Top=�6_   $��18(�6w   �� 5   
   -   5         ��Name$ TextBoxRoute��5      $
��Left=�6(   $��202,126,0,0q�6C    �� TextWrapping$
 Wrap=�6X   $	��Top=�6l   $	��200��6�   $��18(�6�   �� 5   
   -   5        $ 
LabelRoute��5      $��経路��6$   $
��Left=�61   $��
78,122,0,0q�6L   $	��Top=�6`   $��18(�6x   �� 5   
   -   5        $ LabelCategories��5      $��種別��6)   $
��Left=�66   $��
78,168,0,0q�6Q   $	��Top=�6e   $��18(�6}   �� 5   
   -   5        $ TextBoxDestination��5      $
��Left=�6.   $��202,221,0,0q�6I   $
 Wrap=�6^   $	��Top=�6r   $	��200��6�   $��18(�6�   �� 5   
   -   5        $ LabelDestination��5      $��行先��6*   $
��Left=�67   $��
78,217,0,0q�6R   $	��Top=�6f   $��18(�6~    J� RenderTransformOrigin$ -0.515,-2.257&�6�   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ DatePickerDate��5      $
��Left=�6-   $��
202,70,0,0q�6H   $	��Top=�6\   $ -0.499,3.636&�6t   $��18(�6�   $	��200��6�   �� 5   
   -	   5        $ TextBoxExpense��5      $
��Left=�6*   $��202,272,0,0q�6E   $
 Wrap=�5      $	��Top=�6&   $	��200��6>   $��18(�5       �� TextAlignment$ Right=�6     �� IsInputMethodEnabled$ False��5      5      �� 5   
   -
   5        $ LabelExpense��5      $��金額��6&   $
��Left=�63   $��
78,268,0,0q�6N   $	��Top=�6b   $��18(�6z   $ -0.515,-2.257&�6�   � 5   
   -   5         �Name$ GridCategories��5      $
��Left=�6'   $��23��6B   $	��Top=�6N   $	��200��6f   $��202,179,0,0q�6r   .+�5      �� -   5        	 ��Name$	 CheckBoxCategory1��5      $��電車��62   $
��Left=�6?   $��Center=�6Z   $��16(�6u   �� 5      -   5        $	 CheckBoxCategory2��5      $��バス��62   $
��Left=�6?   $��Center=�6Z   $��16(�6u   $��65,0,0,0q�6�   �� 5      -   5        $	 CheckBoxCategory3��5      $��タクシー��62   $��Center=�6A   $��16(�6\   $��	118,0,0,0q�6j   5      �� 5   
   -   5        
 ��Name$
 ButtonCancel��5      $��キャンセル��6'   $
��Left=�67   $��29��6R   $��202,332,0,0q�6^   $	��Top=�6s   $��90��6�   6�   �� 5   
   -   5        $
 ButtonEntry��5      $��登録��6&   $
��Left=�63   $��29��6N   $��312,332,0,0q�6Z   $	��Top=�6o   $��90��6�   ���	#FF007BFF
����������	#FF003E7B6�   �� 5    
   $��Button��6   $
��Left=�6"   $��653,251,0,0q�6=   $	��Top=�6R   $��0��6j   5"      5#      
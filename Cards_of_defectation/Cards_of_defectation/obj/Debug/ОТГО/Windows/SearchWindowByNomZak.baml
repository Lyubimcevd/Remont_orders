   M S B A M L   `   `   `  ����O  KCards_of_defectation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:Cards_of_defectation.ОТГО.Windows%Cards_of_defectation.ОТГО.Windows  5   	   @    :Cards_of_defectation.ОТГО.Windows.SearchWindowByNomZak   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Elocal3clr-namespace:Cards_of_defectation.ОТГО.Windows     5   	     � Title$  SearchWindowByNomZak��5   	   $	��300��5	   	   $	��250��5
   	    � 
ResizeMode$ NoResize=�5   	   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��100 �6   �� 5       � RowDefinitions 5   
   �� 5      $��25 �6   �� 5      .+�5   
   �� $��Номер заказа: ��6   $��14(�6*   �� 5   
   -   5        $��	combo_box��5       �� 
IsEditable .  �� IsTextSearchEnabled .  $��1��5       �� IsDropDownOpen 5      �� *IsDropDownNomZak+ �� Text 5      �� *Text_for_filter_nom_zak+ �� Mode$ TwoWay=�	 �� UpdateSourceTrigger$	 PropertyChanged=���5      �� *Nom_zak_list+5      &   System.Windows.Controls.DataGrid  5   
   -   5        $��datagrid��5!      $��1��5      $��2��5       
   HeadersVisibility$

 None=�5$         ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 5%         CanUserAddRows .  ��5"      �� 5&      5'      5(      
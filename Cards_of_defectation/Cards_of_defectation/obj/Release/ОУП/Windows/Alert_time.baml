   M S B A M L   `   `   `  ���� O  KCards_of_defectation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:Cards_of_defectation.ОУП.Windows#Cards_of_defectation.ОУП.Windows  4    .Cards_of_defectation.ОУП.Windows.Alert_time   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     Clocal1clr-namespace:Cards_of_defectation.ОУП.Windows       � Title$#  Контроль сроков��$	��331��$	��484�� � 	Resources    	Date_Text � RowDefinitions(  "System.Windows.Controls.DatePicker �� TextWrapping  Context_menu_row m�Name m� Command �� 
TargetType �� Property �� Value:  4System.Windows.Controls.Primitives.DatePickerTextBox  Row	 � ColumnDefinitions  Cap��%�  &	        &	 U     '�� @    7  '  k    7  '  �    7  &	 �    7   &	 �    �� .R��  �� $��25 ��� $��25 �.+�  $��0���� $��1��$
 Wrap=��� .@�m� $ tree_defect��$'��!Дерево дефектации��m� $
 shop��$��Цеха��m� $#��Добавить строку��$	 New��m� $��Сохранить��$
 Save��m� $#��Контроль сроков���� " ��.���  �@�ContextMenu8   �� "  .���  �@�ContextMenu8   �� "  .���  �@�ContextMenu8   �� .R�� 	 �� $��25 ��� $��70 ��� $	��120 ��� $	��150 �.+��� $��0��$
 Wrap=�$��Center=�$��Center=��� $��1��$
 Wrap=�$��Center=�$��Center=��� $��2��$
 Wrap=�$��Center=�$��Center=��� $��7��8��  �� .R�� 	 �� $��25 ��� $��70 ��� $	��120 ��� $	��150 �.+��� $��0��$
 Wrap=�$��№ пп��$��Center=�$��Center=��� $��1��$
 Wrap=�$��Номер изделия��$��Center=�$��Center=��� $��2��$
 Wrap=�$D��>Воинская часть и место дислокации��$��Center=�$��Center=��� $��7��$
 Wrap=�$e��_Срок ремонта и изготовления имущества предприятием��$��Center=�$��Center=�.���� $
��Auto=�$
��Auto=�.��� -   
 �Name$
 	Main_grid�� �� $��70 ��� $��50 ��� $��50 ��� $��50 �.+��� $��0��#��[ �� $��1��#��[ �� $��2��#��[ �� $��3��#��[ 
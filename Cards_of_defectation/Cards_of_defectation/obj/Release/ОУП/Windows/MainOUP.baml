   M S B A M L   `   `   `  ���� O  KCards_of_defectation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:Cards_of_defectation.ОУП.Windows#Cards_of_defectation.ОУП.Windows  1    +Cards_of_defectation.ОУП.Windows.MainOUP   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     Clocal1clr-namespace:Cards_of_defectation.ОУП.Windows     -     � Title$  План работ�� � 	Resources    Context_menu_row m� Command)  #System.Windows.Controls.DataGridRow �� 
TargetType �� Property �� Value �� Color��%?  &	        '  �     7   (�� �     * SystemColors.HighlightBrushKey+)�� .@�m� -   $'��!Служебная записка��m� -   $'��!Дерево дефектации��m� -   $��Цеха��m� $#��Добавить строку��$	 New���� "  .���  �@�ContextMenu8   �� $ 
Aquamarine��.���  � RowDefinitions �� $��25 ��� .+�o� -    o�Name$
 menu��.@�m� $#��Добавить строку��$	 New��$��14(�m� -   $#��Контроль сроков��$��14(�m� $��Сохранить��$
 Save��$��14(�m� -   $��Справочники��$��14(�&   System.Windows.Controls.DataGrid  -   	  Name$	 
main_table��$��1��
   AutoGenerateColumns
 .     CanUserDeleteRows .    CanUserAddRows .  $��14(�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Заявка��   
IsReadOnly .    
Foreground
 �   �   Width5  /System.Windows.Controls.DataGridLengthConverter$ 2* 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Nom_sz_view+   HeaderStyle �� =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  .���  � ��$ Center=�  $ Приоритет��
 �   � . $ 2*  �� *Prior+ �� "  .���  � ��$ Center=�  $ Изделие��
 �   �$ 2*  �� *	Ser_nom+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� "  .���  � ��$ Center=�  $! Воинская часть��
 �   �$ 6*  �� *
Voin_chast+$ TwoWay=�$ PropertyChanged=� �� "  .���  � ��$ Center=�  $ 
Заказ��
 �   �$ 2*  �� *	Nom_zak+$ TwoWay=�$ PropertyChanged=� �� "  .���  � ��$ Center=�4  .System.Windows.Controls.DataGridTemplateColumn  $ 4*  �� "  .���  � ��$ Center=���  � �� �� .R��� $
��Wrap=�$+��%Срок восстановления��   CellTemplate �� .R�(	  "System.Windows.Controls.DatePicker	  
���   � 	  Text �� *
Srok_rem+$ TwoWay=�$ PropertyChanged=�  
 �   � . $ 3*  �� *Kards+ �� "  .���  � ��$ Center=���  � �� �� .R��� $
��Wrap=�$A��;Количество карт Всего/Выполнено��
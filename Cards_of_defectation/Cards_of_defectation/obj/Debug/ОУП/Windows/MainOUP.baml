   M S B A M L   `   `   `  ����O  KCards_of_defectation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:Cards_of_defectation.ОУП.Windows#Cards_of_defectation.ОУП.Windows  5   	   1    +Cards_of_defectation.ОУП.Windows.MainOUP   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Clocal1clr-namespace:Cards_of_defectation.ОУП.Windows     5   	   -   5          � Title$  План работ��5   	    J� CommandBindings 5
      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$
 Save��5      5        5   
   -   5        $	 New��5      5       � 	Resources 5         Context_menu_row m� Command)  #System.Windows.Controls.DataGridRow �� 
TargetType �� Property �� Value �� Color��%  &	        '  M    7   (�� �    5       * SystemColors.HighlightBrushKey+)�� 5   
   .@�5      m� -   5        $'��!Служебная записка��5      5      m� 5      -   5        $'��!Дерево дефектации��5      5      m� 5      -   5        $��Цеха��5      5      m� 5      $#��Добавить строку��6   $	 New��5      5      �� 5   
   "  6   .�5      ��  �@�ContextMenu8   5      5      �� 5    
   $ 
Aquamarine��5!      5"      .��5#      � 	 � RowDefinitions	 5$   
   �� 5%      $��25 �6   �� 5&      .+�5(   
   o� -   5        
 o�Name$

 menu��5(      .@�5)      m� $#��Добавить строку��6   $	 New��5*      $��14(�5+      m� 5,      -   5        $#��Контроль сроков��5,      $��14(�5.      m� 5/      $��Сохранить��6   $
 Save��50      $��14(�51      m� 52      -	   5        $��Справочники��52      $��14(�54      55      &   System.Windows.Controls.DataGrid  56   
   -
   5          Name$ 
main_table��57      $��1��56         AutoGenerateColumns .     CanUserDeleteRows .    CanUserAddRows .  $��14(�5<         Columns 5=      0  *System.Windows.Controls.DataGridTextColumn  5>      ,  &System.Windows.Controls.DataGridColumn   Header$ Заявка��6%      
IsReadOnly .    
Foreground
 �   �   Width5  /System.Windows.Controls.DataGridLengthConverter$ 2* 5B   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5?   %   �� *Nom_sz_view+   HeaderStyle 5C      �� 5D      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    .�5E      ��  � ��$ Center=�5F   )   5G      5I        5J      $ Приоритет��6%   
 �   � . $ 2* 5N   %    5K   %   �� *Prior+ 5O      �� 5P      "  6    .�5Q      ��  � ��$ Center=�5R   )   5S      5U        5V      $ Изделие��6%   
 �   �$ 2* 5Y   %    5W   %   �� *	Ser_nom+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� 5Z      �� 5[      "  6    .�5\      ��  � ��$ Center=�5]   )   5^      5`        5a      $! Воинская часть��6%   
 �   �$ 6* 5d   %    5b   %   �� *
Voin_chast+$ TwoWay=�$ PropertyChanged=� 5e      �� 5f      "  6    .�5g      ��  � ��$ Center=�5h   )   5i      5k        5l      $ 
Заказ��6%   
 �   �$ 2* 5o   %    5m   %   �� *	Nom_zak+$ TwoWay=�$ PropertyChanged=� 5p      �� 5q      "  6    .�5r      ��  � ��$ Center=�5s   )   5t      5v      4	  .System.Windows.Controls.DataGridTemplateColumn	  5w      $ 4* 6)    5x      �� 5y      "  6    .�5z      ��  � ��$ Center=�5{   )   �� 5|       � �� 5}   "   �� 5~   &   .R�5   *   �� $
��Wrap=�64   $+��%Срок восстановления��6H   5�   '   5�      5�       	  CellTemplate 5�      �� 5�      .R�5�      (
  "System.Windows.Controls.DatePicker
  
���   � 
  Text 6)   �� *
Srok_rem+$ TwoWay=�$ PropertyChanged=�5�   )   5�      5�        5�      
 �   � . $ 3* 5�   %    5�   %   �� *Kards+ 5�      �� 5�      "  6    .�5�      ��  � ��$ Center=�5�   )   �� 5�       � �� 5�   "   �� 5�   &   .R�5�   *   �� $
��Wrap=�64   $A��;Количество карт Всего/Выполнено��6H   5�   '   5�      5�      5�      5�      5�      5�      
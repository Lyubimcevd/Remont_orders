   M S B A M L   `   `   `  ����O  KCards_of_defectation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Cards_of_defectation.WindowsCards_of_defectation.Windows  5   	   0    *Cards_of_defectation.Windows.SlugebZapiska   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:Cards_of_defectation.Windows     5   	   -   5          � Title$  SlugebZapiska��5   	    J� CommandBindings 5
      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$
 Save��5      5        5   
   -   5        $ Print��5      5       � 	Resources 5       �� Color��%[   (��       5      * SystemColors.HighlightBrushKey+)�� 6
   $ 
Aquamarine��5      5      .��5      � -   5         �Name$ 	main_grid��5       � RowDefinitions 5   
   �� 5      $��25 �6   �� 5      $
��Auto �6   �� 5      �� 5      $��75 �6   .+�5   
   o� -   5         o�Name$
 menu��5      ���	#FFCECECE.@�5      m� $��Сохранить��6    m� Command$
 Save��5      $��25��5       m� 5!      $��Печать��6   $ Print��5"      $��25��5#      5$      � 5%   
   -   5        $	 Cap��5%      $��1��6   	 � ColumnDefinitions	 5&      �� 5'      $	��110 �6#   �� 5(      $	��300 �6#   �� 5)       5+      �� 5,      $��25 �6    �� 5-      $��25 �6    �� 5.      $��25 �6    �� 5/      $��25 �6    �� 50      $��25 �6    �� 51      $��25 �6    .+�53      �� $��Контракт��6   $��14(�54      $
��Bold"�55      $��Center=�56      �� 57      -   5        $��1��57      
 �� 
IsEditable
 .  �� IsTextSearchEnabled .  $��14(�5>       �� IsDropDownOpen 59      �� *IsDropDownKontract+ �� Text 5:      �� *Text_for_filter_kontract+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=���5;      �� *Kontract_list+ �� SelectedItem 5<      �� *SelectedKontract+$ TwoWay=�$ PropertyChanged=�5@      �� 5A      $��Номер станции��6   $��1��5B      $��14(�5C      $
��Bold"�5D      $��Center=�5E      �� 5F      -   5        $��1��5F      $��1��5G      
 .  .  $��14(�5N       5I      �� *IsDropDownSer_nom+ 5J      �� *Text_for_filter_ser_nom+$ TwoWay=�$ PropertyChanged=���5K      �� *Ser_nom_list+ 5L      �� *SelectedSer_nom+$ TwoWay=�$ PropertyChanged=�5O      �� 5P      $��2��5Q      $��2��5R      $��14(�5S      $
��Bold"�5T      $��Center=�5U      ��5P      �� *	Izdelie+ �� StringFormat$ Изделие {0}��5U      �� 5V      $!��Воинская часть��6   $��3��5W      $��14(�5X      $
��Bold"�5Y      $��Center=�5Z      �� 5[      $��3��6   $��1��5\      $��14(�5^      $
��Bold"�5_      ��5]      �� *
Voin_chast+$ TwoWay=�$ PropertyChanged=�5_      �� 5`      $��№ заказа��6   $��4��5a      $��14(�5b      $
��Bold"�5c      $��Center=�5d      �� 5e      $��4��6   $��1��5f      $��14(�5h      $
��Bold"�5i      ��5g      �� *	Nom_zak+$ TwoWay=�$ PropertyChanged=�5i      �� 5j      $��Срок отправки��6   $��5��5k      $��14(�5l      $
��Bold"�5m      $��Center=�5n      (  "System.Windows.Controls.DatePicker  5o      $��5��6   $��1��5p      $	��120��5q      $
��Left=�5r   g      Text 6   �� *Srok_otprav+$ TwoWay=�$ PropertyChanged=�6g   �� 5s      $��Примечание: ��6   $��2��5t      $��14(�5u      $
��Bold"�5v      $��Center=�5w      �� 5x      $��2��6   $��5��5y      $��1��5z      $��12(�5|      ��5{      �� *Proizv_chast+$ TwoWay=�$ PropertyChanged=�5|      5}      �� 5~   
   $��2��6   $
��Auto=�5      .��5�      �  5�      �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   �� 5�      $
��Auto �6$   .+�5�      �  5�      �� 5�      $��25 �6(   �� 5�      .+�5�      �� $��Изготовить��6    $��14(�5�       $
��Bold"�5�       &   System.Windows.Controls.DataGrid  5�      -	   5          Name$ table_izgot��5�      $��1��5�         AutoGenerateColumns .  $	��Top=�5�         CanUserAddRows .     CanUserDeleteRows . ��5�      �� *Izgot+ J� InputBindings 5�      �� 5�      
 �� Key$ Enter��6)    �� Command 65   �� *
NewExecute+   Columns 5�      4  .System.Windows.Controls.DataGridTemplateColumn  5�      ,  &System.Windows.Controls.DataGridColumn   Header$ Чертёж��65      Width5  /System.Windows.Controls.DataGridLengthConverter$	 150 5�   5      HeaderStyle 5�   "   �� 5�   &    �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6,   .�5�   *   ��  �� Property � ��  �� Value$  Center=�5�   1   5�   '   !   CellTemplate! 5�   "   �� 5�   &   .R�5�   *   �� -
   5        
 .  .  
���   � 5�   3   �� *IsDropDownCherch+ 5�   3   �� *Text_for_filter_cherch+$ TwoWay=�$ PropertyChanged=���5�   3   �� *Cherch_list+ 5�   3   �� *SelectedCherch+$ TwoWay=�$ PropertyChanged=���5�   3   �� *Color+5�   3   5�   '   5�        5�      $ Наименование��65   $	 250 5�   5    5�   "   �� 5�   &   "  6,   .�5�   *   ��  � ��$  Center=�5�   1   5�   '   ! 5�   "   �� 5�   &   .R�5�   *   �� -   5        
 .  .  
���   � 5�   3   �� *IsDropDownNaim+ 5�   3   �� *Text_for_filter_naim+$ TwoWay=�$ PropertyChanged=���5�   3   �� *	Naim_list+ 5�   3   �� *SelectedNaim+$ TwoWay=�$ PropertyChanged=���5�   3   �� *Color+5�   3   5�   '   5�      0  *System.Windows.Controls.DataGridTextColumn  5�      $ Количество��61   1	  +System.Windows.Controls.DataGridBoundColumn" 	  Binding" 5�   1   �� *Kolvo+$ TwoWay=�$ PropertyChanged=�# 	  ElementStyle# 5�   "   �� 5�   &   " ��6,   .�5�   *   ��  � ��  5�   1   �� *
ColorKolvo+5�   '   5�        5�      $ Примечание��61   $ * 5�   1   $   
Foreground
$ �   �" 5�   1   �� *Prim+$ TwoWay=�$ PropertyChanged=� 5�   "   �� 5�   &   "  6,   .�5�   *   ��  � ��$  Center=�5�   1   5�   '   5�      5�      5�      � 5�      $��1��6    5�      �� 5�      $��25 �6(   �� 5�      .+�5�      �� $$��Отремонтировать��6    $��14(�5�       $
��Bold"�5�         5�      -   5        $ table_remont��5�      $��1��5�       .  $	��Top=�5�       .   . ��5�      �� *Remont+ 5�        5�      $ Чертёж��65   $	 150 5�   5    5�   "   �� 5�   &   "  6,   .�5�   *   ��  � ��$  Center=�5�   1   5�   '   ! 5�   "   �� 5�   &   .R�5�   *   �� -   5        
 .  .  
���   � 5�   3   �� *IsDropDownCherch+ 5�   3   �� *Text_for_filter_cherch+$ TwoWay=�$ PropertyChanged=���5�   3   �� *Cherch_list+ 5�   3   �� *SelectedCherch+$ TwoWay=�$ PropertyChanged=���5   3   �� *Color+5  3   5  '   5       5     $ Наименование��65   $	 250 5  5    5  "   �� 5  &   "  6,   .�5	  *   ��  � ��$  Center=�5
  1   5  '   ! 5  "   �� 5  &   .R�5  *   �� -   5        
 .  .  
���   � 5  3   �� *IsDropDownNaim+ 5  3   �� *Text_for_filter_naim+$ TwoWay=�$ PropertyChanged=���5  3   �� *	Naim_list+ 5  3   �� *SelectedNaim+$ TwoWay=�$ PropertyChanged=���5  3   �� *Color+5  3   5  '   5       5     $ Количество��61   " 5  1   �� *Kolvo+$ TwoWay=�$ PropertyChanged=�# 5  "   �� 5  &   " ��6,   .�5  *   ��  � ��  5   1   �� *
ColorKolvo+5!  '   5#       5$     $ Примечание��61   $ * 5&  1   
$ �   �" 5%  1   �� *Prim+$ TwoWay=�$ PropertyChanged=� 5(  "   �� 5)  &   "  6,   .�5*  *   ��  � ��$  Center=�5+  1   5,  '   5.     50     51     � 52     $��2��6    53     �� 54     $��25 �6(   �� 55     .+�57     �� $��Приобрести��6    $��14(�62   $
��Bold"�58        59     -   5        $ table_priobr��5?     $��1��59      .  $	��Top=�5;      .   . ��5<     �� *Priobr+ 5A       5B     $ Н/номер��65   $	 150 5C  5    5D  "   �� 5E  &   "  6,   .�5F  *   ��  � ��$  Center=�5G  1   5H  '   ! 5J  "   �� 5K  &   .R�5L  *   �� -   5        
 .  .  
���   � 5M  3   �� *IsDropDownNNomer+ 5N  3   �� *Text_for_filter_n_nomer+$ TwoWay=�$ PropertyChanged=���5O  3   �� *N_nomer_list+ 5P  3   �� *SelectedN_nomer+$ TwoWay=�$ PropertyChanged=���5S  3   �� *Color+5T  3   5U  '   5W       5X     $  Чертёж,ТУ,ГОСТ��65   $	 150 5Y  5    5Z  "   �� 5[  &   "  6,   .�5\  *   ��  � ��$  Center=�5]  1   5^  '   ! 5`  "   �� 5a  &   .R�5b  *   �� -   5        
 .  .  
���   � 5c  3   �� *IsDropDownCherch+ 5d  3   �� *Text_for_filter_cherch+$ TwoWay=�$ PropertyChanged=���5e  3   �� *Cherch_list+ 5f  3   �� *SelectedCherch+$ TwoWay=�$ PropertyChanged=���5i  3   �� *Color+5j  3   5k  '   5m       5n     $ Наименование��65   $	 250 5o  5    5p  "   �� 5q  &   "  6,   .�5r  *   ��  � ��$  Center=�5s  1   5t  '   ! 5v  "   �� 5w  &   .R�5x  *   �� -   5        
 .  .  
���   � 5y  3   �� *IsDropDownNaim+ 5z  3   �� *Text_for_filter_naim+$ TwoWay=�$ PropertyChanged=���5{  3   �� *	Naim_list+ 5|  3   �� *SelectedNaim+$ TwoWay=�$ PropertyChanged=���5  3   �� *Color+5�  3   5�  '   5�       5�     $ Количество��61   " 5�  1   �� *Kolvo+$ TwoWay=�$ PropertyChanged=�# 5�  "   �� 5�  &   " ��6,   .�5�  *   ��  � ��  5�  1   �� *
ColorKolvo+5�  '   5�       5�     $ Примечание��61   $ * 5�  1   
$ �   �" 5�  1   �� *Prim+$ TwoWay=�$ PropertyChanged=� 5�  "   �� 5�  &   "  6,   .�5�  *   ��  � ��$  Center=�5�  1   5�  '   5�     5�     5�     � 5�     $��3��6    5�     �� 5�     $��25 �6(   �� 5�     .+�5�     �� $%��Сторонний ремонт��6    $��14(�5�      $
��Bold"�5�        5�     -   5        $ table_stor_rem��5�     $��1��5�      .  $	��Top=�5�      .   . ��5�     �� *
Stor_rem+ 5�       5�     $ Чертёж��65   $	 150 5�  5    5�  "   �� 5�  &   "  6,   .�5�  *   ��  � ��$  Center=�5�  1   5�  '   ! 5�  "   �� 5�  &   .R�5�  *   �� -   5        
 .  .  
���   � 5�  3   �� *IsDropDownCherch+ 5�  3   �� *Text_for_filter_cherch+$ TwoWay=�$ PropertyChanged=���5�  3   �� *Cherch_list+ 5�  3   �� *SelectedCherch+$ TwoWay=�$ PropertyChanged=���5�  3   �� *Color+5�  3   5�  '   5�       5�     $ Наименование��65   $	 250 5�  5    5�  "   �� 5�  &   "  6,   .�5�  *   ��  � ��$  Center=�5�  1   5�  '   ! 5�  "   �� 5�  &   .R�5�  *   �� -   5        
 .  .  
���   � 5�  3   �� *IsDropDownNaim+ 5�  3   �� *Text_for_filter_naim+$ TwoWay=�$ PropertyChanged=���5�  3   �� *	Naim_list+ 5�  3   �� *SelectedNaim+$ TwoWay=�$ PropertyChanged=���5�  3   �� *Color+5�  3   5�  '   5�       5�     $ Количество��61   " 5�  1   �� *Kolvo+$ TwoWay=�$ PropertyChanged=�# 5�  "   �� 5�  &   " ��6,   .�5�  *   ��  � ��  5�  1   �� *
ColorKolvo+5�  '   5�       5�     $) #Завод-изготовитель��65    5�  "   �� 5�  &   "  6,   .�5�  *   ��  � ��$  Center=�5�  1   5�  '   ! 5�  "   �� 5�  &   .R�5�  *   �� -   5        
 .  .  
���   � 5�  3   �� *IsDropDownIzgotov+ 5�  3   �� *Text_for_filter_izgotov+$ TwoWay=�$ PropertyChanged=���5�  3   �� *Izgotov_list+ 5�  3   �� *SelectedIzgotov+$ TwoWay=�$ PropertyChanged=�5�  3   5�  '   5�       5�     $ Примечание��61   $ * 5�  1   
$ �   �" 5�  1   �� *Prim+$ TwoWay=�$ PropertyChanged=� 5�  "   �� 5�  &   "  6,   .�5�  *   ��  � ��$  Center=�5�  1   5�  '   5�     5     5     5     5     � 5  
   $��3��6    5     �� 5     �� 5     $��50 �6    .+�5
     �� $��Примечания��6   $
��Bold"�5     $��14(�5     �� 5     $��1��6   $��12(�5     ��5     �� *	Last_prim+$ TwoWay=�$ PropertyChanged=�5     5     5     5     
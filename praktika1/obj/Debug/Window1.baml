   M S B A M L   `   `   `  ����D  @praktika1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:praktika1	praktika1  5   	       praktika1.Window1   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:praktika1     5   	     � Title$  Window1��5   	   $	��450��6   $	��800��6&   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  $��10,38,10,255q�6>     5   
   -   5          Name$ dtg_contract��5         AutoGenerateColumns .  $��10,31,10,372q�6F      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 
IdContract��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5   "   ��  �� Path$ 
IdContract�6H     5      $ IdClient��6%    5   "   �� $ IdClient�6F     5      $ AmountInsurance��6%    5   "   �� $ AmountInsurance� �� StringFormat$ 
{0} руб��6d     5      $ IdBranch��6%    5   "   �� $ Idranch�6E     5      $ 
IdEmployee��6%    5   "   �� $ 
IdEmployee�6H     5      $ PeriodOfInsurance��6%    5   "   �� $ PeriodOfInsurance�$ {0:dd.MM.yy}��6k     5      $ 	IdPayment��6%    5   "   �� $ 	IdPayment�6G   5      �� 5   
   -   5         ��Name$ btn_add��5      $��Добавить��6"   $
��Left=�65   $��
16,207,0,0q�6P   $	��Top=�6d   $��55��6|   $	��111��6�   6�   �� 5   
   -   5        $ 
btn_delete��5      $��Удалить��6%   $
��Left=�67   $��
16,274,0,0q�6R   $	��Top=�6f   $��55��6~   $	��112��6�   6�   �� 5   
   -   5        $ btn_red��5      $��Изменить��6"   $
��Left=�65   $��
16,342,0,0q�6P   $	��Top=�6d   $	��111��6|   $��55��6�   6�   �� 5    
   -   5        	 ��Name$	 tb_IdClienta��5       $
��Left=�6(   $��23��6C   $��157,207,0,0q�6O   
 �� TextWrapping$

 Wrap=�6d   $�� ��6x   $	��Top=�6�   $	��120��6�   �� 5!   
   $��Id Клиента��6   $
��Left=�6%   $��191,184,0,0q�6@   $	��Top=�6U   �� 5"   
   -   5        $	 tb_IdBranch��5"      $
��Left=�6'   $��23��6B   $��157,274,0,0q�6N   $

 Wrap=�6c   $�� ��6w   $	��Top=�6   $	��120��6�   �� 5#   
   -   5        $	 tb_PeriodOfInsurance��5#      $
��Left=�60   $��23��6K   $��157,342,0,0q�6W   $

 Wrap=�6l   $�� ��6�   $	��Top=�6�   $	��120��6�   �� 5$   
   -   5        $	 tb_AmountInsurance��5$      $
��Left=�6.   $��23��6I   $��401,207,0,0q�6U   $

 Wrap=�6j   $�� ��6~   $	��Top=�6�   $	��120��6�   �� 5%   
   -	   5        $	 tb_IdEmployee��5%      $
��Left=�6)   $��23��6D   $��401,274,0,0q�6P   $

 Wrap=�6e   $�� ��6y   $	��Top=�6�   $	��120��6�   �� 5&   
   -
   5        $	 tb_IdPayment��5&      $
��Left=�6(   $��23��6C   $��401,342,0,0q�6O   $

 Wrap=�6d   $�� ��6x   $	��Top=�6�   $	��120��6�   �� 5'   
   $��Id отделения��6   $
��Left=�6'   $��177,252,0,0q�6B   $	��Top=�6W   �� 5(   
   $)��#Период страхования��6   $
��Left=�6-   $��155,316,0,0q�6H   $	��Top=�6]   �� 5)   
   $%��Размер страховки��6   $
��Left=�6+   $��407,184,0,0q�6F   $	��Top=�6[   �� 5*   
   $��Id сотрудника��6   $
��Left=�6(   $��423,244,0,0q�6C   $	��Top=�6X   �� 5+   
   $��Id оплаты��6   $
��Left=�6$   $��435,311,0,0q�6?   $	��Top=�6T   5,      5-      
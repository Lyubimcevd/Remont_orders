﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Cards_of_defectation.Classes;
using System.Collections.ObjectModel;
using System.Data;
using Cards_of_defectation.ViewModal;

namespace Cards_of_defectation.Windows
{
    public partial class Defect_map : Window
    {
        ObservableCollection<RowDefectViewModal> Rows;
        RowDefectViewModal Header;
        int Id;
        bool IsSave = true;
        List<object> arm_search_list;

        public Defect_map(int pid)
        {
            InitializeComponent();
            Id = pid;

            Header = Converter.ToViewModal(Server.GetServer.DataBase("uit")
                .Table("select * from rz_kart_defect where id = " + Id).LoadFromServer() as List<Row_in_kart_defect>)[0];
            cap.DataContext = Header;
            if (Header.Par == 0)
                Rows = Converter.ToViewModal(Server.GetServer.DataBase("uit")
                    .Table("select * from rz_kart_defect where par = " + Id + " and spos_ustr = "
                    + References.GetReferences.GetId("rz_spos_ustr", "Дефектация"))
                    .LoadFromServer() as List<Row_in_kart_defect>);
            else
                Rows = Converter.ToViewModal(Server.GetServer.DataBase("uit")
                    .Table("select * from rz_kart_defect where par = " + Id).LoadFromServer() as List<Row_in_kart_defect>);
            main_table.ItemsSource = Rows;
            listBox_sostav.ItemsSource = References.GetReferences.InitComposition(Header);
        }

        private void CommandBinding_Save(object sender, ExecutedRoutedEventArgs e)
        {
            if (Header.Par != 0) Server.GetServer.DataBase("uit").Table("select * from rz_kart_defect where par = " + Id)
                .UpdateServerData(Converter.ToSave(Rows));
            else Server.GetServer.DataBase("uit").Table("select * from rz_kart_defect where par = " 
                + Id+ " and spos_ustr = "+References.GetReferences.GetId("rz_spos_ustr","Дефектация"))
               .UpdateServerData(Converter.ToSave(Rows));
            ObservableCollection<RowDefectViewModal> tmp = new ObservableCollection<RowDefectViewModal>();
            Header.Data_def = DateTime.Now.ToShortDateString();
            tmp.Add(Header);
            Server.GetServer.DataBase("uit").Table("select * from rz_kart_defect where id = " + Id)
                .UpdateServerData(Converter.ToSave(tmp));
            MessageBox.Show("Сохранено");
            IsSave = true;
        }

        private void CommandBinding_Print(object sender, ExecutedRoutedEventArgs e)
        {
            if (Header.Nom_zak.ToString().Length == 8) Print.Init().PrintDocument(Header,Rows);
            else MessageBox.Show("Номер заказа введён неверно","Ошибка");
        }

        private void main_table_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Delete)
            {
                if (MessageBox.Show("Подтвердите удаление", "Предупреждение", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                {
                    List<RowDefectViewModal> for_delete = new List<RowDefectViewModal>();
                    foreach (RowDefectViewModal row in main_table.SelectedItems)
                    {
                        List<object> tmp = Server.GetServer.DataBase("uit")
                            .ExecuteCommand("select id from rz_kart_defect where par = " + row.Id);
                        if (tmp.Count != 0) for_delete.Add(row);
                    }
                    if (for_delete.Count > 0)
                        if (for_delete.Count == 1)
                        {
                            if (MessageBox.Show("Деталь " + for_delete.First().Cherch + " дефектирована. Продолжить?", "Предупреждение", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                                DeleteRecurs((main_table.SelectedItem as RowDefectViewModal).Id);
                            else
                            {
                                e.Handled = true;
                                return;
                            }
                        }
                        else
                        {
                            string details = "";
                            foreach (RowDefectViewModal row in for_delete) details += "," + row.Cherch;
                            details = details.Substring(1);
                            if (MessageBox.Show("Детали " + details + " дефектированы. Продолжить?", "Предупреждение", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                                foreach (RowDefectViewModal row in for_delete) DeleteRecurs(row.Id);
                            else
                            {
                                e.Handled = true;
                                return;
                            }
                        }
                    IsSave = false;
                }
                else e.Handled = true;
            }
        }

        void DeleteRecurs(int pid)
        {
            List<object> tmp = Server.GetServer.DataBase("uit")
                .ExecuteCommand("select id from rz_kart_defect where par=" + pid);
            foreach (int id in tmp) DeleteRecurs(id);
            Server.GetServer.DataBase("uit").ExecuteCommand("delete from rz_kart_defect where id=" + pid);
        }

        #region ComboBox_SelectionChanged

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            foreach (RowDefectViewModal row in main_table.SelectedItems) row.Opis_def = (sender as ComboBox).Text;
        }

        private void ComboBox_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {
            foreach (RowDefectViewModal row in main_table.SelectedItems) row.Prichina = (sender as ComboBox).Text;
        }

        private void ComboBox_SelectionChanged_2(object sender, SelectionChangedEventArgs e)
        {
            foreach (RowDefectViewModal row in main_table.SelectedItems) row.Met_opr = (sender as ComboBox).Text;
        }

        private void ComboBox_SelectionChanged_3(object sender, SelectionChangedEventArgs e)
        {
            foreach (RowDefectViewModal row in main_table.SelectedItems) row.Teh_treb = (sender as ComboBox).Text;
        }

        private void ComboBox_SelectionChanged_4(object sender, SelectionChangedEventArgs e)
        {
            foreach (RowDefectViewModal row in main_table.SelectedItems) row.Spos_ustr = (sender as ComboBox).Text;
        }

        private void ComboBox_SelectionChanged_5(object sender, SelectionChangedEventArgs e)
        {
            foreach (RowDefectViewModal row in main_table.SelectedItems) row.Nom_ceh = (sender as ComboBox).SelectedIndex;
        }
        
        #endregion

        private void arm_search_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if ((sender as ComboBox).SelectedItem!=null)
                listBox_arm.ItemsSource = References.GetReferences.SearchAndLoad(Header, (sender as ComboBox).SelectedItem.ToString());
        }

        private void ComboBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            arm_search_list = Server.GetServer.DataBase("uit")
                        .ExecuteCommand("select distinct top 50 Ltrim(rtrim(nc)) from table_nc1 where ltrim(nc) like '"
                                        + (sender as ComboBox).Text + "%'");
            arm_search.ItemsSource = arm_search_list;
            arm_search.IsDropDownOpen = true;
            var tb = (TextBox)e.OriginalSource;
            tb.Select(tb.SelectionStart + tb.SelectionLength, 0);
        }

        private void window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            foreach (RowDefectViewModal row in Rows)
                if (row.IsChange)
                {
                    IsSave = false;
                    break;
                }
            if (!IsSave)
            {
                MessageBoxResult result = MessageBox.Show("Карта не сохранена. Сохранить?", "Предупреждение", MessageBoxButton.YesNoCancel);
                if (result == MessageBoxResult.Yes) CommandBinding_Save(null, null);
                if (result == MessageBoxResult.Cancel) e.Cancel = true;
            }
        }

        private void Save_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = !IsSave;
        }

        private void listBox_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ClickCount == 2)
            {
                RowDefectViewModal tmp = (sender as ListBox).SelectedItem as RowDefectViewModal;
                if (Rows.FirstOrDefault(x => x.Cherch == tmp.Cherch) != null) Rows.Add(new RowDefectViewModal(tmp));
                else Rows.Add(tmp);
                IsSave = false;
            }
        }
    }
}

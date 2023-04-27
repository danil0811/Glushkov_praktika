using praktika1.pod;
using System;
using System.Collections.Generic;
using System.Data.Entity;
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

namespace praktika1
{
    /// <summary>
    /// Логика взаимодействия для Window1.xaml
    /// </summary>
    public partial class Window1 : Window
    {
        strahovyaKompaniya db = Helper.GetContext();
        public Window1()
        {
            InitializeComponent();
            var zapros = db.Contract;
            dtg_contract.ItemsSource = zapros.ToList();
        }

        private void btn_add_Click(object sender, RoutedEventArgs e)
        {
            if ((tb_IdClienta.Text.Equals("")) || (tb_AmountInsurance.Text.Equals("")) || (tb_IdBranch.Text.Equals("")) || (tb_IdEmployee.Text.Equals("")) || (tb_PeriodOfInsurance.Text.Equals("")) || (tb_PeriodOfInsurance.Text.Equals("")) || (tb_IdPayment.Text.Equals("")))
            {
                MessageBox.Show("Введите данные");
            }
            else
            {
                Contract newcontract = new Contract();
                newcontract.IdClient = int.Parse(tb_IdClienta.Text);
                newcontract.AmountInsurance = int.Parse(tb_AmountInsurance.Text);
                newcontract.IdBranch = int.Parse(tb_IdBranch.Text);
                newcontract.IdEmployee = int.Parse(tb_IdEmployee.Text);
                DateTime time = DateTime.Parse(tb_PeriodOfInsurance.Text.ToString());
                newcontract.PeriodOfInsurance = time;
                newcontract.IdPayment = int.Parse(tb_IdPayment.Text);
                Create(newcontract);
            }
        }

        private void btn_delete_Click(object sender, RoutedEventArgs e)
        {
            Contract item = dtg_contract.SelectedItem as Contract;

            if (item != null)
            {
                db.Entry(item).State = EntityState.Modified;
                db.SaveChanges();
                refresh();
            }
        }

        private void btn_red_Click(object sender, RoutedEventArgs e)
        {
            Contract item = dtg_contract.SelectedItem as Contract;

            if (item != null)
            {
                DbSet<Contract> items = db.Contract;
                items.Remove(item);
                db.SaveChanges();
                refresh();
            }
        }
        public void refresh()
        {
            InitializeComponent();
            var zapros = db.Contract;
            dtg_contract.ItemsSource = zapros.ToList();
        }

        public void Create(Contract contract)
        {
            db.Contract.Add(contract);
            db.SaveChanges();
            refresh();
        }
    }
}

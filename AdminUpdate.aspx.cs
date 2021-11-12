using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class AdminUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            DataRow dataRow = fullDs.Customer.NewRow();
            for (int i = 0; i < dataRow.ItemArray.Length; i++)
                dataRow[i] = GridView1.SelectedRow.Cells[i].Text;
            updateTextBox(nameTextBox, dataRow[3].ToString());
            updateTextBox(surnameTextBox, dataRow[2].ToString());
            updateTextBox(idTextBox, dataRow[4].ToString());
            updateTextBox(cellTextBox, dataRow[5].ToString());
            updateTextBox(streetTextBox, dataRow[6].ToString());
            updateTextBox(surbubNameTextBox, dataRow[7].ToString());
            updateTextBox(cityTextBox, dataRow[8].ToString());
            updateTextBox(postalTextBox, dataRow[9].ToString());
        }
        private void updateTextBox(TextBox t , string s)
        {
            t.Text = s;
        }
        private bool isLetter(char c)
        {
            if (c >= 'a' && c <= 'z')
                return true;
            return false;
        }
        private bool isAllLetters(string s)
        {
            s = s.ToLower();
            for (int i = 0; i < s.Length; i++)
            {
                if (!isLetter(s[i]))
                    return false;
            }
            return true;
        }
        private bool nameIsValid()
        {
            int count = 0;
            if (!isAllLetters(nameTextBox.Text) || nameTextBox.Text.Length < 3)
            {
                nameTextBox.BackColor = System.Drawing.Color.Red;
                count++;
            }
            if (!isAllLetters(surnameTextBox.Text) || surnameTextBox.Text.Length < 3)
            {
                surnameTextBox.BackColor = System.Drawing.Color.Red;
                count++;
            }
            return count == 0;
        }
        private bool isValid()
        {
            return true;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(isValid())
            {
                FullDataSet fullDs = new FullDataSet();
                FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
                taCustomer.Fill(fullDs.Customer);
                for (int i = 0; i < fullDs.Customer.Rows.Count; i++)
                {
                    if (fullDs.Customer[i].emailID.Equals(GridView1.SelectedRow.Cells[1].Text, StringComparison.OrdinalIgnoreCase))
                    {
                        fullDs.Customer[i].name = nameTextBox.Text;
                        nameTextBox.Text = "";
                        fullDs.Customer[i].surname = surnameTextBox.Text;
                        surnameTextBox.Text = "";
                        fullDs.Customer[i].idNumber = idTextBox.Text;
                        idTextBox.Text = "";
                        fullDs.Customer[i].cellNumber = cellTextBox.Text;
                        cellTextBox.Text = "";
                        fullDs.Customer[i].streetName = streetTextBox.Text;
                        streetTextBox.Text = "";
                        fullDs.Customer[i].suburb = surbubNameTextBox.Text;
                        surbubNameTextBox.Text = "";
                        fullDs.Customer[i].city = cityTextBox.Text;
                        cityTextBox.Text = "";
                        fullDs.Customer[i].postalCode = postalTextBox.Text;
                        postalTextBox.Text = "";
                        break;
                    }
                }
                taCustomer.Update(fullDs.Customer);
                taCustomer.Fill(fullDs.Customer);
                GridView1.DataBind();
            }
        }

        protected void adminTextBox_TextChanged(object sender, EventArgs e)
        {
            string a = "";
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.FillBy(fullDs.Customer, adminTextBox.Text);
            taCustomer.Update(fullDs.Customer);
            GridView1.DataBind();
            //customerDataGridView.ClearSelection();
        }
    }
}
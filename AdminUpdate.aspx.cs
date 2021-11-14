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
            GridView2.Visible = true;
            GridView1.Visible = false;

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            colorBoxes();
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            DataRow dataRow = fullDs.Customer.NewRow();
            for (int i = 0; i < dataRow.ItemArray.Length; i++)
                dataRow[i] = GridView1.SelectedRow.Cells[i].Text;
            updateTextBox(nameTextBox, dataRow[2].ToString());
            updateTextBox(surnameTextBox, dataRow[3].ToString());
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
        private bool isDigit(char ch)
        {
            if (ch >= '0' && ch <= '9')
                return true;
            return false;
        }
        private bool isAllDigit(string s)
        {
            for (int i = 0; i < s.Length; i++)
            {
                if (!isDigit(s[i]))
                    return false;
            }
            return true;
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
        private bool AddrressIsValid()
        {
            if (!isAllDigit(postalTextBox.Text) || postalTextBox.Text.Length != 4)
            {
                postalTextBox.BackColor = System.Drawing.Color.Red;
                return false;
            }
            return true;
        }
        private bool IdIsValid()
        {
            if (!isAllDigit(idTextBox.Text) || idTextBox.Text.Length != 13)
            {
                idTextBox.BackColor = System.Drawing.Color.Red;
                return false;
            }
            return true;
        }
        private bool CellNumberisValid()
        {
            if (!isAllDigit(cellTextBox.Text) || cellTextBox.Text.Length != 10)
            {
                cellTextBox.BackColor = System.Drawing.Color.Red;
                return false;
            }
            return true;
        }
        private bool isValid()
        {
            int count = 0;
            if (!nameIsValid())
                count++;
            if (!AddrressIsValid())
                count++;
            if (!CellNumberisValid())
                count++;
            if (!IdIsValid())
                count ++;
            return count == 0;
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
        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void nameTextBox_TextChanged(object sender, EventArgs e)
        {
            nameTextBox.BackColor = System.Drawing.Color.White;
        }

        protected void surnameTextBox_TextChanged(object sender, EventArgs e)
        {
            surnameTextBox.BackColor = System.Drawing.Color.White;
        }
        private void colorBoxes()
        {
            nameTextBox.BackColor = System.Drawing.Color.White;
            surnameTextBox.BackColor = System.Drawing.Color.White;
            idTextBox.BackColor = System.Drawing.Color.White;
            cellTextBox.BackColor = System.Drawing.Color.White;
            postalTextBox.BackColor = System.Drawing.Color.White;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView2.Visible = false;
            GridView1.Visible = true;
        }
    }
}
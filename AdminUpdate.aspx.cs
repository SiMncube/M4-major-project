﻿using System;
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
            {
                dataRow[i] = GridView1.SelectedRow.Cells[i].Text;
            }
            updateTextBox(emailTextBox, dataRow[1].ToString());
            updateTextBox(confirmEmailTextBox, dataRow[1].ToString());
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
    }
}
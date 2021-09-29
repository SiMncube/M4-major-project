using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            if(isValid())
            {
                taCustomer.Insert(capFirst(emailTextBox.Text), capFirst(nameTextBox.Text), capFirst(surnameTextBox.Text), idTextBox.Text, cellTextBox.Text, passwordTextBox.Text, capFirst(streetTextBox.Text), capFirst(surbubNameTextBox.Text), capFirst(cityTextBox.Text), postalTextBox.Text);
                Response.Write("<script language='javascript'>window.alert('You have successfully registered');window.location='Default.aspx';</script>");
            }
            
        }
        private string capFirst(string s)
        {
            return (s[0] + "").ToUpper() + s.Substring(1).ToLower();
        }
        private bool isValid()
        {
            return true;
        }
    }
}
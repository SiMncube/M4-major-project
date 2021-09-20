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
            Response.Write("You have successfully registered your account");
        }

        protected void signUpButton_Click(object sender, EventArgs e)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            if(signUpValid())
            {
                taCustomer.Insert(emailTextBox.Text,nameTextBox.Text,surnameTextBox.Text,idTextBox.Text,cellTextBox.Text,passwordTextBox.Text,streetTextBox.Text,surbubNameTextBox.Text,cityTextBox.Text,postalTextBox.Text);
            }
        }
        private bool signUpValid()
        {
            return false;
        }
    }
}
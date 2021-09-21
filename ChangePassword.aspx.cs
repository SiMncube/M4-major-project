using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(inputValid())
            {
                FullDataSet fullDs = new FullDataSet();
                FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
                taCustomer.Fill(fullDs.Customer);
                for (int i = 0; i < fullDs.Customer.Rows.Count; i++)
                {
                    if (fullDs.Customer[i].emailID.Equals(ForgotPassword.email, StringComparison.OrdinalIgnoreCase))
                    {
                        fullDs.Customer[i].password = confirmTextBox.Text;
                        Response.Write("<script language='javascript'>window.alert('Password successfully reset');window.location='~/Default';</script>");
                        break;
                    }
                }
            }
        }
        private bool inputValid()
        {
            if (newTextBox.Text == confirmTextBox.Text)
                return true;
            return false;
        }
    }
}
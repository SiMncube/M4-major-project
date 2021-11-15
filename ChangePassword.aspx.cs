using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Windows;

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
                        taCustomer.Update(fullDs);
                        modalBody.InnerHtml = "<p>Your password is successfully reset. Redirecting you to our homepage....</p>";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
                        //Window.location.href = "Default.aspx";
                        break;
                    }
                }
            }
        }
        protected void CloseBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default");
        }
        private bool inputValid()
        {
            if (newTextBox.Text == confirmTextBox.Text)
                return true;
            return false;
        }
    }
}
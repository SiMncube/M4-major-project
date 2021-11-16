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
                    if (fullDs.Customer[i].emailID.Equals(CurrentReset.getEmailID(), StringComparison.OrdinalIgnoreCase))
                    {
                        fullDs.Customer[i].password = confirmTextBox.Text;
                        taCustomer.Update(fullDs);
                        closeBtn.UseSubmitBehavior = false;
                        modalBody.InnerHtml = "<p>Your password is successfully reset. Redirecting you to our homepage....</p>";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
                        confirmBtn.Enabled = false;
                        break;
                    }
                }
            }
        }
        protected void closeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default");
        }
        private bool inputValid()
        {
            if (PasswordIsValid())
                return true;
            return false;
        }
        private bool PasswordIsValid()
        {
            if (passwordTextBox.Text != confirmTextBox.Text)
            {
                closeBtn.UseSubmitBehavior = true;
                modalBody.InnerHtml = "<p>Your Passoword do not match please try again</p>";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
                return false;
            }
            if (passwordTextBox.Text.Length < 8)
            {
                closeBtn.UseSubmitBehavior = true;
                modalBody.InnerHtml = "<p>Your password is short. Password has to be 8 or more characters</p>";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
                return false;
            }
            return true;
        }
    }
}
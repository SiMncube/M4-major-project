using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class Login : System.Web.UI.Page
    {
        public static int check = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [Obsolete]
        protected void confirmBtn_Click(object sender, EventArgs e)
        {
            if (customerLoginValid())
            {
                CurrentUser.setEmailID(emailTextBox.Text);
                Response.Redirect("/Default");
            }
            else if (adminLoginValid())
            {
                CurrentUser.setEmailID(emailTextBox.Text);
                Response.Redirect("/Admin");
            }
            else
            {
                closeBtn.UseSubmitBehavior = true;
                modalBody.InnerHtml = "<p>Login details are incorrect. Please try again</p>";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
            }
        }
        private bool userNameIsCorrect()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            HtmlAnchor btn1 = (HtmlAnchor)FindControl("setUser");
            for (int i = 0; i < fullDs.Customer.Rows.Count; i++)
            {
                if (fullDs.Customer[i].emailID.Equals(emailTextBox.Text, StringComparison.OrdinalIgnoreCase))
                    return true;
            }
            return false;
        }
        private bool adminNameCorrect()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.StaffTableAdapter taStaff = new FullDataSetTableAdapters.StaffTableAdapter();
            taStaff.Fill(fullDs.Staff);
            for (int i = 0; i < fullDs.Staff.Rows.Count; i++)
            {
                if (fullDs.Staff[i].emailID.Equals(emailTextBox.Text, StringComparison.OrdinalIgnoreCase))
                    return true;
            }
            return false;
        }
        private bool adminPaaswordCorrect()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.StaffTableAdapter taStaff = new FullDataSetTableAdapters.StaffTableAdapter();
            taStaff.Fill(fullDs.Staff);
            for (int i = 0; i < fullDs.Staff.Rows.Count; i++)
            {
                if (fullDs.Staff[i].password == passwordTextBox.Text && fullDs.Staff[i].emailID.Equals(emailTextBox.Text, StringComparison.OrdinalIgnoreCase))
                {
                    return true;
                }
            }
            return false;
        }
        private bool adminLoginValid()
        {
            return adminNameCorrect() && adminPaaswordCorrect();
        }
        private bool userPasswordIsCorrect()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            for (int i = 0; i < fullDs.Customer.Rows.Count; i++)
            {
                if (fullDs.Customer[i].password == passwordTextBox.Text && fullDs.Customer[i].emailID.Equals(emailTextBox.Text, StringComparison.OrdinalIgnoreCase))
                {
                    check = 1;
                    return true;
                }
            }
            return false;
        }
        private bool customerLoginValid()
        {
            return userNameIsCorrect() && userPasswordIsCorrect();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register");
        }
        protected void closeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ResetPasswordOTP");
        }

        protected void resetPasswordBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.Security;
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (loginValid())
            {
                ViewState["CurrentUserEmail"] = TextBox1.Text;
                CurrentUser.setEmailID(TextBox1.Text);
                Response.Redirect("/Default");
            }
            else
            {
                Label3.Visible = true;
                string script = "<script language='javascript'>window.alert('You have entered an invalid email address');window.location='ForgotPassword.aspx';</script>";
                RegisterStartupScript("Button1_ClickScript", script);
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
                if (fullDs.Customer[i].emailID.Equals(TextBox1.Text, StringComparison.OrdinalIgnoreCase))
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
                if (fullDs.Staff[i].emailID.Equals(TextBox1.Text, StringComparison.OrdinalIgnoreCase))
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
                if (fullDs.Staff[i].password == TextBox2.Text && fullDs.Staff[i].emailID.Equals(TextBox1.Text, StringComparison.OrdinalIgnoreCase))
                {
                    check = 2;
                    return true;
                }
            }
            return false;
        }
        private bool userPasswordIsCorrect()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            for (int i = 0; i < fullDs.Customer.Rows.Count; i++)
            {
                if (fullDs.Customer[i].password == TextBox2.Text && fullDs.Customer[i].emailID.Equals(TextBox1.Text, StringComparison.OrdinalIgnoreCase))
                {
                    check = 1;
                    return true;
                }
            }
            return false;
        }
        private bool loginValid()
        {
            return userNameIsCorrect() && userPasswordIsCorrect();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label3.Visible = false;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            Label3.Visible= false;
        }
    }
}
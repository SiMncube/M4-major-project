using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        public static string email = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
                //Label2.Visible = true;
        }
        private bool userExist()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            for (int i = 0; i < fullDs.Customer.Rows.Count; i++)
            {
                if (fullDs.Customer[i].emailID.Equals(emailTextbox.Text, StringComparison.OrdinalIgnoreCase))
                {
                    email = emailTextbox.Text;
                    return true;
                }
            }
            return false;
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (userExist())
                Response.Redirect("~/ChangePassword");
            else
                Response.Write("<script language='javascript'>window.alert('You have entered an invalid email address');window.location='ForgotPassword.aspx';</script>");
        }
    }
}
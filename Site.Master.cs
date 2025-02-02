﻿
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


namespace M4_major_project
{

    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (Login.check == 1)
            {
                HtmlAnchor btn1 = (HtmlAnchor)FindControl("MakeBooking1");
                btn1.Visible = true;
                HtmlAnchor btn2 = (HtmlAnchor)FindControl("ModifyBooking1");
                btn2.Visible = true;
                HtmlAnchor btn3 = (HtmlAnchor)FindControl("CancelBooking1");
                btn3.Visible = true;
                HtmlAnchor btn4 = (HtmlAnchor)FindControl("Login1");
                btn4.Visible = false;
                HtmlAnchor btn5 = (HtmlAnchor)FindControl("Register1");
                btn5.Visible = false;
                HtmlAnchor btn6 = (HtmlAnchor)FindControl("Username1");
                btn6.Visible = true;
                setUser.InnerText = currentUserName(); 
                HtmlAnchor btn7 = (HtmlAnchor)FindControl("Logoff1");
                btn7.Visible = true;
                ViewBooking1.Visible = true;
            }
            if(Login.check == 0)
            {
                HtmlAnchor btn1 = (HtmlAnchor)FindControl("MakeBooking1");
                btn1.Visible = false;
                HtmlAnchor btn2 = (HtmlAnchor)FindControl("ModifyBooking1");
                btn2.Visible = false;
                HtmlAnchor btn3 = (HtmlAnchor)FindControl("CancelBooking1");
                btn3.Visible = false;
                HtmlAnchor btn4 = (HtmlAnchor)FindControl("Login1");
                btn4.Visible = true;
                HtmlAnchor btn5 = (HtmlAnchor)FindControl("Register1");
                btn5.Visible = true;
                HtmlAnchor btn6 = (HtmlAnchor)FindControl("Username1");
                btn6.Visible = false;
                setUser.InnerText = currentUserName();
                HtmlAnchor btn7 = (HtmlAnchor)FindControl("Logoff1");
                btn7.Visible = false;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(
            this.GetType(), "OpenWindow", "window.open('https://localhost:44301/Login.aspx','_newtab');", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(
            this.GetType(), "OpenWindow", "window.open('https://localhost:44301/Register.aspx','_newtab');", true);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
        private string currentUserName()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            for (int i = 0; i < fullDs.Customer.Rows.Count; i++)
            {
                if (fullDs.Customer[i].emailID.Equals(CurrentUser.getEmailID(), StringComparison.OrdinalIgnoreCase))
                    return fullDs.Customer[i].name;
            }
            return "";
        }
        protected void logOff_click(object sender, EventArgs e)
        {
            Login.check = 0;
        }
    }
}
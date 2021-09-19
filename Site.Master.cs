
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace M4_major_project
{

    public partial class SiteMaster : MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (Login.check == 1)
            {
                Button btn1 = (Button)FindControl("MakeBooking");
                btn1.Visible = true;
                Button btn2 = (Button)FindControl("ModifyBooking");
                btn2.Visible = true;
                Button btn3 = (Button)FindControl("CancelBooking");
                btn3.Visible = true;
                // Master.FindControl("MakeBooking").Visible = true;
                Login.check = 0;
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
    }
}
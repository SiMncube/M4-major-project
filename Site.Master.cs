
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
            int numberOfSingle = Convert.ToInt32(TextBox1.Text);
            int numberOfDouble = Convert.ToInt32(TextBox2.Text);
            Double sum = 0;
            if(numberOfSingle > 0)
            {
                sum += numberOfSingle * 450;
            }
            else if(numberOfDouble > 0)
            {
                sum += numberOfDouble * 800;
            }

            TextBox3.Text = "R" + sum.ToString();
        }
    }
}
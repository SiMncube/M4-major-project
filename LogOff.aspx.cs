using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class LogOff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Login.check = 0;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login");
        }
    }
}
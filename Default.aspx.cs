using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlAnchor btn1 = (HtmlAnchor)FindControl("setUser");
        }
    }
}
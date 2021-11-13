using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class Invoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            paymentDetails.InnerHtml = "<address>"+
                                        "<strong> Payment Method:</strong ><br>"
                                        +"Credit Card<br>"+
                                        CurrentUser.getEmailID()+
                                         "</address>";

            orderDate.InnerHtml = "<address>" +
                                    "<strong> Order Date:</strong><br>" +
                                    DateTime.Now.ToString() + "</br >" +
                                    "</address> ";
        }

        protected void homeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default");
        }
    }
}
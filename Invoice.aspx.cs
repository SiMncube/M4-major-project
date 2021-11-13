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
                                         "</address>";*/

            orderDate.InnerHtml = "<address>" +
                                    "<strong> Order Date:</strong><br>" +
                                    DateTime.Now.ToString() + "</br >" +
                                    "</address> ";
            updateText();
            numberDoubles.InnerText = currentBooking.getNumberDoubles();
            totalDoubles.InnerText = "R"+(Convert.ToInt32(currentBooking.getNumberDoubles()) * 800)+".00";
            numberSingles.InnerText = currentBooking.getNumberSingles();
            totalSingles.InnerText = "R" + (Convert.ToInt32(currentBooking.getNumberSingles()) * 450) + ".00";
        }

        protected void homeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default");
        }
        private void updateText()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter taBookingSummary = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            taBookingSummary.Fill(fullDs.BookingSummary);
            for (int i = fullDs.BookingSummary.Rows.Count - 1; i >= 0; i--)
            {
                if (fullDs.BookingSummary[i].summaryID == currentBooking.getSummaryID())
                {
                    totalBookings.InnerText = fullDs.BookingSummary[i].amountDue;
                    break;
                }
            }
        }
    }
}
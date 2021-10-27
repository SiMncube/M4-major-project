using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class CancelBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = CurrentUser.getEmailID();
            TextBox2.Text = DateTime.Today.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //this method updates the booking status in the database.
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter bookingSummaryTa = new FullDataSetTableAdapters.BookingSummaryTableAdapter();

            bookingSummaryTa.Fill(fullDs.BookingSummary);
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                try
                {
                    int tempID = int.Parse(TextBox3.Text);
                    if (fullDs.BookingSummary[i].summaryID == tempID)
                    {
                        //fullDs.BookingSummary[i].bookingStatus = "Cancelled";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Booking " + tempID + " Successfully Cancelled" + "');", true);
                        break;
                    }
                }
                catch
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "INVALID Booking Ref:" + "');", true);
                }
            }
            bookingSummaryTa.Update(fullDs.BookingSummary);
            bookingSummaryTa.Fill(fullDs.BookingSummary);
        }
    }
}
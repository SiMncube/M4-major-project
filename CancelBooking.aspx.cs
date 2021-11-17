using System;
using System.Collections.Generic;
using System.Data;
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
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingInnerTableAdapter taBookingInner = new FullDataSetTableAdapters.BookingInnerTableAdapter();
            taBookingInner.FillBy(fullDs.BookingInner, "kgaugelo.m@yahoo.com");
            DataTable dt = new DataTable();
            //dt = taBookingInner.GetDataBy(CurrentUser.getEmailID());
            dt = taBookingInner.GetDataBy("kgaugelo.m@yahoo.com");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(!bookiExist())
            {
                closeBtn.UseSubmitBehavior = true;
                modalBody.InnerHtml = "<p>The Booking does not exist. Please check the booking ref and try again</p>";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
            }
            else if (bookingRefTextBox.Text.Length > 0)
            {
                FullDataSet fullDs = new FullDataSet();
                FullDataSetTableAdapters.BookingInnerTableAdapter taBookingInner = new FullDataSetTableAdapters.BookingInnerTableAdapter();
                taBookingInner.FillBy(fullDs.BookingInner, bookingRefTextBox.Text);
                DataTable dt = new DataTable();
                dt = taBookingInner.GetDataBy(bookingRefTextBox.Text);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        private bool bookiExist()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingInnerTableAdapter taBookingInner = new FullDataSetTableAdapters.BookingInnerTableAdapter();
            taBookingInner.FillBy(fullDs.BookingInner, "kgaugelo.m@yahoo.com");
            for(int i = 0; i < fullDs.BookingInner.Rows.Count;i++)
            {
                if (fullDs.BookingInner[i].Booking_Ref.ToString() == bookingRefTextBox.Text)
                    return true;
            }
            return false;
        }
        protected void closeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Payment");
        }
    }
}
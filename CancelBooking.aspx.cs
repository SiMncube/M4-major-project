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
            taBookingInner.FillBy(fullDs.BookingInner, CurrentUser.getEmailID());
            DataTable dt = new DataTable();
            dt = taBookingInner.GetDataBy(CurrentUser.getEmailID());
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
            taBookingInner.FillBy(fullDs.BookingInner, CurrentUser.getEmailID());
            for(int i = 0; i < fullDs.BookingInner.Rows.Count;i++)
            {
                if (fullDs.BookingInner[i].Booking_Ref.ToString() == bookingRefTextBox.Text)
                    return true;
            }
            return false;
        }
        protected void closeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Invoice");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingInnerTableAdapter taBookingInner = new FullDataSetTableAdapters.BookingInnerTableAdapter();
            taBookingInner.FillBy(fullDs.BookingInner, CurrentUser.getEmailID());
            DataTable dt = new DataTable();
            dt = taBookingInner.GetDataBy(GridView1.SelectedRow.Cells[5].Text);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            if (GridView1.SelectedIndex > -1)
            {
                bookingText.Visible = true;
                cancelBtn.Visible = true;
            }
        }
        private bool bookingIsCanceled(int summaryID)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter bookingSummaryTa = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            bookingSummaryTa.Fill(fullDs.BookingSummary);
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                if (fullDs.BookingSummary[i].summaryID == summaryID && fullDs.BookingSummary[i].bookingStatus == "Cancelled")
                {
                    closeBtn.UseSubmitBehavior = true;
                    modalBody.InnerHtml = "<p>The Booking is already cancelled</p>";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
                    return true;
                }

            }
            return false;
        }
        private bool bookingIsIncomplete(int summaryID)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter bookingSummaryTa = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            bookingSummaryTa.Fill(fullDs.BookingSummary);
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                if (fullDs.BookingSummary[i].summaryID == summaryID && fullDs.BookingSummary[i].bookingStatus == "inComplete")
                {
                    closeBtn.UseSubmitBehavior = true;
                    modalBody.InnerHtml = "<p>The Booking is not complete</p>";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
                    return true;
                }
            }
            return false;
        }
        private bool bookingIsModified(int summaryID)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter bookingSummaryTa = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            bookingSummaryTa.Fill(fullDs.BookingSummary);
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                if (fullDs.BookingSummary[i].summaryID == summaryID && fullDs.BookingSummary[i].bookingStatus == "Modified")
                {
                    closeBtn.UseSubmitBehavior = true;
                    modalBody.InnerHtml = "<p>The Booking is modified, a new Booking ref has been sent for this booking please use the booking ref to cancel the booking</p>";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
                    return true;
                }
            }
            return false;
        }
        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter bookingSummaryTa = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            bookingSummaryTa.Fill(fullDs.BookingSummary);
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                if (fullDs.BookingSummary[i].summaryID.ToString().Equals(GridView2.Rows[0].Cells[4].Text))
                {
                    int summary = fullDs.BookingSummary[i].summaryID;
                    if (!bookingIsModified(summary) && !bookingIsCanceled(summary) && !bookingIsIncomplete(summary))
                    {
                        currentBooking.setSummaryID(fullDs.BookingSummary[i].summaryID);
                        currentBooking.setCanceled(true);
                        closeBtn.UseSubmitBehavior = false;
                        fullDs.BookingSummary[i].bookingStatus = "Cancelled";
                        modalBody.InnerHtml = "<p>The Booking is successfully cancelled<br/>A confirmation emain hase been sent to you email address<br/>Redirecting you to our invoice page</p>";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
                        //Email.sendInvoice();
                    }
                    break;
                }
            }
            bookingSummaryTa.Update(fullDs.BookingSummary);
            FullDataSetTableAdapters.BookingInnerTableAdapter taBookingInner = new FullDataSetTableAdapters.BookingInnerTableAdapter();
            taBookingInner.FillBy(fullDs.BookingInner, CurrentUser.getEmailID());
            DataTable dt = new DataTable();
            dt = taBookingInner.GetDataBy(CurrentUser.getEmailID());
            GridView1.DataSource = dt;
            GridView1.DataBind();
            bookingText.Visible = false;
            cancelBtn.Visible = false;
            GridView1.SelectedIndex = -1;
            GridView2.DataBind();
        }
    }
}
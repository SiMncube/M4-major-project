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
        private bool bookingPaased(int summaryID)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter bookingSummaryTa = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            bookingSummaryTa.Fill(fullDs.BookingSummary);
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                if (fullDs.BookingSummary[i].summaryID == summaryID && fullDs.BookingSummary[i].dateIn.Date < DateTime.Today.Date)
                {
                    closeBtn.UseSubmitBehavior = true;
                    modalBody.InnerHtml = "<p>The Booking has already passed</p>";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
                    return true;
                }
            }
            return true;
        }
        protected void closeBtn_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/Invoice");
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
                    modalBody.InnerHtml = "<p>The Booking is not complete therefore can not be cancelled</p>";
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
                    modalBody.InnerHtml = "<p>The Booking is modified(Can not be cancelled), a new Booking ref has been sent for this booking please use the booking ref to cancel the booking</p>";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
                    return true;
                }
            }
            return false;
        }
        private void processRefund(string summaryID)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.PaymentTableAdapter taPayment = new FullDataSetTableAdapters.PaymentTableAdapter();
            taPayment.Fill(fullDs.Payment);
            for (int i = 0; i < fullDs.Payment.Rows.Count; i++)
            {
                if (fullDs.Tables["Payment"].Rows[i]["summaryID"].ToString() == summaryID)
                {
                    string newAmount = calculateAmountDue(fullDs.Payment[i].amountDue.ToString());
                    string typeOfPayment = "Refund";
                    taPayment.Insert(Convert.ToInt32(summaryID), typeOfPayment, DateTime.Today, "-R " + newAmount + ".00");
                    taPayment.Fill(fullDs.Payment);
                    break;
                }
            }
        }
        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter bookingSummaryTa = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            bookingSummaryTa.Fill(fullDs.BookingSummary);
            string temp = GridView2.Rows[0].Cells[4].Text;
            for (int i = fullDs.BookingSummary.Rows.Count - 1; i >= 0; i--)
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
                        //SendCanceledBookingInvoice(summary); //added by Sihle for sending invoice of the canceled booking
                        modalBody.InnerHtml = "<p>The Booking is successfully cancelled<br/>A confirmation email has been sent to you email address.";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
                        processRefund(summary.ToString());
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

        private void SendCanceledBookingInvoice(int canceledBookingID) //method for sending invoice of a cancelled booking
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter bookingSummaryTa = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            FullDataSetTableAdapters.CustomerTableAdapter customerTa = new FullDataSetTableAdapters.CustomerTableAdapter();
            bookingSummaryTa.Fill(fullDs.BookingSummary);
            customerTa.Fill(fullDs.Customer);

            //These initailizes the invoice fields before being sent to the customer
            Email.bookingID = canceledBookingID.ToString();
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                if (fullDs.BookingSummary[i].summaryID == canceledBookingID)
                {
                    Email.customerEmail = fullDs.BookingSummary[i].emailID;
                    Email.bookingStatus = fullDs.BookingSummary[i].bookingStatus;
                    Email.bookingMethod = fullDs.BookingSummary[i].bookingMethod;
                    Email.dateIn = fullDs.BookingSummary[i].dateIn.ToString("dd/MM/yyyy") + " 12:00 PM";
                    Email.dateOut = fullDs.BookingSummary[i].dateOut.ToString("dd/MM/yyyy") + " 12:00 PM";
                    Email.numberOfNights = fullDs.BookingSummary[i].numberOfNights.ToString();
                    Email.amountDue = fullDs.BookingSummary[i].amountDue;
                    Email.excessOrefund = decimal.Parse(calculateAmountDue(fullDs.BookingSummary[i].amountDue));
                }
            }
            for (int i = 0; i < fullDs.Customer.Rows.Count; i++)
            {
                if (fullDs.Customer[i].emailID.ToLower().Equals(Email.customerEmail.ToLower()))
                {
                    Email.customerName = fullDs.Customer[i].name;
                    Email.customerSurname = fullDs.Customer[i].surname;
                    Email.customerIdNumber = fullDs.Customer[i].idNumber;
                }
            }
            Email.isCancel = true;
            Email.sendInvoice();
        }

        private string calculateAmountDue(string s)
        {
            s = s.Substring(2, s.Length - 5);
            double due = double.Parse(s) * 0.5;
            return due + "";
        }
    }
}
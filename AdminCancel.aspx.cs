using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class AdminCancel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setUser.InnerText = currentAdminName();
        }
        private string currentAdminName()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.StaffTableAdapter taStaff = new FullDataSetTableAdapters.StaffTableAdapter();
            taStaff.Fill(fullDs.Staff);
            for (int i = 0; i < fullDs.Staff.Rows.Count; i++)
            {
                if (fullDs.Staff[i].emailID.Equals(CurrentUser.getEmailID(), StringComparison.OrdinalIgnoreCase))
                    return fullDs.Staff[i].surname + " " + fullDs.Staff[i].name;
            }
            return "";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (adminTextBox.Text.Length > 0)
            {
                FullDataSet fullDs = new FullDataSet();
                FullDataSetTableAdapters.BookingInnerTableAdapter taBookingInner = new FullDataSetTableAdapters.BookingInnerTableAdapter();
                taBookingInner.FillBy(fullDs.BookingInner,adminTextBox.Text.Trim());
                DataTable dt = new DataTable();
                dt = taBookingInner.GetDataBy(adminTextBox.Text);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        private string calculateAmountDue(string s)
        {
            s = s.Substring(2, s.Length - 5);
            double due = double.Parse(s) * 0.5;
            return due + "";
        }
        private void processRefund(int summaryID)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.PaymentTableAdapter paymentTa = new FullDataSetTableAdapters.PaymentTableAdapter();
            paymentTa.Fill(fullDs.Payment);
            for (int i = 0; i < fullDs.Payment.Rows.Count; i++)
            {
                if (fullDs.Payment[i].summaryID == summaryID)
                {
                    string newAmount = calculateAmountDue(fullDs.Payment[i].amountDue.ToString());
                    paymentTa.Insert(summaryID, "-R " + newAmount + ".00", DateTime.Today, fullDs.Payment[i].typeOfPayment);
                    paymentTa.Fill(fullDs.Payment);
                    break;
                }
            }
        }
        private void cancelBooking(int summaryID)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter bookingSummaryTa = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            FullDataSetTableAdapters.BookingInnerTableAdapter bookingInnerTa = new FullDataSetTableAdapters.BookingInnerTableAdapter();
            bookingSummaryTa.Fill(fullDs.BookingSummary);
            bookingInnerTa.Fill(fullDs.BookingInner);
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                if (fullDs.BookingSummary[i].summaryID == summaryID)
                {
                    fullDs.BookingSummary[i].bookingStatus = "Cancelled";
                    modalBody.InnerHtml = "<p>The Booking is successfully cancelled</p>";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
                    fullDs.BookingSummary[i].bookingStatus = "Cancelled";
                    bookingSummaryTa.Update(fullDs.BookingSummary);
                    bookingSummaryTa.Fill(fullDs.BookingSummary);
                    bookingInnerTa.Fill(fullDs.BookingInner);
                    processRefund(summaryID);
                }
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
                    modalBody.InnerHtml = "<p>The Booking is modified</p>";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
                    return true;
                }
            }
            return false;
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingInnerTableAdapter taBookingInner = new FullDataSetTableAdapters.BookingInnerTableAdapter();
            taBookingInner.FillBy(fullDs.BookingInner, adminTextBox.Text.Trim());
            DataTable dt = new DataTable();
            dt = taBookingInner.GetDataBy(GridView1.SelectedRow.Cells[5].Text);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            if(GridView1.SelectedIndex > -1)
            {
                bookingText.Visible = true;
                cancelBtn.Visible = true;
            }
        }

        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter bookingSummaryTa = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            bookingSummaryTa.Fill(fullDs.BookingSummary);
            if(!bookingIsCanceled(Convert.ToInt32(GridView2.Rows[0].Cells[4].Text)) && !bookingIsIncomplete(Convert.ToInt32(GridView2.Rows[0].Cells[4].Text)) && !bookingIsModified(Convert.ToInt32(GridView2.Rows[0].Cells[4].Text)))
            {
                cancelBooking(Convert.ToInt32(GridView2.Rows[0].Cells[4].Text));
                bookingSummaryTa.Update(fullDs.BookingSummary);
                FullDataSetTableAdapters.BookingInnerTableAdapter taBookingInner = new FullDataSetTableAdapters.BookingInnerTableAdapter();
                taBookingInner.FillBy(fullDs.BookingInner, adminTextBox.Text.Trim());
                DataTable dt = new DataTable();
                dt = taBookingInner.GetDataBy(adminTextBox.Text);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                bookingText.Visible = false;
                cancelBtn.Visible = false;
                GridView1.SelectedIndex = -1;
                GridView2.DataBind();
            }
        }
        private string currentCustEmail()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            for (int i = 0; i < fullDs.Customer.Rows.Count; i++)
            {
                if (fullDs.Customer[i].emailID.Equals(GridView2.Rows[0].Cells[0].Text, StringComparison.OrdinalIgnoreCase))
                    return fullDs.Customer[i].emailID;
            }
            return "";
        }
    }
}
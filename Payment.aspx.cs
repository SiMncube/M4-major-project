using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private string getAmountDue()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter taBookingSummary = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            taBookingSummary.Fill(fullDs.BookingSummary);
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                if (fullDs.BookingSummary[i].summaryID == currentBooking.getSummaryID())
                    return fullDs.BookingSummary[i].amountDue;
            }
            return "";
        }
        private string getSurname()
        {
            int startIndex = 0;
            for (int i = 0; i < holderNameTextBox.Text.Length; i++)
            {
                if (holderNameTextBox.Text[i] == ' ')
                {
                    startIndex = i + 1;
                    break;
                }
            }
            return holderNameTextBox.Text.Substring(startIndex).Trim();
        }
        private bool isLetter(char c)
        {
            if (c >= 'a' && c <= 'z' || c == ' ')
                return true;
            return false;
        }
        private bool isAllLetters(string s)
        {
            s = s.ToLower();
            for (int i = 0; i < s.Length; i++)
            {
                if (!isLetter(s[i]))
                    return false;
            }
            return true;
        }
        private bool nameIsValid()
        {
            if (isAllLetters(holderNameTextBox.Text) && holderNameTextBox.Text.Length > 3)
                return true;
            holderNameTextBox.BackColor = System.Drawing.Color.Red;
            return false;
        }
        private bool cardNumberIsValid()
        {
            if (cardNumberTextBox.Text.Length == 16)
                return true;
            cardNumberTextBox.BackColor = System.Drawing.Color.Red;
            return false;
        }
        private bool cvvIsValid()
        {
            if (cvvTextbox.Text.Length == 3)
                return true;
            cvvTextbox.BackColor = System.Drawing.Color.Red;
            return false;
        }
        private bool dateIsSelected()
        {
            
            if (!monthComboBox.Items[monthComboBox.SelectedIndex].Text.Equals("Month:") && !yearComboBox.Items[yearComboBox.SelectedIndex].Text.Equals("Year:"))
               return true;
            return false;
        }
        private bool creditDetailsValid()
        {
            int count = 0;
            if (!nameIsValid())
                count++;
            if (!cardNumberIsValid())
                count++;
            if (!cvvIsValid())
                count++;
            if (!dateIsSelected())
                count++;
            return count == 0;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (creditDetailsValid())
            {
                if (!Email.isModify)  // added by Sihle, this means this block we are not coming form modify booking page
                {
                    FullDataSet fullDs = new FullDataSet();
                    FullDataSetTableAdapters.PaymentTableAdapter paymentTa = new FullDataSetTableAdapters.PaymentTableAdapter();
                    paymentTa.Fill(fullDs.Payment);
                    paymentTa.Insert(currentBooking.getSummaryID(), "Credit card", DateTime.Today, getAmountDue());
                    updateBookedRoom();
                    updateBookingStatus();
                    Email.bookingStatus = "Complete";  //added by Sihle
                    Email.sendInvoice();               //added by Sihle
                    Response.Redirect("/Invoice");
                }
                else
                {
                    completeModifyBooking(Email.amountDue);  //this is the update booking for modified booking
                    Email.sendInvoice();
                    Response.Redirect("/Invoice");
                }
            }
        }
        private DateTime GetDateIn()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter taBookingSummary = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            taBookingSummary.Fill(fullDs.BookingSummary);
            DateTime dateIn = DateTime.Today;
            for (int i = fullDs.BookingSummary.Rows.Count - 1; i >= 0; i--)
            {
                if (fullDs.BookingSummary[i].summaryID == currentBooking.getSummaryID())
                {
                    dateIn = fullDs.BookingSummary[i].dateIn;
                    break;
                }
            }
            return dateIn;
        }
        private DateTime GetDateOut()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter taBookingSummary = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            taBookingSummary.Fill(fullDs.BookingSummary);
            DateTime dateOut = DateTime.Today;
            for (int i = fullDs.BookingSummary.Rows.Count - 1; i >= 0; i--)
            {
                if (fullDs.BookingSummary[i].summaryID == currentBooking.getSummaryID())
                {
                    dateOut = fullDs.BookingSummary[i].dateOut;
                }
            }
            return dateOut;
        }
        private void updateBookedRoom()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookedRoomTableAdapter bookedRoomTa = new FullDataSetTableAdapters.BookedRoomTableAdapter();
            bookedRoomTa.Fill(fullDs.BookedRoom);
            int[] rooms = currentBooking.getRoomIDs();
            if (rooms[0] != -1)
            {
                for (int i = 0; i < rooms.Length; i++)
                {
                    for (DateTime dateID = GetDateIn(); DateTime.Compare(dateID, GetDateOut()) < 0; dateID = dateID.AddDays(1))
                    {
                        bookedRoomTa.Insert(dateID, currentBooking.getSummaryID(), rooms[i]);
                    }
                }
                bookedRoomTa.Update(fullDs.BookedRoom);
                bookedRoomTa.Fill(fullDs.BookedRoom);
            }
        }
        private void updateBookingStatus()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter bookingSummaryTa = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            bookingSummaryTa.Fill(fullDs.BookingSummary);
            int[] rooms = currentBooking.getRoomIDs();
            if (rooms[0] != -1)
            {
                for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
                {
                    if (fullDs.BookingSummary[i].summaryID == currentBooking.getSummaryID())
                    {
                        fullDs.BookingSummary[i].bookingStatus = "Complete";
                        bookingSummaryTa.Update(fullDs.BookingSummary);
                        bookingSummaryTa.Fill(fullDs.BookingSummary);
                    }
                }
            }
        }


        //***********************************  Author @Sihle,  Modify booking specialized methods   ******************************
        
        /*
         * This code is used when a user is required to make a payment during booking modification 
         * This ensures that a booking is only modified after the customer has paid the amount required
         * and this is the case when the when the amount the user paid on the previous booking is not enough to cover the
         * changes the have made to the booking. i.e the new booking is more expensive then the previously made booking.
         * Hence they are redirected to this payment page.
         * 
         * But other wise the everything will be finalized if the modify booking page.
         */

        //Database fields
        FullDataSet fullDs = new FullDataSet();
        FullDataSetTableAdapters.BookingSummaryTableAdapter bookingSummaryTa = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
        FullDataSetTableAdapters.BookedRoomTableAdapter bookedRoomTa = new FullDataSetTableAdapters.BookedRoomTableAdapter();
        FullDataSetTableAdapters.PaymentTableAdapter paymentTa = new FullDataSetTableAdapters.PaymentTableAdapter();


        //modify booking special attributes
        string OldBookingSummaryID = Email.oldBookingID;
        int newBookingSummaryID = currentBooking.getSummaryID();

        private void completeModifyBooking(string callNewBookingAmoundDue)
        {
            UpdateOldBookingStatusToModified(int.Parse(OldBookingSummaryID));
            ProcessModifiedBookingRefund();    //adds a negative payment record == oldBookingAmountDue 
            paymentTa.Insert(newBookingSummaryID, "EFT", DateTime.Today, callNewBookingAmoundDue);
            UpdateNewBookingStatusToComplete();

            this.paymentTa.Update(fullDs.Payment);
            this.paymentTa.Fill(fullDs.Payment);
            this.bookingSummaryTa.Fill(this.fullDs.BookingSummary);
            this.bookingSummaryTa.Update(this.fullDs.BookingSummary);
            this.bookedRoomTa.Update(this.fullDs.BookedRoom);
            this.bookedRoomTa.Fill(this.fullDs.BookedRoom);

            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Booking has been successfully Modified" + "');", true);

        }

        private void ProcessModifiedBookingRefund() //100% refund will be used to make the new booking
        {
            for (int i = 0; i < fullDs.Payment.Rows.Count; i++)
            {
                if (fullDs.Payment[i].summaryID.ToString() == OldBookingSummaryID)
                {
                    string negativePayment = "-" + fullDs.Payment[i].amountDue;
                    paymentTa.Insert(int.Parse(OldBookingSummaryID), "Refund", DateTime.Today, negativePayment);
                    break;
                }
            }
            paymentTa.Update(fullDs.Payment);
            paymentTa.Fill(fullDs.Payment);
        }

        private void UpdateOldBookingStatusToModified(int summaryID)
        {
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                if (fullDs.BookingSummary[i].summaryID == summaryID)    //this is also used to capture the that was paid for this booking
                {
                    fullDs.BookingSummary[i].bookingStatus = "Modified";
                }
            }
            bookingSummaryTa.Update(fullDs.BookingSummary);
            bookingSummaryTa.Fill(fullDs.BookingSummary);
        }

        private void UpdateNewBookingStatusToComplete()
        {
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                if (fullDs.BookingSummary[i].summaryID == newBookingSummaryID)
                {
                    fullDs.BookingSummary[i].bookingStatus = "Complete";
                    break;
                }

            }

            bookingSummaryTa.Update(fullDs.BookingSummary);
            bookingSummaryTa.Fill(fullDs.BookingSummary);
        }
    }
}
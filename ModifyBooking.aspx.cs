using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class ModifyBooking : System.Web.UI.Page
    {
        //User Input fields
        string currentCustomerEmailID = CurrentUser.getEmailID();
        DateTime dateIn;
        DateTime dateOut;
        int numberOfNights;
        string bookingMethod = "Online";
        string bookingStatus = "inComplete";
        double amountDue = 0;

        ArrayList availableSingleRooms = new ArrayList();
        ArrayList availableDoubleRooms = new ArrayList();

        int numberOfSingleRoomsSelected = 0;
        int numberOfDoubleRoomsSelected = 0;

        //Database fields
        FullDataSet fullDs = new FullDataSet();
        FullDataSetTableAdapters.BookingSummaryTableAdapter bookingSummaryTa = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
        FullDataSetTableAdapters.BookedRoomTableAdapter bookedRoomTa = new FullDataSetTableAdapters.BookedRoomTableAdapter();
        FullDataSetTableAdapters.PaymentTableAdapter paymentTa = new FullDataSetTableAdapters.PaymentTableAdapter();
        FullDataSetTableAdapters.CustomerTableAdapter customerTa = new FullDataSetTableAdapters.CustomerTableAdapter();

        //modify booking special attributes
        string OldBookingSummaryID = "";
        int newBookingSummaryID = 0;


        public void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = CurrentUser.getEmailID();
            TextBox2.Text = DateTime.Today.ToString();
            TextBox3.Text = "Complete";

            bookingSummaryTa.Fill(fullDs.BookingSummary);
            bookedRoomTa.Fill(fullDs.BookedRoom);
            paymentTa.Fill(fullDs.Payment);
            customerTa.Fill(fullDs.Customer);

            bookingSummaryTa.Update(this.fullDs.BookingSummary);
            bookedRoomTa.Update(this.fullDs.BookedRoom);


            dateIn = dateInCalender.SelectedDate;
            dateOut = dateOutCalender.SelectedDate;

            if (dateIn.ToString().Equals(dateOut.ToString()))
                dateOut.AddDays(1);

            updateAvailableRoomList();
        }

        protected void dateInCalender_SelectionChanged(object sender, EventArgs e)
        {
            dateIn = dateInCalender.SelectedDate;
            dateOut = dateOutCalender.SelectedDate;
            updateAvailableRoomList();
            loadAvailableSingles(singleDDList);
            loadAvailableDoubles(doubleDDList);
            amountDueTextBox.Text = "";
        }

        protected void dateOutCalender_SelectionChanged(object sender, EventArgs e)
        {
            dateIn = dateInCalender.SelectedDate;
            dateOut = dateOutCalender.SelectedDate;
            updateAvailableRoomList();
            loadAvailableSingles(singleDDList);
            loadAvailableDoubles(doubleDDList);
            amountDueTextBox.Text = "";
        }

        protected void singleDDList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dateIsValid())
            {
                amountDueTextBox.Text = getAmountDue(singleDDList, doubleDDList);
                saveBookingButton.Enabled = true;
            }
            else
            {
                amountDueTextBox.Text = "";
                saveBookingButton.Enabled = false;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Your Date Input is INVALID" + "');", true);
            }
        }

        protected void doubleDDList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dateIsValid())
            {
                amountDueTextBox.Text = getAmountDue(singleDDList, doubleDDList);
                saveBookingButton.Enabled = true;
            }
            else
            {
                amountDueTextBox.Text = "";
                saveBookingButton.Enabled = false;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Your Date Input is INVALID" + "');", true);
            }
        }

        private bool bookingIsComplete(string summaryID)  //fully tested
        {
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                if ((fullDs.Tables["BookingSummary"].Rows[i]["summaryID"].ToString().Equals(summaryID)) &&
                   (fullDs.Tables["BookingSummary"].Rows[i]["bookingStatus"].ToString().Equals("Complete")))
                    return true;
            }
            return false;
        }

        private bool isRoomAvailable(int roomID, DateTime dateID)   //fully tested
        {
            for (int i = 0; i < fullDs.BookedRoom.Rows.Count; i++)
            {
                if (((fullDs.Tables["BookedRoom"].Rows[i]["dateID"].ToString().Equals(dateID.ToString())) &&
                   (int.Parse(fullDs.Tables["BookedRoom"].Rows[i]["roomID"].ToString()) == roomID)) &&
                   (bookingIsComplete(fullDs.Tables["BookedRoom"].Rows[i]["summaryID"].ToString())))
                //if the record of the room in bookedRoom is complete then that room is not available
                //however if the booking of that room has been cancelled than that room has to be marked available
                //even though it exist in bookedRoom records
                {
                    return false;
                }
            }
            return true;
        }

        private void updateAvailableRoomList()  //fully tested
        {
            availableSingleRooms = new ArrayList();
            availableDoubleRooms = new ArrayList();

            for (int roomID = 1; roomID <= 15; roomID++)
            {
                bool roomAvailableFlag = true;
                for (DateTime dateID = dateIn; DateTime.Compare(dateID, dateOut) < 0; dateID = dateID.AddDays(1))
                {
                    if (!isRoomAvailable(roomID, dateID))
                    {
                        roomAvailableFlag = false;
                        break;
                    }
                }

                if (roomAvailableFlag)
                {
                    if (roomID <= 7)
                        availableSingleRooms.Add(roomID);
                    else
                        availableDoubleRooms.Add(roomID);
                }
            }
        }

        private void loadAvailableSingles(DropDownList ddList)  //fully tested
        {
            ddList.Items.Clear();
            ddList.Items.Add("0");
            for (int i = 0; i < availableSingleRooms.Count; i++)
                ddList.Items.Add(i + 1 + "");
        }

        private void loadAvailableDoubles(DropDownList ddList) //fully tested
        {
            ddList.Items.Clear();
            ddList.Items.Add("0");
            for (int i = 0; i < availableDoubleRooms.Count; i++)
                ddList.Items.Add(i + 1 + "");
        }

        private bool dateIsValid() //fully tested
        {
            if (((DateTime.Compare(DateTime.Today, dateIn) <= 0) && (DateTime.Compare(DateTime.Today, dateOut) < 0) && (DateTime.Compare(dateIn, dateOut) < 0)))
                return true;
            return false;
        }

        private string getAmountDue(DropDownList ddList1, DropDownList ddList2) //fully tested
        {
            double amountDueForSingleRooms;
            double amountDueForDoubleRooms;
            numberOfNights = dateOut.Subtract(dateIn).Days;
            if (numberOfNights == 0)
                numberOfNights++;

            if (ddList1.SelectedItem == null || ddList1.SelectedItem.ToString() == "0")
            {
                amountDueForSingleRooms = 0.0;
            }
            else
            {
                numberOfSingleRoomsSelected = int.Parse(ddList1.SelectedItem.ToString());
                amountDueForSingleRooms = (numberOfSingleRoomsSelected * 450 * numberOfNights);
            }
            if (ddList2.SelectedItem == null || ddList2.SelectedItem.ToString() == "0")
            {
                amountDueForDoubleRooms = 0.0;
            }
            else
            {
                numberOfDoubleRoomsSelected = int.Parse(ddList2.SelectedItem.ToString());
                amountDueForDoubleRooms = (numberOfDoubleRoomsSelected * 800 * numberOfNights);
            }

            amountDue = amountDueForSingleRooms + amountDueForDoubleRooms;
            return "R " + amountDue.ToString() + ".00";
        }

        public string arrayToString(int[] array) //fully tested
        {
            string s = "Room: ";

            if (array.Length == 0)
                return "none";
            else
            {
                for (int i = 0; i < array.Length; i++)
                {
                    s += array[i];
                    if (i != array.Length - 1)
                        s += ", ";
                }
            }
            return s;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            OldBookingSummaryID = GridView1.SelectedRow.Cells[0].Text;
        }

        private void completeModifyBooking(string callNewBookingAmoundDue)
        {
            UpdateOldBookingStatusToModified(int.Parse(OldBookingSummaryID));
            ProcessModifiedBookingRefund();    //adds a negative payment record == oldBookingAmountDue 
            paymentTa.Insert(newBookingSummaryID, "EFT", DateTime.Today, callNewBookingAmoundDue);
            UpdateNewBookingStatusToComplete();

            //MessageBox.Show("Booking Has Been Successfully Updated", "Customer Message"); //could be changed to showing all bookind details or something like an invoice 
            // with all necessary details including the new customer booking reference.
            this.paymentTa.Update(fullDs.Payment);
            this.paymentTa.Fill(fullDs.Payment);
            this.bookingSummaryTa.Fill(this.fullDs.BookingSummary);
            this.bookingSummaryTa.Update(this.fullDs.BookingSummary);
            this.bookedRoomTa.Update(this.fullDs.BookedRoom);
            this.bookedRoomTa.Fill(this.fullDs.BookedRoom);
        }

        protected void saveBookingButton_Click(object sender, EventArgs e)
        {
            string newBookingAmountDueString = getAmountDue(singleDDList, doubleDDList);
            decimal oldBookingAmountDue = getOldBookingAmountDue(int.Parse(OldBookingSummaryID));
            decimal newBookingAmountDue = decimal.Parse(newBookingAmountDueString.Substring(2, newBookingAmountDueString.Length - 5));
            decimal finalAmountDue = newBookingAmountDue - oldBookingAmountDue;
            Email.excessOrefund = finalAmountDue;
            CaptureNEWBookingRecord(newBookingAmountDueString);      //not this record is incomplete untill the admin confirms the receipt of payment      
            int[] a = { -1, (int)finalAmountDue };
            currentBooking.setRoomIDs(a);
           

            if (finalAmountDue < 0)   //WE issue a refund
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Booking has been successfully Modified" + "A Refund of: " + Math.Abs(finalAmountDue) +" Will be processed" + "');", true);
                completeModifyBooking(newBookingAmountDueString);
            }
            else if (finalAmountDue > 0)  //The customer has to add more money then, hence they should go to payment page
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Proced to checkout to pay the excess of:" + finalAmountDue +"');", true);
                Response.Redirect("/Payment");
            }
            else  // it's a break even no excess or refund.
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Booking has been successfully Modified" + "');", true);
                completeModifyBooking(newBookingAmountDueString);
            }
        }

        private void CaptureNEWBookingRecord(string callAmountDueMethod)  //this method does not capture payment records
        {
            bookingSummaryTa.Insert(currentCustomerEmailID, dateIn, dateOut, numberOfNights, bookingMethod, "inComplete", callAmountDueMethod);
            int summaryID = (int)bookingSummaryTa.getLastRecord();
            newBookingSummaryID = summaryID;
            currentBooking.setSummaryID(summaryID); //might be used in payment form. but it wasn't there in FES 

            int[] singleAllocatedRooms = new int[numberOfSingleRoomsSelected];
            int[] doubleAllocatedRooms = new int[numberOfDoubleRoomsSelected];

            for (int i = 0; i < numberOfSingleRoomsSelected; i++) //adding single rooms to bookedRoom table
            {
                for (DateTime dateID = dateIn; DateTime.Compare(dateID, dateOut) < 0; dateID = dateID.AddDays(1))
                {
                    bookedRoomTa.Insert(dateID, summaryID, (int)availableSingleRooms[i]);
                    singleAllocatedRooms[i] = (int)availableSingleRooms[i];
                }
            }

            for (int i = 0; i < numberOfDoubleRoomsSelected; i++) //adding double rooms to bookedRoom table
            {
                for (DateTime dateID = dateIn; DateTime.Compare(dateID, dateOut) < 0; dateID = dateID.AddDays(1)) //adding double rooms to bookedRoom table
                {
                    bookedRoomTa.Insert(dateID, summaryID, (int)availableDoubleRooms[i]);
                    doubleAllocatedRooms[i] = (int)availableDoubleRooms[i];
                }
            }

            this.bookingSummaryTa.Update(this.fullDs.BookingSummary);
            this.bookingSummaryTa.Fill(this.fullDs.BookingSummary);
            this.bookedRoomTa.Update(this.fullDs.BookedRoom);
            this.bookedRoomTa.Fill(this.fullDs.BookedRoom);

            //These initailizes the invoice fields
            for (int i = 0; i < fullDs.Customer.Rows.Count; i++)
            {
                if (fullDs.Customer[i].emailID.Equals(currentCustomerEmailID))
                {
                    Email.customerName = fullDs.Customer[i].name;
                    Email.customerSurname = fullDs.Customer[i].surname;
                    Email.customerIdNumber = fullDs.Customer[i].idNumber;
                }
            }
            Email.customerEmail = currentCustomerEmailID;
            Email.bookingID = summaryID.ToString();
            Email.bookingStatus = bookingStatus;
            Email.bookingMethod = bookingMethod;
            Email.dateIn = dateIn.ToString("dd/MM/yyyy") + " 12:00 PM";
            Email.dateOut = dateOut.ToString("dd/MM/yyyy") + " 12:00 PM";
            Email.numberOfNights = numberOfNights.ToString();
            Email.numberOfSingles = numberOfSingleRoomsSelected.ToString();
            Email.numberOfDoubles = numberOfDoubleRoomsSelected.ToString();
            Email.singleRoomIDs = arrayToString(singleAllocatedRooms);
            Email.doubleRoomIDs = arrayToString(doubleAllocatedRooms);
            Email.amountDue = callAmountDueMethod;

            //Old booking information
            Email.isModify = true;
            Email.oldBookingID = OldBookingSummaryID;
            Email.oldBookingAmountDue = getOldBookingAmountDue(int.Parse(OldBookingSummaryID)).ToString();
        }

        private decimal getOldBookingAmountDue(int summaryID)
        {
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                if (fullDs.BookingSummary[i].summaryID == summaryID)    //this is also used to capture the that was paid for this booking
                {
                    string temp = fullDs.BookingSummary[i].amountDue;
                    return decimal.Parse(temp.Substring(2, temp.Length - 5));
                }
            }
            return -1;
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
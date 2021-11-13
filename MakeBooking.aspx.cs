using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class WebForm2 : System.Web.UI.Page
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

        public void Page_Load(object sender, EventArgs e)
        {
            bookingSummaryTa.Fill(fullDs.BookingSummary);
            bookedRoomTa.Fill(fullDs.BookedRoom);
            paymentTa.Fill(fullDs.Payment);
            customerTa.Fill(fullDs.Customer);

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

        private bool bookingIsComplete(string summaryID)    //now working correctly, fully tested
        {
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                if ((fullDs.Tables["BookingSummary"].Rows[i]["summaryID"].ToString().Equals(summaryID)) &&
                   (fullDs.Tables["BookingSummary"].Rows[i]["bookingStatus"].ToString().Equals("Complete")))
                    return true;
            }
            return false;
        }

        private bool isRoomAvailable(int roomID, DateTime dateID)   //now working correctly, fully tested
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

        private void updateAvailableRoomList()  //now working correctly, fully tested
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

        private void loadAvailableSingles(DropDownList ddList)  //now working correctly, fully tested
        {
            ddList.Items.Clear();
            ddList.Items.Add("0");
            for (int i = 0; i < availableSingleRooms.Count; i++)
                ddList.Items.Add(i + 1 + "");
        }

        private void loadAvailableDoubles(DropDownList ddList) //now working correctly, fully tested
        {
            ddList.Items.Clear();
            ddList.Items.Add("0");
            for (int i = 0; i < availableDoubleRooms.Count; i++)
                ddList.Items.Add(i + 1 + "");
        }

        private bool dateIsValid()
        {
            if (((DateTime.Compare(DateTime.Today, dateIn) <= 0) && (DateTime.Compare(DateTime.Today, dateOut) < 0) && (DateTime.Compare(dateIn, dateOut) < 0)))
                return true;
            return false;
        }

        private string getAmountDue(DropDownList ddList1, DropDownList ddList2) //now working correctly, fully tested
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

        public string arrayToString(int[] array)
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

        protected void saveBookingButton_Click(object sender, EventArgs e)
        {
            updateBookingSummary(getAmountDue(singleDDList, doubleDDList));
            currentBooking.NumberSingles(singleDDList.SelectedItem.ToString());
            currentBooking.setNumberDoubles(doubleDDList.SelectedItem.ToString());
            Response.Redirect("/Payment");
        }

        private void updateBookingSummary(string callAmountDueMethod)
        {
            int[] singleAllocatedRooms = new int[numberOfSingleRoomsSelected];
            int[] doubleAllocatedRooms = new int[numberOfDoubleRoomsSelected];

            bookingSummaryTa.Insert(currentCustomerEmailID, dateIn, dateOut, numberOfNights, bookingMethod, bookingStatus, callAmountDueMethod);
            int summaryID = (int)bookingSummaryTa.getLastRecord();  
            currentBooking.setSummaryID(summaryID);

            for (int i = 0; i < numberOfSingleRoomsSelected; i++) //adding single rooms to bookedRoom table
            {
                for (DateTime dateID = dateIn; DateTime.Compare(dateID, dateOut) < 0; dateID = dateID.AddDays(1))
                {
                    singleAllocatedRooms[i] = (int)availableSingleRooms[i];
                }
            }

            for (int i = 0; i < numberOfDoubleRoomsSelected; i++) //adding double rooms to bookedRoom table
            {
                for (DateTime dateID = dateIn; DateTime.Compare(dateID, dateOut) < 0; dateID = dateID.AddDays(1)) //adding double rooms to bookedRoom table
                {
                    doubleAllocatedRooms[i] = (int)availableDoubleRooms[i];
                }
            }

            int[] allAllocatedRooms = new int[singleAllocatedRooms.Length + doubleAllocatedRooms.Length];
            Array.Copy(singleAllocatedRooms, allAllocatedRooms, singleAllocatedRooms.Length);
            Array.Copy(doubleAllocatedRooms, 0, allAllocatedRooms, singleAllocatedRooms.Length, doubleAllocatedRooms.Length);
            currentBooking.setRoomIDs(allAllocatedRooms);

            this.bookingSummaryTa.Update(this.fullDs.BookingSummary);
            this.bookingSummaryTa.Fill(this.fullDs.BookingSummary);

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
            Email.dateOut = dateOut.ToString("dd/MM/yyyy") + " 11:00 AM";
            Email.numberOfNights = numberOfNights.ToString();
            Email.numberOfSingles = singleAllocatedRooms.Length.ToString();
            Email.numberOfDoubles = doubleAllocatedRooms.Length.ToString();
            Email.singleRoomIDs = arrayToString(singleAllocatedRooms);
            Email.doubleRoomIDs = arrayToString(doubleAllocatedRooms);
            Email.amountDue = callAmountDueMethod;
        }
    }
}
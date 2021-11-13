﻿using System;
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
        public void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = CurrentUser.getEmailID();
            TextBox2.Text = DateTime.Today.ToString();
            TextBox3.Text = "Complete";

            bookingSummaryTa.Fill(fullDs.BookingSummary);
            bookedRoomTa.Fill(fullDs.BookedRoom);

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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private bool canBeModified(DateTime checkInDate, string bookingStatus)
        {
            if (DateTime.Compare(DateTime.Today, checkInDate) < 0)
            {
                if (bookingStatus.Equals("Complete"))  //this is the only block that should be executed for the booking to be modified.
                    return true;
                else if (bookingStatus.Equals("Modified"))
                {
                    //MessageBox.Show("A " + bookingStatus + "can not be modified", "Selection Error");
                    return false;
                }
                else if (bookingStatus.Equals("Cancelled"))
                {
                    //MessageBox.Show("A " + bookingStatus + "can not be modified", "Selection Error");
                    return false;
                }
                else if (bookingStatus.Equals("inComplete"))
                {
                    //MessageBox.Show("An " + bookingStatus + "can not be modified, No Payment Was Made for this booking", "Selection Error");
                    return false;
                }
            }
            else
            {
                //MessageBox.Show("The Selected booking can not be modified, Checking in date has already passed", "Selection Error");
                return false;
            }

            return false;
        }
    }
    /*
     string OldBookingSummaryID = "";
        int newBookingSummaryID = 0;

        private void textBox4_TextChanged(object sender, EventArgs e)
        {
            modifyBookingInnerTa.FillByAnythingGiven(this.fullDs.ModifyBookingInner, textBox4.Text);
        }

        

        

        private void modifyBookingInnerDataGridView_RowHeaderMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (canBeModified((DateTime)(modifyBookingInnerDataGridView.CurrentRow.Cells[5].Value), modifyBookingInnerDataGridView.CurrentRow.Cells[9].Value.ToString()))
            {
                currentCustomerEmailID = modifyBookingInnerDataGridView.CurrentRow.Cells[0].Value.ToString();
                label36.Text = "To Modify Booking for: " + modifyBookingInnerDataGridView.CurrentRow.Cells[1].Value.ToString() + " " + modifyBookingInnerDataGridView.CurrentRow.Cells[2].Value.ToString() + " (" + modifyBookingInnerDataGridView.CurrentRow.Cells[0].Value.ToString() + " - Booking Ref: " + modifyBookingInnerDataGridView.CurrentRow.Cells[4].Value.ToString() + ")";
                label36.Visible = true;
                button13.Enabled = true;

                OldBookingSummaryID = modifyBookingInnerDataGridView.CurrentRow.Cells[4].Value.ToString();
            }
            else
            {
                customerDataGridView.ClearSelection();
            }

        }

        private void button13_Click(object sender, EventArgs e)
        {
            panel8.Enabled = true;
            dateTimePicker3.Enabled = true;
            dateTimePicker4.Enabled = true;
        }

        private void CaptureNEWBookingRecord(string callAmountDueMethod)  //this method does not capture payment records
        {
            bookingSummaryTa.Insert(currentCustomerEmailID, dateIn, dateOut, numberOfNights, bookingMethod, "inComplete", callAmountDueMethod);
            int summaryID = (int)bookingSummaryTa.getLastRecord();
            newBookingSummaryID = summaryID;

            int[] singleAllocatedRooms = new int[numberOfSingleRooms];
            int[] doubleAllocatedRooms = new int[numberOfDoubleRooms];

            for (int i = 0; i < numberOfSingleRooms; i++) //adding single rooms to bookedRoom table
            {
                for (DateTime dateID = dateIn; DateTime.Compare(dateID, dateOut) < 0; dateID = dateID.AddDays(1))
                {
                    bookedRoomTa.Insert(dateID, summaryID, (int)availableSingleRooms[i]);
                    singleAllocatedRooms[i] = (int)availableSingleRooms[i];
                }
            }

            for (int i = 0; i < numberOfDoubleRooms; i++) //adding double rooms to bookedRoom table
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
            Email.numberOfSingles = numberOfSingleRooms.ToString();
            Email.numberOfDoubles = numberOfDoubleRooms.ToString();
            Email.singleRoomIDs = arrayToString(singleAllocatedRooms);
            Email.doubleRoomIDs = arrayToString(doubleAllocatedRooms);
            Email.amountDue = callAmountDueMethod;

            //Old booking information
            Email.isModify = true;
            Email.oldBookingID = OldBookingSummaryID;
            Email.oldBookingAmountDue = getOldBookingAmountDue(int.Parse(OldBookingSummaryID)).ToString();
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
                    paymentTa.Insert(DateTime.Today, negativePayment, int.Parse(OldBookingSummaryID), "Refund");
                    break;
                }
            }
            paymentTa.Update(fullDs.Payment);
            paymentTa.Fill(fullDs.Payment);
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

        private void UpdateBooking(string callNewBookingAmoundDue)
        {
            UpdateOldBookingStatusToModified(int.Parse(OldBookingSummaryID));
            ProcessModifiedBookingRefund();    //adds a negative payment record == oldBookingAmountDue 
            paymentTa.Insert(DateTime.Today, callNewBookingAmoundDue, newBookingSummaryID, "EFT");
            UpdateNewBookingStatusToComplete();

            MessageBox.Show("Booking Has Been Successfully Updated", "Customer Message"); //could be changed to showing all bookind details or something like an invoice 
                                                                                          // with all necessary details including the new customer booking reference.
            this.paymentTa.Update(fullDs.Payment);
            this.paymentTa.Fill(fullDs.Payment);
            this.bookingSummaryTa.Fill(this.fullDs.BookingSummary);
            this.bookingSummaryTa.Update(this.fullDs.BookingSummary);
            this.bookedRoomTa.Update(this.fullDs.BookedRoom);
            this.bookedRoomTa.Fill(this.fullDs.BookedRoom);
        }

        private void button14_Click(object sender, EventArgs e)
        {
            string newBookingAmountDueString = getAmountDue(comboBox3, comboBox4);
            CaptureNEWBookingRecord(newBookingAmountDueString);      //not this record is incomplete untill the admin confirms the receipt of payment
            decimal oldBookingAmountDue = getOldBookingAmountDue(int.Parse(OldBookingSummaryID));
            decimal newBookingAmountDue = decimal.Parse(newBookingAmountDueString.Substring(2, newBookingAmountDueString.Length - 5));
            decimal finalAmountDue = newBookingAmountDue - oldBookingAmountDue;
            Email.excessOrefund = finalAmountDue;
            int[] a = { -1, (int)finalAmountDue };
            currentBooking.setRoomIDs(a);
            UpdateBooking(newBookingAmountDueString);
            currentBooking.setSummaryID((int)modifyBookingInnerDataGridView.CurrentRow.Cells[4].Value);
            currentUser.setEmailID(modifyBookingInnerDataGridView.CurrentRow.Cells[0].Value.ToString());
            ModifyConfirm m = new ModifyConfirm(finalAmountDue);
            m.ShowDialog(); 
        }

        private void button11_Click(object sender, EventArgs e)
        {
            customerDataGridView.ClearSelection();

            textBox4.Clear();
            textBox6.Clear();
            label36.Visible = false;
            label39.Visible = false;
            panel8.Enabled = false;
            button13.Enabled = false;

            dateTimePicker3.Value = DateTime.Today;
            dateTimePicker4.Value = DateTime.Today;

            bookingSummaryTa.Fill(fullDs.BookingSummary);
            bookedRoomTa.Fill(fullDs.BookedRoom);
        }

        private void dateTimePicker3_ValueChanged(object sender, EventArgs e)
        {
            dateIn = dateTimePicker3.Value.Date;
            dateOut = dateTimePicker4.Value.Date;
            if (dateIsValid())
            {
                label39.Visible = false;
                comboBox3.Enabled = true;
                comboBox4.Enabled = true;
                updateAvailableRoomList();
                loadAvailableSinlges(comboBox3);
                loadAvailableDoubles(comboBox4);
            }
            else
            {
                label39.Visible = true;
                comboBox3.Enabled = false;
                comboBox4.Enabled = false;
            }
        }

        private void dateTimePicker4_ValueChanged(object sender, EventArgs e)
        {
            dateIn = dateTimePicker3.Value.Date;
            dateOut = dateTimePicker4.Value.Date;
            label39.Visible = false;
            if (dateIsValid())
            {
                label39.Visible = false;
                comboBox3.Enabled = true;
                comboBox4.Enabled = true;
                updateAvailableRoomList();
                loadAvailableSinlges(comboBox3);
                loadAvailableDoubles(comboBox4);
            }
            else
            {
                label39.Visible = true;
                comboBox3.Enabled = false;
                comboBox4.Enabled = false;
            }
        }

        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
            textBox6.Text = getAmountDue(comboBox3, comboBox4).ToString();
            numberOfSingleRooms = int.Parse(comboBox3.SelectedItem.ToString());
            if (amountDue != 0)
                button14.Enabled = true;
            else
                button14.Enabled = false;
        }

        private void comboBox4_SelectedIndexChanged(object sender, EventArgs e)
        {
            textBox6.Text = getAmountDue(comboBox3, comboBox4).ToString();
            numberOfDoubleRooms = int.Parse(comboBox4.SelectedItem.ToString());
            if (amountDue != 0)
                button14.Enabled = true;
            else
                button14.Enabled = false;
        }

    */
}
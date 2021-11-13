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
        public void Page_Load(object sender, EventArgs e)
        {
            bookingSummaryTa.Fill(fullDs.BookingSummary);
            bookedRoomTa.Fill(fullDs.BookedRoom);

            dateIn = dateInCalender.SelectedDate;
            dateOut = dateOutCalender.SelectedDate;

            if (dateIn.ToString().Equals(dateOut.ToString()))
                dateOut.AddDays(1);
            
            updateAvailableRoomList();
            //loadAvailableSingles(singleDDList);
            //loadAvailableDoubles(doubleDDList);
           
        }
        protected void dateInCalender_SelectionChanged(object sender, EventArgs e)
        {
            dateIn = dateInCalender.SelectedDate;
            dateOut = dateOutCalender.SelectedDate;
            updateAvailableRoomList();
            loadAvailableSingles(singleDDList);
            loadAvailableDoubles(doubleDDList);
        }

        protected void dateOutCalender_SelectionChanged(object sender, EventArgs e)
        {
            dateIn = dateInCalender.SelectedDate;
            dateOut = dateOutCalender.SelectedDate;
            updateAvailableRoomList();
            loadAvailableSingles(singleDDList);
            loadAvailableDoubles(doubleDDList);
        }
        protected void singleDDList_SelectedIndexChanged(object sender, EventArgs e)
        {
            amountDueTextBox.Text = getAmountDue(singleDDList, doubleDDList);
            numberOfSingleRoomsSelected = int.Parse(singleDDList.SelectedItem.ToString());
            //if (amountDue != 0)
            //  saveBookingButton.Enabled = true;
            //else
            //saveBookingButton.Enabled = false;
        }

        protected void doubleDDList_SelectedIndexChanged(object sender, EventArgs e)
        {
            amountDueTextBox.Text = getAmountDue(singleDDList, doubleDDList);
            numberOfDoubleRoomsSelected = int.Parse(doubleDDList.SelectedItem.ToString());
            //if (amountDue != 0)
            //  saveBookingButton.Enabled = true;
            //else
            //saveBookingButton.Enabled = false;
        }
        protected void saveBookingButton_Click(object sender, EventArgs e)
        {
            updateBookingSummary(getAmountDue(singleDDList, doubleDDList));
        }

        //User Input fields
        string currentCustomerEmailID = CurrentUser.getEmailID();
        DateTime dateIn; // = DateTime.Today;
        DateTime dateOut; // = DateTime.Today.AddDays(1);
        int numberOfNights;
        string bookingMethod = "Online";
        string bookingStatus = "inComplete";
        double amountDue = 0;

        ArrayList availableSingleRooms = new ArrayList();
        ArrayList availableDoubleRooms = new ArrayList();

        int numberOfSingleRoomsSelected = 0; //refers to user selected number of single rooms, or booked rooms
        int numberOfDoubleRoomsSelected = 0; //refers to user selected number of double rooms, or booked rooms

        //Database fields
        FullDataSet fullDs = new FullDataSet();
        FullDataSetTableAdapters.BookingSummaryTableAdapter bookingSummaryTa = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
        FullDataSetTableAdapters.BookedRoomTableAdapter bookedRoomTa = new FullDataSetTableAdapters.BookedRoomTableAdapter();
        //FullDataSetTableAdapters.PaymentTableAdapter paymentTa = new FullDataSetTableAdapters.PaymentTableAdapter();

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

        private void updateBookingSummary(string callAmountDueMethod)
        {
            int[] singleAllocatedRooms = new int[numberOfSingleRoomsSelected];
            int[] doubleAllocatedRooms = new int[numberOfDoubleRoomsSelected];

            bookingSummaryTa.Insert(currentCustomerEmailID, dateIn, dateOut, numberOfNights, bookingMethod, bookingStatus, callAmountDueMethod);
            int summaryID = (int)bookingSummaryTa.getLastRecord();  //NB current last summaryID = 10677
            int summaryIDScalar = (int)bookingSummaryTa.ScalarQuery();
            //int summaryID = fullDs.BookingSummary[fullDs.BookingSummary.Rows.Count].summaryID;  
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
            Email.dateOut = dateOut.ToString("dd/MM/yyyy") + " 12:00 PM";
            Email.numberOfNights = numberOfNights.ToString();
            Email.numberOfSingles = singleAllocatedRooms.Length.ToString();
            Email.numberOfDoubles = doubleAllocatedRooms.Length.ToString();
            Email.singleRoomIDs = arrayToString(singleAllocatedRooms);
            Email.doubleRoomIDs = arrayToString(doubleAllocatedRooms);
            Email.amountDue = callAmountDueMethod;

        }


        /*
        Deleted*
    private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
    {
        dateIn = dateTimePicker1.Value.Date;
        dateOut = dateTimePicker2.Value.Date;
        if (dateIsValid())
        {
            label24.Visible = false;
            comboBox1.Enabled = true;
            comboBox2.Enabled = true;
            updateAvailableRoomList();
            loadAvailableSinlges(this.comboBox1);
            loadAvailableDoubles(this.comboBox2);
        }
        else
        {
            label24.Visible = true;
            comboBox1.Enabled = false;
            comboBox2.Enabled = false;
        }
    }
        Deleted*
    private void dateTimePicker2_ValueChanged(object sender, EventArgs e)
    {
        dateIn = dateTimePicker1.Value.Date;
        dateOut = dateTimePicker2.Value.Date;
        label24.Visible = false;
        if (dateIsValid())
        {
            label24.Visible = false;
            comboBox1.Enabled = true;
            comboBox2.Enabled = true;
            updateAvailableRoomList();
            loadAvailableSinlges(this.comboBox1);
            loadAvailableDoubles(this.comboBox2);
        }
        else
        {
            label24.Visible = true;
            comboBox1.Enabled = false;
            comboBox2.Enabled = false;
        }
    }

    Deleted* Save booking Button
    private void button8_Click(object sender, EventArgs e)
    {
        updateBookingSummary(getAmountDue(comboBox1, comboBox2).ToString());
        comboBox1.Enabled = false;
        comboBox2.Enabled = false;
        button8.Enabled = false;
        dateTimePicker1.Enabled = false;
        dateTimePicker2.Enabled = false;
        this.bookingSummaryTa.Update(this.fullDs.BookingSummary);
        this.bookingSummaryTa.Fill(this.fullDs.BookingSummary);
        bookedRoomTa.Update(fullDs.BookedRoom);
        bookedRoomTa.Fill(fullDs.BookedRoom);

        currentUser.setEmailID(currentCustomerEmailID);
        ConfirmbookingForm c = new ConfirmbookingForm();
        c.ShowDialog();
    }


    Deleted* Dynamic Search
    private void textBox3_TextChanged(object sender, EventArgs e)
    {
        customerTa.FillByAnythingGiven(fullDs.Customer, textBox3.Text);
        customerDataGridView.ClearSelection();
        panel5.Enabled = false;
        label33.Visible = false;

    }

    Deleted* Confirm button
    private void button10_Click(object sender, EventArgs e)
    {
        panel5.Enabled = true;
        dateTimePicker1.Enabled = true;
        dateTimePicker2.Enabled = true;

        //pre populate the fields with booking details we have
    }

    Deleted* selection grid
    private void customerDataGridView_RowHeaderMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
    {
        currentCustomerEmailID = customerDataGridView.CurrentRow.Cells[0].Value.ToString();
        label33.Text = "To Process Booking for: " + customerDataGridView.CurrentRow.Cells[1].Value.ToString() + " " + customerDataGridView.CurrentRow.Cells[2].Value.ToString() + " (" + customerDataGridView.CurrentRow.Cells[0].Value.ToString() + ")";
        label33.Visible = true;
        button10.Enabled = true;
    }

    Deleted* blue clear button, on the left of confirm button.
    private void button12_Click(object sender, EventArgs e)
    {
        customerDataGridView.ClearSelection();

        textBox3.Clear();
        textBox5.Clear();
        label24.Visible = false;
        label33.Visible = false;
        panel5.Enabled = false;
        button10.Enabled = false;

        dateTimePicker1.Value = DateTime.Today;
        dateTimePicker2.Value = DateTime.Today;

        bookingSummaryTa.Update(fullDs.BookingSummary);
        bookingSummaryTa.Fill(fullDs.BookingSummary);
        bookedRoomTa.Update(fullDs.BookedRoom);
        bookedRoomTa.Fill(fullDs.BookedRoom);
    }

         */
    }
}
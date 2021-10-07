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

        protected void Button2_Click(object sender, EventArgs e)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter taBooking = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            taBooking.Fill(fullDs.BookingSummary);
            FullDataSetTableAdapters.PaymentTableAdapter taPayment = new FullDataSetTableAdapters.PaymentTableAdapter();
           


            if (checkCardHoldersName() && checkCardNumber() && checkCVV())
            {
                taPayment.Insert(currentBooking.getSummaryID(), "Credit", DateTime.Today, getAmountDue());
                taPayment.Fill(fullDs.Payment);
                Response.Write("<script language='javascript'>window.alert('Your Payment Was Successful');window.location='Default.aspx';</script>");
                
            }

            if (!checkCardHoldersName())
            {
                this.Label4.Visible = true;
            }
            if (!checkCardNumber())
            {
                this.Label5.Visible = true;
            }
            if (!checkCVV())
            {
                this.Label6.Visible = true;
            }

           
            

        }

        public string getAmountDue()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter taBooking = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            taBooking.Fill(fullDs.BookingSummary);
            for (int i = 0; i < fullDs.BookingSummary.Rows.Count; i++)
            {
                if (fullDs.BookingSummary[i].summaryID == currentBooking.getSummaryID())
                    return fullDs.BookingSummary[i].amountDue;
            }
            return "";
        }

        public bool checkCardHoldersName()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            string e = "";
            for (int i = 0; i < fullDs.Customer.Rows.Count; i++)
            {

                e = fullDs.Customer[i].name + fullDs.Customer[i].surname;
                if(e == TextBox1.Text.Trim())
                {
                    return true;
                }
                    
            }
            return false;
        }

        public bool checkCardNumber()
        {
            if (TextBox2.Text.Length == 16)
            {
                return true;
            }
            return false;
        }

        public bool checkCVV()
        {
            if(TextBox3.Text.Length == 3)
            {
                return true;
            }
            return false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingSummaryTableAdapter taBooking = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
            taBooking.Fill(fullDs.BookingSummary);
            FullDataSetTableAdapters.PaymentTableAdapter taPayment = new FullDataSetTableAdapters.PaymentTableAdapter();
            taPayment.Insert(currentBooking.getSummaryID(), "EFT", DateTime.Today, getAmountDue());
            taPayment.Fill(fullDs.Payment);
            Response.Write("<script language='javascript'>window.alert('Your Payment Was Successful');window.location='Default.aspx';</script>");
        }
    }
}
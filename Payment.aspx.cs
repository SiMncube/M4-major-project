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
            
            //if (monthComboBox.SelectedItem != null && yearComboBox.SelectedItem != null)
               // return true;
           // monthComboBox.BackColor = Color.Red;
            //yearComboBox.BackColor = Color.Red;
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

    }
}
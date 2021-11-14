using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class OTP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ConfirmOTPbt_Click(object sender, EventArgs e)
        {
            if (otbTextBox.Text.Equals(CurrentRegistration.getOtpString()))
            {
                FullDataSet fullDs = new FullDataSet();
                FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
                taCustomer.Fill(fullDs.Customer);
                taCustomer.Insert(CurrentRegistration.getEmail(), CurrentRegistration.getName(), CurrentRegistration.getSurname(), CurrentRegistration.getIdNumber(), CurrentRegistration.getCellNumber(), CurrentRegistration.getPassword(), CurrentRegistration.getStreetName(), CurrentRegistration.getSuburb(), CurrentRegistration.getCity(), CurrentRegistration.getPostalCode());
                taCustomer.Update(fullDs.Customer);
                taCustomer.Fill(fullDs.Customer);
            }
        }
    }
}
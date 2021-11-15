using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class RegisterOTP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void confirmBtn_Click(object sender, EventArgs e)
        {
            if(CurrentRegistration.getOtpString().Equals(otpTextBox.Text))
            {
                FullDataSet fullDs = new FullDataSet();
                FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
                taCustomer.Fill(fullDs.Customer);
                taCustomer.Insert(CurrentRegistration.getEmail(), CurrentRegistration.getName(), CurrentRegistration.getSurname(), CurrentRegistration.getIdNumber(), CurrentRegistration.getCellNumber(), CurrentRegistration.getPassword(), CurrentRegistration.getStreetName(), CurrentRegistration.getSuburb(), CurrentRegistration.getCity(), CurrentRegistration.getPostalCode());
                taCustomer.Update(fullDs.Customer);
                taCustomer.Fill(fullDs.Customer);
                modalBody.InnerHtml = "<p>You have successfully registered, You can now make bookings. Redirecting you to the homepage</p>";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
            }
           else
           {
                modalBody.InnerHtml = "<p>OTP is incorrect please try again</p>";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
            }
        }
    }
}
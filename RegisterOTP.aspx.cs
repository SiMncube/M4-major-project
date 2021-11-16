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
        Timer timer = new Timer();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void confirmBtn_Click(object sender, EventArgs e)
        {
            string temp = CurrentRegistration.getOtpString();
            string temp1 = otpTextBox.Text;
            if (CurrentRegistration.getOtpString().Equals(otpTextBox.Text))
            {
                FullDataSet fullDs = new FullDataSet();
                FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
                taCustomer.Fill(fullDs.Customer);
                taCustomer.Insert(CurrentRegistration.getEmail(), CurrentRegistration.getName(), CurrentRegistration.getSurname(), CurrentRegistration.getIdNumber(), CurrentRegistration.getCellNumber(), CurrentRegistration.getPassword(), CurrentRegistration.getStreetName(), CurrentRegistration.getSuburb(), CurrentRegistration.getCity(), CurrentRegistration.getPostalCode());
                taCustomer.Update(fullDs.Customer);
                taCustomer.Fill(fullDs.Customer);
                modalBody.InnerHtml = "<p>You have successfully registered, You can now make bookings.</p>";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
                confirmBtn.Enabled = false;
            }
           else
           {
                modalBody.InnerHtml = "<p>OTP is incorrect please try again</p>";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
            }
        }
        protected void closeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default");
        }
    }
}
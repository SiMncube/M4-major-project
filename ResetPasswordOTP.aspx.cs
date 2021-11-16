using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class ResetPasswordOTP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            modalBody.InnerHtml = "<p>You have successfully registered, You can now make bookings.</p>";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "$('#myModal').modal('show');", true);
            Context.Response.Write("<script type='text/javascript'>window.frameElement.navigateParent('/Default');</script>");
        }

        protected void confirmBtn_Click(object sender, EventArgs e)
        {
            if(CurrentReset.getOtpString().Equals(otpTextBox.Text))
            {
                
            }
        }
        protected void closeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default");
        }
    }
}
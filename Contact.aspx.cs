using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContactUs_Click(object sender, EventArgs e)
        {
            try
            {
                Email.sendEmail(emailTextBox.Text, subject.Items[subject.SelectedIndex].Text, EmailBody(), emailTextBox.Text);
            }
            catch(Exception ex)
            {
                
                //Response.Write("<script language='javascript'>window.alert('You have entered an invalid email address');window.location='Contact.aspx';</script>");
            }
        }
        public string EmailBody()
        {
            string body = @"<html>
                           <body>";
            body += "<p> Dear Admin please attend to "+ nameTextBox.Text +" on His/Her query</p>";
            body += "<p>" + messageTextBox.Text + "<p>";
            body += "<p> Please attend to them on this email address" + emailTextBox.Text + "</p>";
            body += " </body></html>";
            return body;
        }
    }
}
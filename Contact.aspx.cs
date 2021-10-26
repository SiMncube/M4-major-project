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
                Email.sendEmail(emailTextBox.Text, subject.Items[subject.SelectedIndex].Text, EmailBody(),nameTextBox.Text);
                Email.sendEmail(emailTextBox.Text, subject.Items[subject.SelectedIndex].Text, Email_body());
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
            body += "<h1>"+ subject.Items[subject.SelectedIndex].Text + "</h1>";
            body += "<h3> Dear Admin please attend to "+ nameTextBox.Text +" on His/Her query</h3>";
            body += "<h3>Query</h3>";
            body += "<p><strong>" + messageTextBox.Text + "</strong><p>";
            body += "<p><strong> Please attend to them on this email address : " + emailTextBox.Text + "</strong></p>";
            body += " </body></html>";
            return body;
        }
        public string Email_body()
        {
            string body = @"<html><body>";
            body += "<h3>Dear "+ nameTextBox.Text +", Thank you for contacting The Cottage BnB</h3>";
            body += "<p><strong>We have received you query and one of our support staff will be in contact shortly</strong><p>";
            body += "<p>Thank you";
            body += "<br/>The Cottage BnB support team</p>";
            body += " </body></html>";
            return body;
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class Register : System.Web.UI.Page
    {
        string otp;
        public static int check = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            if(isValid())
            {
                string rand = randomOTP();
                string temp = "";
                for(int i = 0; i < rand.Length;i++)
                {
                    if (rand[i] != ' ')
                        temp += rand[i];
                }
                CurrentRegistration.setEmail(capFirst(emailTextBox.Text));
                CurrentRegistration.setName(capFirst(nameTextBox.Text));
                CurrentRegistration.setSurname(capFirst(surnameTextBox.Text));
                CurrentRegistration.setIdNumber(idTextBox.Text);
                CurrentRegistration.setCellNumber(cellTextBox.Text);
                CurrentRegistration.setPassword(passwordTextBox.Text);
                CurrentRegistration.setStreetName(capFirst(streetTextBox.Text));
                CurrentRegistration.setSuburb(capFirst(surbubNameTextBox.Text));
                CurrentRegistration.setCity(capFirst(cityTextBox.Text));
                CurrentRegistration.setPostalCode(postalTextBox.Text);
                CurrentRegistration.setOtpString(temp);
                Email.sendEmail(emailTextBox.Text, "Sign up OTP confirmation", htmlOTP(rand));
                Response.Redirect("/RegisterOTP");
            }

        }
        private string capFirst(string s)
        {
            return (s[0] + "").ToUpper() + s.Substring(1).ToLower();
        }
        private string htmlOTP(string temp)
        {
            string body = @"<html>
                           <body>";
            body += "<p>Dear " + nameTextBox.Text + ",</p><p>There was a request to change your password!!</p><p>If you did not make this request then please ignore this email</p>";
            body += "<p> Otherwise, please use the One Time Pin(OTP) below to change your password<br>";
            body += "Here's your One Time Pin(OTP) : <strong>" + temp + "</strong></p>";
            body += "<p>This is an autogenerated email, for enquiries<br>call: +27 64 090 3388<br>Or email: sonya@TheCottageBnB.co.za</p>";
            body += " </body></html>";
            return body;
        }
        public string randomOTP()
        {
            Random r = new Random();
            int randNum = r.Next(1000000);
            string temp = randNum.ToString("D6");
            otp = temp;
            string random = null;
            for (int i = 0; i < 6; i++)
                random += temp[i] + " ";

            return random.Substring(0, 11);
        }
        private bool isDigit(char ch)
        {
            if (ch >= '0' && ch <= '9')
                return true;
            return false;
        }
        private bool isAllDigit(string s)
        {
            for (int i = 0; i < s.Length; i++)
            {
                if (!isDigit(s[i]))
                    return false;
            }
            return true;
        }
        private bool isLetter(char c)
        {
            if (c >= 'a' && c <= 'z')
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
            int count = 0;
            if (!isAllLetters(nameTextBox.Text) || nameTextBox.Text.Length < 3)
            {
                nameTextBox.BackColor = System.Drawing.Color.Red;
                count++;
            }
            if (!isAllLetters(surnameTextBox.Text) || surnameTextBox.Text.Length < 3)
            {
                surnameTextBox.BackColor = System.Drawing.Color.Red;
                count++;
            }
            return count == 0;
        }
        private bool AddrressIsValid()
        {
            if (!isAllDigit(postalTextBox.Text) || postalTextBox.Text.Length != 4)
            {
                postalTextBox.BackColor = System.Drawing.Color.Red;
                return false;
            }
            return true;
        }
        private bool IdIsValid()
        {
            if (!isAllDigit(idTextBox.Text) || idTextBox.Text.Length != 13)
            {
                idTextBox.BackColor = System.Drawing.Color.Red;
                return false;
            }
            return true;
        }
        private bool CellNumberisValid()
        {
            if (!isAllDigit(cellTextBox.Text) || cellTextBox.Text.Length != 10)
            {
                cellTextBox.BackColor = System.Drawing.Color.Red;
                return false;
            }
            return true;
        }
        private bool isValid()
        {
            int count = 0;
            if (!nameIsValid())
                count++;
            if (!AddrressIsValid())
                count++;
            if (!CellNumberisValid())
                count++;
            if (!IdIsValid())
                count++;
            if (!PasswordIsValid())
                count++;
            return count == 0;
        }
        private bool EmailISValid()
        {
            if(!emailTextBox.Text.Equals(confirmTextBox.Text))
            {
                emailTextBox.BackColor = System.Drawing.Color.Red;
                confirmTextBox.BackColor = System.Drawing.Color.Red;
            }
            if (emailTextBox.Text != null)
            {
                EmailAddressAttribute email = new EmailAddressAttribute();
                if (!email.IsValid(emailTextBox.Text))
                {
                    emailTextBox.BackColor = System.Drawing.Color.Red;
                    return false;
                }
                if (EmailIsRegistred())
                {
                    emailTextBox.BackColor = System.Drawing.Color.Red;
                    return false;
                }
                return true;
            }
            emailTextBox.BackColor = System.Drawing.Color.Red;
            return false;
        }
        private bool EmailIsRegistred()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            for (int i = 0; i < fullDs.Customer.Rows.Count; i++)
            {
                if (fullDs.Customer[i].emailID.Equals(emailTextBox.Text, StringComparison.OrdinalIgnoreCase))
                    return true;
            }
            return false;
        }
        private bool PasswordIsValid()
        {
            if (passwordTextBox.Text != confirmTextBox.Text)
            {
                passwordTextBox.BackColor = System.Drawing.Color.Red;
                confirmTextBox.BackColor = System.Drawing.Color.Red;
                return false;
            }
            if (passwordTextBox.Text.Length < 8)
            {
                passwordTextBox.BackColor = System.Drawing.Color.Red;
                confirmTextBox.BackColor = System.Drawing.Color.Red;
                return false;
            }
            return true;
        }
        private void colorBoxes()
        {
            nameTextBox.BackColor = System.Drawing.Color.White;
            surnameTextBox.BackColor = System.Drawing.Color.White;
            idTextBox.BackColor = System.Drawing.Color.White;
            cellTextBox.BackColor = System.Drawing.Color.White;
            postalTextBox.BackColor = System.Drawing.Color.White;
            emailTextBox.BackColor = System.Drawing.Color.White;
            passwordTextBox.BackColor = System.Drawing.Color.White;
            confirmTextBox.BackColor = System.Drawing.Color.White;
        }
    }
}
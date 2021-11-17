﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class AdminRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setUser.InnerText = currentAdminName();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            colorBoxes();
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            if (signUIsValid())
            {
                string temp = generatePassword();
                Email.sendEmail(emailTextBox.Text,"Welcome to the Cottage BnB",htmlWelcome(temp));
                taCustomer.Insert(capFirst(emailTextBox.Text), capFirst(nameTextBox.Text), capFirst(surnameTextBox.Text), idTextBox.Text, cellTextBox.Text, temp, capFirst(streetTextBox.Text), capFirst(surbubNameTextBox.Text), capFirst(cityTextBox.Text), postalTextBox.Text);
                Response.Write("<script language='javascript'>window.alert('You have successfully registered');window.location='AdminRegister.aspx';</script>");
            }
        }
        private bool signUIsValid()
        {
            int count = 0;
            if (!nameIsValid())
                count++;
            if (!AddrressIsValid())
                count++;
            if (!CellNumberisValid())
                count++;
            if (!EmailISValid())
                count++;
            if (!PasswordIsValid())
                count++;
            if (!IdIsValid())
                count++;
            return count == 0;
        }
        private string capFirst(string s)
        {
            return (s[0] + "").ToUpper() + s.Substring(1).ToLower();
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
            return count == 0;
        }
        private bool EmailISValid()
        {
            if (!emailTextBox.Text.Equals(confirmTextBox.Text))
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
        private string currentAdminName()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.StaffTableAdapter taStaff = new FullDataSetTableAdapters.StaffTableAdapter();
            taStaff.Fill(fullDs.Staff);
            for (int i = 0; i < fullDs.Staff.Rows.Count; i++)
            {
                if (fullDs.Staff[i].emailID.Equals(CurrentUser.getEmailID(), StringComparison.OrdinalIgnoreCase))
                    return fullDs.Staff[i].surname + " " + fullDs.Staff[i].name;
            }
            return "";
        }
        private string htmlWelcome(string s)
        {
            string body = @"<html>
                           <body>";
            body += "<h1>Welcome to The Cottage BnB, " + nameTextBox.Text + "!</h1><p><strong>This email includes your account details, so please keep it safe.</strong></p><p>We’re thrilled to see you here!</p>";
            body += "<p>We’re confident that The Cottage BnB will give you an enjoyable and unforgettable experience everytime you visit.</p>";
            body += "<p>Here's your Auto generated password :  <strong>" + s + "</strong><br>You can now login and change you password.</p>";
            body += "<p>Take care!</p>";
            body += "<p>This is an autogenerated email, for enquiries<br>call: +27 64 090 3388<br>Or email: sonya@TheCottageBnB.co.za</p>";
            body += " </body></html>";
            return body;
        }
        private string generatePassword()
        {
            StringBuilder builder = new StringBuilder();
            Random random = new Random();
            char ch;
            for (int i = 0; i < 8; i++)
            {
                ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
                builder.Append(ch);
            }
            return builder.ToString();
        }
    }
}
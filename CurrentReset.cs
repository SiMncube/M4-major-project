using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace M4_major_project
{
    public class CurrentReset
    {
        private static string emailID;
        private static string otpString;
        private static string newPassword;
        public static void setEmailID(string e)
        {
            emailID = e;
        }

        public static string getEmailID()
        {
            return emailID;
        }
        public static void setOtpString(string e)
        {
            otpString = e;
        }

        public static string getOtpString()
        {
            return otpString;
        }
        public static void setNewPassword(string e)
        {
            newPassword = e;
        }

        public static string getNewPassword()
        {
            return newPassword;
        }
    }
}
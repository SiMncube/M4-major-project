using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace M4_major_project
{
    public class CurrentUser
    {
        private static string emailID;
        public static void setEmailID(string e)
        {
            emailID = e;
        }

        public static string getEmailID()
        {
            return emailID;
        }
    }
}
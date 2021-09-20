using System;

public static class currentUser
{
        private static string emailID;
        private static bool isAdmin = false;
        public static string getEmailID()
        {
            return emailID;
        }
        public static void setEmailID(string e)
        {
            emailID = e;
        }
}

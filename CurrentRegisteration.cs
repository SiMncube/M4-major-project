using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace M4_major_project
{
    public class CurrentRegistration
    {
        private static string name;
        private static string surname;
        private static string idNumber;
        private static string streetName;
        private static string city;
        private static string email;
        private static string suburb;
        private static string postalCode;
        private static string password;

        public static void setName(string n)
        {
            name = n;
        }
        public static string getName()
        {
            return name;
        }
        public static void setSurname(string n)
        {
            surname = n;
        }
        public static string getSurname()
        {
            return surname;
        }
        public static void setIdNumber(string n)
        {
            idNumber = n;
        }
        public static string getIdNumber()
        {
            return idNumber;
        }
    }
}
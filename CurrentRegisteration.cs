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
        private static string cellNumber;
        private static string otpString;
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
        public static void setStreetName(string n)
        {
            streetName = n;
        }
        public static string getStreetName()
        {
            return streetName;
        }
        public static void setCity(string n)
        {
            city = n;
        }
        public static string getCity()
        {
            return city;
        }
        public static void setEmail(string n)
        {
            email = n;
        }
        public static string getEmail()
        {
            return email;
        }
        public static void setSuburb(string n)
        {
            suburb = n;
        }
        public static string getSuburb()
        {
            return suburb;
        }
        public static void setPostalCode(string n)
        {
            postalCode = n;
        }
        public static string getPostalCode()
        {
            return postalCode;
        }
        public static void setPassword(string n)
        {
            password = n;
        }
        public static string getPassword()
        {
            return password;
        }
        public static void setCellNumber(string n)
        {
            cellNumber = n;
        }
        public static string getCellNumber()
        {
            return cellNumber;
        }
        public static void setOtpStringr(string n)
        {
            otpString = n;
        }
        public static string getOtpString()
        {
            return otpString;
        }
    }
}
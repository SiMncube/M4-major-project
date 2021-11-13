using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace M4_major_project
{

    public class currentBooking
    {
        private static int summaryID;
        private static int[] roomIDs;
        private static string numberSingles;
        private static string numberDoubles;
        public static int getSummaryID()
        {
            return summaryID;
        }
        public static void setSummaryID(int s)
        {
            summaryID = s;
        }
        public static int[] getRoomIDs()
        {
            return roomIDs;
        }
        public static void setRoomIDs(int[] r)
        {
            roomIDs = r;
        }
        public void NumberSingles(string n)
        {
            numberSingles = n;
        }
        public string getNumberSingles()
        {
            return numberSingles;
        }
        public void setNumberDoubles(string n)
        {
            numberDoubles = n;
        }
        public string getNumberDoubles()
        {
            return numberDoubles;
        }
    }
}
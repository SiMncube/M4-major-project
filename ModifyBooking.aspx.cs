﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class ModifyBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            for (int i = 0; i < 10; i++)
            {
                doubleBox.Items.Add(i + " ");
            }

            for (int i = 0; i < 10; i++)
            {
                singleBox.Items.Add(i + " ");
            }

        }
        string currentCustomerEmailID;
        DateTime dateIn = DateTime.Today;
        DateTime dateOut = DateTime.Today;

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlDataSource1.DataBind();
            //DetailsView1 = (DetailsView)SqlDataSource1.SelectCommand;

            //FullDataSet ds = new FullDataSet();
            //DetailsView dv = new DetailsView();
            //dv.DataSource = SqlDataSource1;
            Label1.Text = SqlDataSource1.SelectCommand;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
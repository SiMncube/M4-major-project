using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class AdminCancel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (adminTextBox.Text.Length > 0)
            {
                FullDataSet fullDs = new FullDataSet();
                FullDataSetTableAdapters.BookingInnerTableAdapter taBookingInner = new FullDataSetTableAdapters.BookingInnerTableAdapter();
                taBookingInner.FillBy(fullDs.BookingInner,adminTextBox.Text.Trim());
                DataTable dt = new DataTable();
                dt = taBookingInner.GetDataBy(adminTextBox.Text);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}
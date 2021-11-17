using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class AdminViewBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setUser.InnerText = currentAdminName();
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.BookingInnerTableAdapter taBookingInner = new FullDataSetTableAdapters.BookingInnerTableAdapter();
            taBookingInner.FillBy(fullDs.BookingInner, adminTextBox.Text.Trim());
            DataTable dt = new DataTable();
            dt = taBookingInner.GetDataBy(GridView1.SelectedRow.Cells[5].Text);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            if (GridView1.SelectedIndex > -1)
            {
                bookingText.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (adminTextBox.Text.Length > 0)
            {
                FullDataSet fullDs = new FullDataSet();
                FullDataSetTableAdapters.BookingInnerTableAdapter taBookingInner = new FullDataSetTableAdapters.BookingInnerTableAdapter();
                taBookingInner.FillBy(fullDs.BookingInner, adminTextBox.Text.Trim());
                DataTable dt = new DataTable();
                dt = taBookingInner.GetDataBy(adminTextBox.Text);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                bookingText.Visible = false;
            }
        }
    }
}
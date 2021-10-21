using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class MonthlyReport : System.Web.UI.Page
    {
        FullDataSet dataset = new FullDataSet();
        FullDataSetTableAdapters.PaymentTableAdapter TAPayment = new FullDataSetTableAdapters.PaymentTableAdapter();
        FullDataSetTableAdapters.BookingSummaryTableAdapter TABooking = new FullDataSetTableAdapters.BookingSummaryTableAdapter();
        CrystalDecisions.CrystalReports.Engine.ReportDocument report = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
        string repPath = "";

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DateTime StartDate = new DateTime(Convert.ToInt32(DropDownList3.SelectedValue), Convert.ToInt32(DropDownList1.SelectedValue), 1);
            int numberOFDays = DateTime.DaysInMonth(Convert.ToInt32(DropDownList4.SelectedValue), Convert.ToInt32(DropDownList2.SelectedValue));
            DateTime EndDate = new DateTime(Convert.ToInt32(DropDownList4.SelectedValue), Convert.ToInt32(DropDownList2.SelectedValue), numberOFDays);
            TAPayment.Fill(dataset.Payment);
            TABooking.Fill(dataset.BookingSummary);
            repPath = Server.MapPath("CrystalReport4.rpt");
            report.Load(repPath);
            report.SetDataSource(dataset);
            report.SetParameterValue("StartDate", StartDate);
            report.SetParameterValue("EndDate", EndDate);
            

        }
    }
}
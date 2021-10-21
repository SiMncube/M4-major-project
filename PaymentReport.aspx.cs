using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class PaymentReport : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
             FullDataSet ds = new FullDataSet();
             FullDataSetTableAdapters.PaymentTableAdapter taPayment = new FullDataSetTableAdapters.PaymentTableAdapter();
             CrystalDecisions.CrystalReports.Engine.ReportDocument rpt = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            
             String rep = Server.MapPath("CrystalReport1.rpt");
             taPayment.Fill(ds.Payment);
            rpt.Load(rep);
            rpt.SetDataSource(ds);
            CrystalReportViewer1.ReportSource= rpt;
            CrystalReportViewer1.DataBind();

            //set.SetDatabaseLogon("username", "password", "sql-server", "database"); // this line pass the login parameters required for login
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CrystalReportViewer1.RefreshReport();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class Admin : System.Web.UI.Page
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
    }
}
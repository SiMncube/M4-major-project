using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=146.230.177.46\\ist3;database=group7;User ID=group7;Password=6d52h");
            conn.Open();
            string checkUser = "select count(*) from Customer where emailID='" + TextBox3.Text + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPassword = "select password from Customer where password='" + TextBox2.Text + "'";
                SqlCommand passwordCom = new SqlCommand(checkPassword, conn);
                string password = "";
                if (passwordCom.ExecuteScalar() == null)
                {
                    Response.Write("Your login was unsuccessful");
                    
                }
                else
                {
                    password = passwordCom.ExecuteScalar().ToString();
                }
                if (password.Equals(TextBox2.Text))
                {
                    Response.Redirect("/Default");
                    Session["New"] = TextBox3.Text;
                    Response.Write("Your login was successful");

                }


            }
            else
            {
                Response.Write("Your login was unsuccessful");
            }
            
        }
    }
}
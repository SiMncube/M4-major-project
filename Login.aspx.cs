using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace M4_major_project
{
    public partial class Login : System.Web.UI.Page
    {
        public static int check = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            /**
             * <form------ class="sign">
        <fieldset>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="Name" class="form-label mt-4"></asp:Label>
                    <asp:TextBox ID="nameTextBox" runat="server" class="form-control" placeholder="Enter name" required=""></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <asp:Label ID="Label2" runat="server" Text="Surname" class="form-label mt-4"></asp:Label>
                    <asp:TextBox ID="surnameTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Id Number" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="idTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Street name" class="form-label mt-4" ></asp:Label>
                <asp:TextBox ID="streetTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Surburb" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="surbubNameTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" Text="City" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="cityTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label7" runat="server" Text="Postal code" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="postalTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label8" runat="server" Text="Cell phone" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="cellTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label9" runat="server" Text="Email" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="emailTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label10" runat="server" Text="Password" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="passwordTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label11" runat="server" Text="Confirm password" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="confirmTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-primary"/>
        </fieldset>
    </form------>.
    <form>**/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (loginValid())
            {
                check = 1;
                ViewState["CurrentUserEmail"] = TextBox1.Text;
                Response.Redirect("/Default");
            }
            else
                Label3.Visible = true;
        }
        private bool userNameIsCorrect()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            HtmlAnchor btn1 = (HtmlAnchor)FindControl("setUser");
            for (int i = 0; i < fullDs.Customer.Rows.Count; i++)
            {
                if (fullDs.Customer[i].emailID.Equals(TextBox1.Text, StringComparison.OrdinalIgnoreCase))
                    return true;
            }
            return false;
        }
        private bool userPasswordIsCorrect()
        {
            FullDataSet fullDs = new FullDataSet();
            FullDataSetTableAdapters.CustomerTableAdapter taCustomer = new FullDataSetTableAdapters.CustomerTableAdapter();
            taCustomer.Fill(fullDs.Customer);
            for (int i = 0; i < fullDs.Customer.Rows.Count; i++)
            {
                if (fullDs.Customer[i].password == TextBox2.Text && fullDs.Customer[i].emailID.Equals(TextBox1.Text, StringComparison.OrdinalIgnoreCase))
                    return true;
            }
            return false;
        }
        private bool loginValid()
        {
            return userNameIsCorrect() && userPasswordIsCorrect();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label3.Visible = false;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            Label3.Visible= false;
        }
    }
}
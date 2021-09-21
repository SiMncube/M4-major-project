<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="M4_major_project.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="forgotStyle.css" />
    <div class="center">
        <form method="post">
            <h1>Forgot password</h1>
            <div class="txt_field">
                <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
            </div>
            <div id="loginButton">
                <asp:Button ID="Button1" runat="server" Text="Reset password" />
            </div>

            <div class="signup_link">
                Don&#39;t have an account?
                <asp:LinkButton Text="Signup" ID="LinkButton1" runat="server"></asp:LinkButton>
            </div>
        </form>
    </div>
</asp:Content>

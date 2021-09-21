<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="M4_major_project.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="forgotStyle.css" />
    <div class="forgot">
        <h1>Forgot Password</h1>
        <br />
        <asp:Label ID="Label2" Visible="false" runat="server" Text="Invalid email, please try again" CssClass="auto-style1" ForeColor="Red"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="emailTextBox" runat="server" required=""></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Reset password" OnClick="Button1_Click" />
        <br />
        <div class="signup_link">
                Don&#39;t have an account?
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Signup</asp:LinkButton>
        </div>
    </div>
</asp:Content>

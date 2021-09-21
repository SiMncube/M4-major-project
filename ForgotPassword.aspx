<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="M4_major_project.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="forgotStyle.css" />
    <div class="center">
        <h1>Forgot password</h1>
        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Reset password" />
        Don&#39;t have an account?
        <asp:LinkButton Text="Signup" ID="LinkButton1" runat="server"></asp:LinkButton>
    </div>
</asp:Content>

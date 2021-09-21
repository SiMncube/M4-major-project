<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="M4_major_project.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="changePasswordStyle.css" />
    <div class="changePassword">
            <h1>Change password</h1>
            <br />
            <asp:Label ID="Label1" runat="server" Text="New Password"></asp:Label>
            <br />
            <asp:TextBox ID="newTextBox" runat="server" required=""></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Confirm password"></asp:Label>
            <br />
            <asp:TextBox ID="confirmTextBox" runat="server" required=""></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Change password" OnClick="Button1_Click" />
    </div>
</asp:Content>

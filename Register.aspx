<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="M4_major_project.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="registerStyle.css" />
</head>
<body>
    <div class="center">
        <form method="post" runat="server">
            <h1>Sign up</h1>
            <asp:Label ID="Label1" runat="server" Text="First name"></asp:Label>
            <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Surname"></asp:Label>
            <asp:TextBox ID="surnameTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Id Number"></asp:Label>
            <asp:TextBox ID="idTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Street name"></asp:Label>
            <asp:TextBox ID="streetTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Surburb"></asp:Label>
            <asp:TextBox ID="surbubNameTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
            <asp:TextBox ID="cityTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Postal code"></asp:Label>
            <asp:TextBox ID="postalTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Cell phone"></asp:Label>
            <asp:TextBox ID="cellTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="passwordTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Confirm password"></asp:Label>
            <asp:TextBox ID="confirmTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="signUpButton" runat="server" Text="Register" OnClick="signUpButton_Click" />
        </form>
    </div>
</body>
</html>

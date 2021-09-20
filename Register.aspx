<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="M4_major_project.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label12" runat="server" Text="Sign up"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="First name"></asp:Label>
        <br />
        <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Surname"></asp:Label>
        <br />
        <asp:TextBox ID="surnameTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Id Number"></asp:Label>
        <br />
        <asp:TextBox ID="idTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Street name"></asp:Label>
        <br />
        <asp:TextBox ID="streetTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Surburb"></asp:Label>
        <br />
        <asp:TextBox ID="surbubNameTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
        <br />
        <asp:TextBox ID="cityTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Postal code"></asp:Label>
        <br />
        <asp:TextBox ID="postalTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Cell phone"></asp:Label>
        <br />
        <asp:TextBox ID="cellTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="passwordTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Confirm password"></asp:Label>
        <br />
        <asp:TextBox ID="confirmTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="signUpButton" runat="server" Text="Register" />
    </form>
</body>
</html>

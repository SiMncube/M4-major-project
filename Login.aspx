<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="M4_major_project.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="loginStyle.css" />
</head>
<body>
    <div class="center">
        <h1>Login</h1>
        <form method="post" runat="server">
            <div class="txt_field">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" required=""></asp:TextBox>
            </div>
            <div class="txt_field">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" required="" ></asp:TextBox>
            </div>
            <div class="pass">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Forgot password?</asp:LinkButton>
            </div>
            <div id="loginButton">
                <asp:Button ID="Button1" runat="server" Text="Login" Height="50px" Width="100%" BackColor="#3399FF" ForeColor="White" OnClick="Button1_Click" />
            </div>
            <div class="signup_link">
                Don&#39;t have an account?
                <asp:LinkButton Text="Signup" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ></asp:LinkButton>
            </div>
        </form>
    </div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
</body>
</html>




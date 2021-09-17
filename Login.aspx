<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="M4_major_project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Login</title>
    <link rel="stylesheet" href="loginStyle.css" />
</head>
<body>
    <div class="center">
        <h1>Login</h1>
        <form id="form1" method="post">
            <div class="txt_field">
                <input type="text" name="emailTextbox" id="textBox1" required="" runat="server"/>
                <label>Email</label>
            </div>
            <div class="txt_field">
                <input type="text" name="passwordTextbox" id="textBox2" required="" runat="server"/>
                <label>Password</label>
            </div>
            <div class="pass">Forgot Password</div>
            <input type="submit" value="Login" id="loginButton" runat="server"/>
            <div class="signup_link" id="signUpLink" runat="server">
                Don't have an account? <a href="#">Signup</a>
            </div>
        </form>
    </div>
</body>
</html>

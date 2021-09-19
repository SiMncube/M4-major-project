<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="M4_major_project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: left;
            width: 300px;
        }
        .auto-style12 {
            text-align: center;
            height: 23px;
        }
        .auto-style14 {
            text-align: right;
            width: 313px;
        }
        .auto-style15 {
            width: 41%;
            height: 57px;
        }
        .auto-style16 {
            height: 635px;
            width: 1356px;
           
        }
        .auto-style17 {
            height: 181px;
            width: 554px;
        }
        .auto-style18 {
            width: 200px;
            text-align: center;
        }
        .auto-style19 {
            height: 50px;
            text-align: right;
            width: 313px;
        }
        .auto-style20 {
            height: 50px;
            width: 200px;
        }
        .auto-style21 {
            height: 50px;
            text-align: left;
            width: 300px;
        }
    </style>
    <link rel="stylesheet" href="loginStyle.css" />
</head>
<body style="margin-left: 0px; margin-top: 0px">
    <form id="form1" runat="server">
        <div class="auto-style16" style="background-image: url('Images/wallpaperflare.com_wallpaper.jpg')">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            
            <table class="auto-style15" align="center">
                
                    <td class="auto-style12" style="border-style: groove; padding: 10px 0px 10px 0px; background-color: #FFFFFF; color: #000000; font-size: large;">
                        <br />
                        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="LOGIN TO YOUR ACCOUNT" Font-Size="X-Large"></asp:Label>
                        <br />
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="91px" ImageUrl="~/Images/png-clipart-login-computer-icons-avatar-icon-monochrome-black.png" Width="205px" />
                    </td>
                
            </table>
            
            <table class="auto-style17" align="center" style="border-style: groove; background-color: #FFFFFF; font-family: 'Times New Roman', Times, serif;">
                
                    <td class="auto-style19" style="background-color: #FFFFFF">Username</td>
                    <td class="auto-style20">
                        <div class="txt_field">
                            <asp:TextBox ID="TextBox1" runat="server" Width="191px" Height="25px" BorderStyle="Groove"></asp:TextBox>
                        </div>
                    </td>
                    <td class="auto-style21">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">Password</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="TextBox2" runat="server" Width="193px" Height="25px" BorderStyle="Groove"></asp:TextBox>
                    </td>
                    <td class="auto-style21">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Incorrect Password" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="176px" BackColor="Blue" BorderColor="#0000CC" ForeColor="White" Height="40px" BorderStyle="Groove" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                </table>
            <br />
        </div>
    </form>
</body>
    
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="M4_major_project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: left;
            width: 300px;
            height: 70px;
        }
        .auto-style12 {
            text-align: center;
            height: 23px;
            width: 538px;
        }
        .auto-style14 {
            text-align: right;
            width: 313px;
            height: 70px;
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
            height: 70px;
        }
        .auto-style22 {
            height: 56px;
            text-align: right;
            width: 313px;
        }
        .auto-style23 {
            height: 56px;
            width: 200px;
            border-radius: 49px;
        }
        .auto-style24 {
            height: 56px;
            text-align: left;
            width: 300px;
        }
        .auto-style25 {
            height: 58px;
            text-align: right;
            width: 313px;
        }
        .auto-style26 {
            height: 58px;
            width: 200px;
        }
        .auto-style27 {
            height: 58px;
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
            
            <table class="auto-style15" align="center" style="border-style: groove">
                
                    <td class="auto-style12" style="background-color: #FFFFFF; color: #000000; font-size: large;">
                        
                        <br />
                        
                        <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="LOGIN" Font-Size="X-Large"></asp:Label>
                        
       
                        <br />
                        <br />
                        
       
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="109px" ImageUrl="~/Images/png-clipart-login-computer-icons-avatar-icon-monochrome-black.png" Width="204px" />
                    </td>
                
            </table>
            
            <table class="auto-style17" align="center" style="border-style: groove; background-color: #FFFFFF; font-family: 'Times New Roman', Times, serif;">
                
                    <td class="auto-style25" style="background-color: #FFFFFF">Username</td>
                    <td class="auto-style26">
                        <div class="txt_field">
                            <asp:TextBox ID="TextBox1" runat="server" Width="191px" Height="25px" BorderStyle="Groove"></asp:TextBox>
                        </div>
                    </td>
                    <td class="auto-style27">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">Password</td>
                    <td class="auto-style23">
                        <asp:TextBox ID="TextBox2" runat="server" Width="193px" Height="25px" BorderStyle="Groove"></asp:TextBox>
                    </td>
                    <td class="auto-style24">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Incorrect Password" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style18">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="176px" BackColor="Blue" BorderColor="#000066" ForeColor="White" Height="45px" BorderStyle="Groove" Font-Size="Medium" />
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                </table>
            <br />
        </div>
    </form>
</body>
    
</html>

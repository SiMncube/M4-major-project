<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="M4_major_project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 23px;
            text-align: left;
            width: 300px;
        }
        .auto-style3 {
            text-align: left;
            width: 300px;
        }
        .auto-style4 {
            height: 23px;
            text-align: right;
            width: 333px;
        }
        .auto-style8 {
            height: 23px;
            width: 200px;
            }
        .auto-style12 {
            text-align: center;
            height: 23px;
        }
        .auto-style13 {
            width: 200px;
        }
        .auto-style14 {
            text-align: right;
            width: 333px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style16" style="background-image: url('Images/wallpaperflare.com_wallpaper.jpg')">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            
            <table class="auto-style15" align="center">
                
                    <td class="auto-style12" style="background-color: #3333FF; color: #000000; font-size: large;">
                        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="LOGIN TO YOUR ACCOUNT"></asp:Label>
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="143px" ImageUrl="~/Images/blue.jpg" Width="181px" />
                    </td>
                
            </table>
            
            <table class="auto-style17" align="center" style="background-color: #3333FF">
                
                    <td class="auto-style14" style="background-color: #3333FF">Username</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TextBox3" runat="server" Width="191px" Height="21px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Username required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter valid email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Password</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox2" runat="server" Width="193px" Height="18px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="Label2" runat="server" BackColor="#3333FF" ForeColor="Red" Text="Incorrect Password" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="176px" BackColor="Blue" BorderColor="#0000CC" ForeColor="White" Height="46px" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                </table>
            <br />
        </div>
    </form>
</body>
    
</html>

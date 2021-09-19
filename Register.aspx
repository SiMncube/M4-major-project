<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="M4_major_project.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 49%;
            height: 99px;
        }
        .auto-style2 {
            text-align: right;
            width: 365px;
        }
        .auto-style3 {
            text-align: right;
            height: 23px;
            width: 365px;
        }
        .auto-style4 {
            height: 23px;
            width: 283px;
        }
        .auto-style5 {
            width: 148px;
            text-align: left;
        }
        .auto-style6 {
            height: 23px;
            width: 148px;
            text-align: left;
        }
        .auto-style7 {
            text-align: right;
            height: 31px;
            width: 365px;
        }
        .auto-style8 {
            width: 148px;
            height: 31px;
            text-align: left;
        }
        .auto-style9 {
            height: 31px;
            width: 283px;
        }
        .auto-style10 {
            width: 283px;
        }
        .auto-style11 {
            width: 365px;
            height: 37px;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            width: 49%;
            height: 353px;
        }
        .auto-style14 {
            height: 651px;
            width: 1350px;
            margin-right: 45px;
        }
        .auto-style15 {
            width: 148px;
            height: 37px;
        }
        .auto-style16 {
            width: 283px;
            height: 37px;
        }
        .auto-style17 {
            text-align: right;
            height: 14px;
            width: 365px;
        }
        .auto-style18 {
            height: 14px;
            width: 148px;
            text-align: left;
        }
        .auto-style19 {
            height: 14px;
            width: 283px;
        }
    </style>
</head>
<body style="width: 1014px; height: 547px; margin-left: 0px; margin-top: 0px;"; "margin-left: 0px; margin-top: 0px">
    <form id="form1" runat="server" style="background-image: url('Images/wallpaperflare.com_wallpaper.jpg')" class="auto-style14">
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style12" style="border-style: groove; background-color: #FFFFFF; color: #000000; font-size: x-large; font-family: 'Times New Roman', Times, serif;">
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Sign Up" BackColor="White"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        
        <table class="auto-style13" align="center" style="border-style: groove; background-color: #FFFFFF; font-family: 'Times New Roman'; color: #000000;">
            
                <td class="auto-style2">First name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="169px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Last name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Width="169px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Street address line 1</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server" Width="169px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Street address line 2</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="169px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">City</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox5" runat="server" Width="169px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Postal code</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox6" runat="server" Width="169px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Must be 4 digits" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ID number</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox7" runat="server" Width="169px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Must be 13 digits" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Cell number</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox8" runat="server" Width="169px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox8" ErrorMessage="Must be 10 digits" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Email</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox9" runat="server" Width="169px" Height="24px"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox9" ErrorMessage="Enter valid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox9" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox10" runat="server" Width="169px" Height="20px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox10" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Confirm password</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox11" runat="server" Width="169px" Height="21px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox10" ControlToValidate="TextBox11" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style15">
                    
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" Width="181px" BackColor="Lime" ForeColor="White" Height="41px" BorderColor="Lime" BorderStyle="Groove" Font-Size="Medium" />
                    
                </td>
                <td class="auto-style16"></td>
            </tr>
            </table>
    </form>
</body>
</html>

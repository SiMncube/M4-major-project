<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="M4_major_project.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 49%;
            height: 62px;
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
            height: 26px;
            width: 365px;
        }
        .auto-style8 {
            width: 148px;
            height: 26px;
            text-align: left;
        }
        .auto-style9 {
            height: 26px;
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
            text-align: center;
            height: 37px;
        }
        .auto-style16 {
            width: 283px;
            height: 37px;
        }
    </style>
</head>
<body style="width: 1014px; height: 547px">
    <form id="form1" runat="server" style="background-image: url('Images/wallpaperflare.com_wallpaper.jpg')" class="auto-style14">
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style12" style="background-color: #3333FF; color: #000000;">
                    <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="CREATE AN ACCOUNT" BackColor="#3333FF"></asp:Label>
                </td>
            </tr>
        </table>
        
        <table class="auto-style13" align="center" style="background-color: #3333FF">
            
                <td class="auto-style2">First name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="156px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Last name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Street address line 1</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server" Width="158px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Street address line 2</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="159px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">City</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox5" runat="server" Width="155px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Postal code</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox6" runat="server" Width="86px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Must be 4 digits" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ID number</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox7" runat="server" Width="154px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Must be 13 digits" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Cell number</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox8" ErrorMessage="Must be 10 digits" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox9" runat="server" Width="151px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox9" ErrorMessage="Enter valid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox9" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox10" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox10" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Confirm password</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox11" runat="server" Width="149px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox10" ControlToValidate="TextBox11" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style15">
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" Width="162px" BackColor="White" ForeColor="Blue" Height="25px" BorderColor="White" />
                    <br />
                </td>
                <td class="auto-style16"></td>
            </tr>
            </table>
    </form>
</body>
</html>

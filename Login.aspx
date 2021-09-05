<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="M4_major_project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
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
        }
        .auto-style13 {
            width: 200px;
        }
        .auto-style14 {
            text-align: right;
            width: 333px;
        }
        .auto-style15 {
            width: 95%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <table class="auto-style15">
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="LOGIN TO YOUR ACCOUNT"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style14">Username</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TextBox3" runat="server" Width="191px"></asp:TextBox>
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
                        <asp:TextBox ID="TextBox2" runat="server" Width="193px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="112px" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

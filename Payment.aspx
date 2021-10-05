<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="M4_major_project.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 108px;
        }
        .auto-style2 {
            width: 403px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 413px;
            text-align: right;
        }
        .auto-style8 {
            width: 413px;
            text-align: right;
            height: 40px;
        }
        .auto-style9 {
            height: 40px;
        }
        .auto-style10 {
            height: 435px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style10" style="border-style: ridge; border-color: #00FFFF">

        &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="Larger" ForeColor="Black" Text="eWay Form"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="background-color: #3366FF">
                        <asp:Image ID="Image1" runat="server" Height="102px" ImageUrl="~/Images/card payment icon.png" Width="174px" />
                    </td>
                    <td class="auto-style3" style="border-color: #3366FF; background-color: #3366FF; font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: x-large;">
                        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="White" Text="Online Payment"></asp:Label>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Maroon" Text="eWay"></asp:Label>
            <br />
&nbsp;<table class="auto-style4">
                <tr>
                    <td class="auto-style8">Card Holders Name</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox1" runat="server" Height="25px"></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Incorrect card name" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Card Number</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox2" runat="server" Height="25px"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="Must be 16 digits" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Card Verification Value (CVV)</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox3" runat="server" Height="25px"></asp:TextBox>
                        <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="Must be 3 digits" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Credit Card Expiry</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="50px" Width="85px">
                            <asp:ListItem Value="01"></asp:ListItem>
                            <asp:ListItem Value="02"></asp:ListItem>
                            <asp:ListItem Value="03"></asp:ListItem>
                            <asp:ListItem Value="04"></asp:ListItem>
                            <asp:ListItem Value="05"></asp:ListItem>
                            <asp:ListItem Value="06"></asp:ListItem>
                            <asp:ListItem Value="07"></asp:ListItem>
                            <asp:ListItem Value="08"></asp:ListItem>
                            <asp:ListItem Value="09"></asp:ListItem>
                            <asp:ListItem Value="10"></asp:ListItem>
                            <asp:ListItem Value="11"></asp:ListItem>
                            <asp:ListItem Value="12"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="50px" Width="85px">
                            <asp:ListItem Value="2022"></asp:ListItem>
                            <asp:ListItem Value="2023"></asp:ListItem>
                            <asp:ListItem Value="2024"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Button ID="Button1" runat="server" BackColor="#006600" BorderColor="#003300" BorderStyle="Groove" ForeColor="White" Height="35px" Text="Cancel" Width="115px" />
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="Button2" runat="server" BackColor="#0066FF" BorderColor="Blue" BorderStyle="Groove" ForeColor="White" Height="35px" OnClick="Button2_Click" Text="Save" Width="115px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        </div>
    </form>
</body>
</html>

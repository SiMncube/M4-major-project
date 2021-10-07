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
            width: 658px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 100%;
            height: 187px;
        }
        .auto-style5 {
            width: 656px;
            text-align: right;
        }
        .auto-style8 {
            width: 656px;
            text-align: right;
            height: 40px;
        }
        .auto-style10 {
            height: 630px;
            width: 1332px;
            text-align: center;
            margin-left: 0px;
            margin-right: 68px;
            margin-bottom: 0px;
        }
        .auto-style11 {
            width: 656px;
            text-align: right;
            height: 37px;
        }
        .auto-style12 {
            height: 37px;
            text-align: left;
            width: 658px;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            text-align: right;
            height: 39px;
            width: 656px;
        }
        .auto-style15 {
            height: 39px;
            text-align: left;
        }
        .auto-style16 {
            height: 40px;
            text-align: left;
            width: 658px;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style18 {
            height: 174px;
        }
        .auto-style19 {
            text-align: left;
            width: 658px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style10" style="border-color: #000000">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="Black" Text="Payment GateWay" Font-Bold="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style1" style="border-color: #000000; border-style: double;">
                <tr>
                    <td class="auto-style2" style="background-color: #0000FF">
                        <asp:Image ID="Image1" runat="server" Height="102px" ImageUrl="~/Images/card payment icon.png" Width="174px" />
                    </td>
                    <td class="auto-style3" style="border-color: #3366FF; background-color: #0000FF; font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: x-large;">
                        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="White" Text="Online Payment"></asp:Label>
                    </td>
                </tr>
            </table>
            <div class="auto-style17">
                <div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Maroon" Text="Payment Details"></asp:Label>
                </div>
                    <div class="panel-heading">
                        <div class="row">
                            <div class="auto-style3"> <img class="auto-style18" src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/Mastercard-Curved.png"> <img class="auto-style18" src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/Discover-Curved.png"> <img class="auto-style18" src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/Paypal-Curved.png"> <img class="auto-style18" src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/American-Express-Curved.png"> </div>
                        </div>
                    </div>
&nbsp;</div>
            <table class="auto-style4" style="border-right-color: #000000; border-left-color: #000000; border-top-color: #000000; border-top-style: double; border-right-style: double; border-left-style: double;">
                <tr>
                    <td class="auto-style8">Card Holders Name</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox1" runat="server" Height="25px" BorderStyle="Solid" ToolTip="Enter Card Name "></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Incorrect card name" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Card Number</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox2" runat="server" Height="25px" BorderStyle="Solid" ToolTip="Must be 16 digits"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="Must be 16 digits" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Card Verification Value (CVV)</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox3" runat="server" Height="25px" BorderStyle="Solid" ToolTip="Must be 3 digits"></asp:TextBox>
                        <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="Must be 3 digits" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Credit Card Expiry</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="45px" Width="85px">
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
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="45px" Width="85px">
                            <asp:ListItem Value="2022"></asp:ListItem>
                            <asp:ListItem Value="2023"></asp:ListItem>
                            <asp:ListItem Value="2024"></asp:ListItem>
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Button ID="Button1" runat="server" BackColor="#006600" BorderColor="#003300" BorderStyle="Groove" ForeColor="White" Height="45px" Text="Cancel" Width="131px" Font-Bold="True" />
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="Button2" runat="server" BackColor="#0066FF" BorderColor="Blue" BorderStyle="Groove" ForeColor="White" Height="45px" OnClick="Button2_Click" Text="Confirm Payment" Width="131px" Font-Bold="True" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">O</td>
                    <td class="auto-style19">R</td>
                </tr>
            </table>
            <table class="auto-style13" style="border-color: #000000; border-style: double;">
                <tr>
                    <td class="auto-style14" style="font-size: large; font-family: 'Times New Roman', Times, serif">Would you like to make an EFT Payment?</td>
                    <td class="auto-style15">
                        <asp:Button ID="Button3" runat="server" BackColor="#0066FF" BorderColor="Blue" BorderStyle="Groove" Font-Bold="True" ForeColor="White" Height="45px" OnClick="Button3_Click" Text="Yes" Width="131px" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />

        </div>
    </form>
</body>
</html>

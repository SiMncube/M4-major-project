<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewBooking.aspx.cs" Inherits="M4_major_project.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width: 478px">&nbsp;</td>
                <td style="width: 193px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 478px">&nbsp;</td>
                <td style="width: 193px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 478px">&nbsp;</td>
                <td style="width: 193px">
                    <asp:Label ID="Label1" runat="server" Text="Enter Booking Ref"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 478px">&nbsp;</td>
                <td style="width: 193px">
                    <asp:TextBox ID="viewBookingTextBox" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-left: 3px" Width="192px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 478px">&nbsp;</td>
                <td style="width: 193px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 478px">&nbsp;</td>
                <td style="width: 193px">
                    <asp:Button ID="viewBookingButton" runat="server" OnClick="Button1_Click" Text="View Booking" Width="206px" />
                </td>
            </tr>
        </table>
    </div>

</asp:Content>

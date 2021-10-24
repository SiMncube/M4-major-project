<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewBooking.aspx.cs" Inherits="M4_major_project.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>&nbsp;</p>
    <div>
        <table style="width:100%;">
            <tr>
                <td style="width: 420px">&nbsp;</td>
                <td class="modal-sm" style="width: 107px">
                    <asp:Label ID="Label1" runat="server" Text="Enter Booking Ref"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 420px">&nbsp;</td>
                <td class="modal-sm" style="width: 107px">
                    <asp:TextBox ID="viewBookingTextBox" runat="server" Width="236px" style="margin-left: 0px; margin-right: 0px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 420px">&nbsp;</td>
                <td class="modal-sm" style="width: 107px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 420px">&nbsp;</td>
                <td class="modal-sm" style="width: 107px">
                    <asp:Button ID="viewBookingButton" runat="server" Text="View Booking" style="margin-left: 23" Width="242px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            
        </table>
    </div>
    <p>&nbsp;</p>
</asp:Content>

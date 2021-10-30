<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MakeBooking.aspx.cs" Inherits="M4_major_project.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width: 258px">&nbsp;</td>
                <td style="width: 361px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">&nbsp;</td>
                <td style="width: 361px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">&nbsp;</td>
                <td style="width: 361px">
                    <asp:Label ID="Label1" runat="server" Text="Check In Date:         "></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" Width="230px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">&nbsp;</td>
                <td style="width: 361px">
                    <asp:Label ID="Label2" runat="server" Text="Check Out Date: "></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Width="222px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">&nbsp;</td>
                <td style="width: 361px">
                    <asp:Label ID="Label3" runat="server" Text="Number Of Single Rooms:    "></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">&nbsp;</td>
                <td style="width: 361px">
                    <asp:Label ID="Label5" runat="server" Text="Number Of Double Rooms:   "></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">&nbsp;</td>
                <td style="width: 361px">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 258px">&nbsp;</td>
                <td style="width: 361px">
                    <asp:Button ID="Button1" runat="server" Text="Button" Width="363px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

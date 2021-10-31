<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MakeBooking.aspx.cs" Inherits="M4_major_project.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width: 428px">&nbsp;</td>
                <td style="width: 309px" class="modal-sm">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 428px">&nbsp;</td>
                <td style="width: 309px" class="modal-sm">
                    <asp:Label ID="Label3" runat="server" Text="Check-In Date:"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" Style="margin-right: 29" TextMode="DateTime" Width="309px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 428px; height: 37px;"></td>
                <td style="width: 309px; height: 37px;">
                    <asp:Label ID="Label2" runat="server" Text="Check-Out Date:"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="DateTime" Width="311px"></asp:TextBox>
                </td>
                <td style="height: 37px"></td>
            </tr>
            <tr>
                <td style="width: 428px">&nbsp;</td>
                <td style="width: 309px" class="modal-sm">
                    <div class="form-group">
                        <label for="subject">Single rooms:</label>
                        <select id="singleBox" name="subject" class="form-control" required="required" runat="server">
                        </select>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 428px">&nbsp;</td>
                <td style="width: 309px" class="modal-sm">
                    <div class="form-group">
                        <label for="subject">Double Rooms:</label>
                        <select id="doubleBox" name="subject" class="form-control" required="required" runat="server">
                        </select>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 428px">&nbsp;</td>
                <td style="width: 309px" class="modal-sm">
                    <asp:Label ID="Label1" runat="server" Text="Amount Due: "></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="307px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 428px; height: 25px;"></td>
                <td style="width: 309px; height: 25px;">
                    <asp:Button ID="saveBtn" runat="server" Text="Save Booking" Width="318px" />
                </td>
                <td style="height: 25px"></td>
            </tr>
            <tr>
                <td style="width: 428px">&nbsp;</td>
                <td style="width: 309px" class="modal-sm">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

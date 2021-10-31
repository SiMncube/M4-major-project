<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MakeBooking.aspx.cs" Inherits="M4_major_project.WebForm2" %>

<script runat="server">
    protected void saveBtn_Click(object sender, EventArgs e)
    {
        checkInDate.Text = DateTime.Today.ToString("dd/mm/yyyy");
        checkOutDate.Text = DateTime.Today.ToString("dd/mm/yyyy");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width: 467px">&nbsp;</td>
                <td style="width: 306px" class="modal-sm">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 467px">&nbsp;</td>
                <td style="width: 306px" class="modal-sm">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Check-In Date:"></asp:Label>
                        <asp:TextBox ID="checkInDate" runat="server" Width="300px" TextMode="DateTime"></asp:TextBox>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 467px; height: 37px;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                </td>
                <td style="width: 306px; height: 37px;">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Check-Out Date:"></asp:Label>
                        <asp:TextBox ID="checkOutDate" runat="server" TextMode="DateTime" Width="300px"></asp:TextBox>
                    </div>
                </td>
                <td style="height: 37px"></td>
            </tr>
            <tr>
                <td style="width: 467px">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                </td>
                <td style="width: 306px" class="modal-sm">
                    <div class="form-group">
                        <label for="singleBox">Single rooms:</label>
                        <select id="singleBox" name="subject" class="form-control" required="required" runat="server" style="width: 100%">
                        </select>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 467px">&nbsp;</td>
                <td style="width: 306px" class="modal-sm">
                    <div class="form-group">
                        <label for="doubleBox">Double Rooms:</label>
                        <select id="doubleBox" name="subject" class="form-control" required="required" runat="server" style="width: 100%">
                        </select>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 467px">&nbsp;</td>
                <td style="width: 306px" class="modal-sm">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Amount Due: "></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 467px; height: 25px;"></td>
                <td style="width: 306px; height: 25px;">
                    <div class="form-group">
                        <asp:Button ID="saveBtn" runat="server" Text="Save Booking" Width="300px" OnClick="saveBtn_Click" />
                    </div>
                </td>
                <td style="height: 25px"></td>
            </tr>
            <tr>
                <td style="width: 467px">&nbsp;</td>
                <td style="width: 306px" class="modal-sm">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MakeBooking.aspx.cs" Inherits="M4_major_project.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="modal-sm" style="width: 375px">&nbsp;</td>
                <td style="width: 487px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 375px">&nbsp;</td>
                <td style="width: 487px">
                    <div style="border-color: #008CBA; border-style: solid; float: left; width: 47%;">
                        <label for="dateInCalender">Check-In Date:</label>
                        <asp:Calendar ID="dateInCalender" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </div>
                    <div style="border-color: #008CBA; border-style: solid; float: left; width: 47%;">
                        <label for="dateOutCalender">Check-Out Date:</label>
                        <asp:Calendar ID="dateOutCalender" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>

    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width: 474px">&nbsp;</td>
                <td class="modal-sm" style="width: 302px"></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 474px">&nbsp;</td>
                <td class="modal-sm" style="width: 302px">
                    <div class="form-group">
                        <label for="singleBox">Single Rooms:</label>
                        <asp:DropDownList ID="singleBox" class="form-control" runat="server" Width="300px"></asp:DropDownList>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 474px">&nbsp;</td>
                <td class="modal-sm" style="width: 302px">
                    <div class="form-group">
                        <label for="doubleBox">Double Rooms: </label>
                        <asp:DropDownList ID="doubleBox" class="form-control" runat="server" Width="300px"></asp:DropDownList>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 474px">&nbsp;</td>
                <td class="modal-sm" style="width: 302px">
                    <div class="form-group">
                        <label for="amountDue">Amount Due: </label>
                        <asp:TextBox ID="amountDue" class="form-control" runat="server" Width="300px" Enabled="False"></asp:TextBox>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 474px">&nbsp;</td>
                <td class="modal-sm" style="width: 302px">
                    <div class="form-group">
                        <asp:Button ID="saveBooking" class="btn btn-primary" runat="server" Text="Save Booking" Width="300px" />
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 474px">&nbsp;</td>
                <td class="modal-sm" style="width: 302px"></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

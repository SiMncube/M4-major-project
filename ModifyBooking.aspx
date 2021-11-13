<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifyBooking.aspx.cs" Inherits="M4_major_project.ModifyBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="modal-sm" style="width: 247px">&nbsp;</td>
                <td style="width: 690px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 16px; width: 247px;"></td>
                <td style="height: 16px; width: 690px;"></td>
                <td style="height: 16px"></td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 247px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="202px" Style="margin-bottom: 0" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" Width="203px" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" Width="203px" Visible="False"></asp:TextBox>
                </td>
                <td style="width: 690px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="summaryID" DataSourceID="modifyDataSource" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="694px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="summaryID" HeaderText="Booking Ref" InsertVisible="False" ReadOnly="True" SortExpression="summaryID" />
                            <asp:BoundField DataField="dateIn" HeaderText="Check-In Date" SortExpression="dateIn" />
                            <asp:BoundField DataField="dateOut" HeaderText="Check-Out Date" SortExpression="dateOut" />
                            <asp:BoundField DataField="numberOfNights" HeaderText="Nights" SortExpression="numberOfNights" />
                            <asp:BoundField DataField="bookingStatus" HeaderText="Status" SortExpression="bookingStatus" />
                            <asp:BoundField DataField="amountDue" HeaderText="Amount" SortExpression="amountDue" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="modifyDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:group7ConnectionString %>" DeleteCommand="DELETE FROM [BookingSummary] WHERE [summaryID] = @original_summaryID AND [dateIn] = @original_dateIn AND [dateOut] = @original_dateOut AND [numberOfNights] = @original_numberOfNights AND (([bookingStatus] = @original_bookingStatus) OR ([bookingStatus] IS NULL AND @original_bookingStatus IS NULL)) AND [amountDue] = @original_amountDue" InsertCommand="INSERT INTO [BookingSummary] ([dateIn], [dateOut], [numberOfNights], [bookingStatus], [amountDue]) VALUES (@dateIn, @dateOut, @numberOfNights, @bookingStatus, @amountDue)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [summaryID], [dateIn], [dateOut], [numberOfNights], [bookingStatus], [amountDue] FROM [BookingSummary] WHERE (([emailID] = @emailID) AND ([dateIn] &gt;= @dateIn) AND ([bookingStatus] = @bookingStatus)) ORDER BY [summaryID] DESC" UpdateCommand="UPDATE [BookingSummary] SET [dateIn] = @dateIn, [dateOut] = @dateOut, [numberOfNights] = @numberOfNights, [bookingStatus] = @bookingStatus, [amountDue] = @amountDue WHERE [summaryID] = @original_summaryID AND [dateIn] = @original_dateIn AND [dateOut] = @original_dateOut AND [numberOfNights] = @original_numberOfNights AND (([bookingStatus] = @original_bookingStatus) OR ([bookingStatus] IS NULL AND @original_bookingStatus IS NULL)) AND [amountDue] = @original_amountDue">
                        <DeleteParameters>
                            <asp:Parameter Name="original_summaryID" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="original_dateIn" />
                            <asp:Parameter DbType="Date" Name="original_dateOut" />
                            <asp:Parameter Name="original_numberOfNights" Type="Int32" />
                            <asp:Parameter Name="original_bookingStatus" Type="String" />
                            <asp:Parameter Name="original_amountDue" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter DbType="Date" Name="dateIn" />
                            <asp:Parameter DbType="Date" Name="dateOut" />
                            <asp:Parameter Name="numberOfNights" Type="Int32" />
                            <asp:Parameter Name="bookingStatus" Type="String" />
                            <asp:Parameter Name="amountDue" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="emailID" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" DbType="Date" Name="dateIn" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox3" Name="bookingStatus" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter DbType="Date" Name="dateIn" />
                            <asp:Parameter DbType="Date" Name="dateOut" />
                            <asp:Parameter Name="numberOfNights" Type="Int32" />
                            <asp:Parameter Name="bookingStatus" Type="String" />
                            <asp:Parameter Name="amountDue" Type="String" />
                            <asp:Parameter Name="original_summaryID" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="original_dateIn" />
                            <asp:Parameter DbType="Date" Name="original_dateOut" />
                            <asp:Parameter Name="original_numberOfNights" Type="Int32" />
                            <asp:Parameter Name="original_bookingStatus" Type="String" />
                            <asp:Parameter Name="original_amountDue" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="modal-sm" style="width: 375px">
                    &nbsp;</td>
                <td style="width: 487px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 375px">&nbsp;</td>
                <td style="width: 487px">
                    <div style="border-color: #008CBA; border-style: solid; float: left; width: 47%;">
                        <label for="dateInCalender">Check-In Date:</label>
                        <asp:Calendar ID="dateInCalender" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="dateInCalender_SelectionChanged">
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
                        <asp:Calendar ID="dateOutCalender" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="dateOutCalender_SelectionChanged">
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
                <td style="width: 474px; height: 16px;"></td>
                <td class="modal-sm" style="width: 302px; height: 16px;"></td>
                <td style="height: 16px"></td>
            </tr>
            <tr>
                <td style="width: 474px; height: 66px;"></td>
                <td class="modal-sm" style="width: 302px; height: 66px;">
                    <div class="form-group">
                        <label for="singleDDList">Single Rooms:</label>
                        <asp:DropDownList ID="singleDDList" class="form-control" runat="server" Width="300px" OnSelectedIndexChanged="singleDDList_SelectedIndexChanged" AutoPostBack="True" ViewStateMode="Enabled"></asp:DropDownList>
                    </div>
                </td>
                <td style="height: 66px"></td>
            </tr>
            <tr>
                <td style="width: 474px">&nbsp;</td>
                <td class="modal-sm" style="width: 302px">
                    <div class="form-group">
                        <label for="doubleDDList">Double Rooms: </label>
                        <asp:DropDownList ID="doubleDDList" class="form-control" runat="server" Width="300px" OnSelectedIndexChanged="doubleDDList_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 474px">&nbsp;</td>
                <td class="modal-sm" style="width: 302px">
                    <div class="form-group">
                        <label for="amountDueTextBox">Amount Due: </label>
                        <asp:TextBox ID="amountDueTextBox" class="form-control" runat="server" Width="300px"></asp:TextBox>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 474px">&nbsp;</td>
                <td class="modal-sm" style="width: 302px">
                    <div class="form-group">
                        <asp:Button ID="saveBookingButton" class="btn btn-primary" runat="server" Text="Save Booking" Width="300px" OnClick="saveBookingButton_Click" />
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

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
                    <asp:TextBox ID="viewBookingTextBox" runat="server" OnTextChanged="TextBox1_TextChanged" Style="margin-left: 3px" Width="192px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 478px; height: 16px;"></td>
                <td style="width: 193px; height: 16px;"></td>
                <td style="height: 16px"></td>
            </tr>
            <tr>
                <td style="width: 478px">
                    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td style="width: 193px">
                    <asp:Button ID="viewBookingButton" runat="server" OnClick="Button1_Click" Text="View Booking" Width="206px" PostBackUrl="~/ViewBooking.aspx" />
                </td>
            </tr>
            <tr>
                <td style="width: 478px">&nbsp;</td>
                <td style="width: 193px"></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width: 470px" class="modal-sm">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="summaryID" DataSourceID="gridSelect" ForeColor="#333333" GridLines="None" Width="423px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="summaryID" HeaderText="summaryID" InsertVisible="False" ReadOnly="True" SortExpression="summaryID" />
                            <asp:BoundField DataField="dateIn" HeaderText="dateIn" SortExpression="dateIn" />
                            <asp:BoundField DataField="dateOut" HeaderText="dateOut" SortExpression="dateOut" />
                            <asp:BoundField DataField="amountDue" HeaderText="amountDue" SortExpression="amountDue" />
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
                </td>
                <td style="width: 32px">&nbsp;</td>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="291px" AutoGenerateRows="False" DataKeyNames="summaryID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Style="margin-left: 0px" DataMember="DefaultView">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="summaryID" HeaderText="summaryID" InsertVisible="False" ReadOnly="True" SortExpression="summaryID" />
                            <asp:BoundField DataField="emailID" HeaderText="emailID" SortExpression="emailID" />
                            <asp:BoundField DataField="dateIn" HeaderText="dateIn" SortExpression="dateIn" />
                            <asp:BoundField DataField="dateOut" HeaderText="dateOut" SortExpression="dateOut" />
                            <asp:BoundField DataField="numberOfNights" HeaderText="numberOfNights" SortExpression="numberOfNights" />
                            <asp:BoundField DataField="bookingMethod" HeaderText="bookingMethod" SortExpression="bookingMethod" />
                            <asp:BoundField DataField="bookingStatus" HeaderText="bookingStatus" SortExpression="bookingStatus" />
                            <asp:BoundField DataField="amountDue" HeaderText="amountDue" SortExpression="amountDue" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
                    </td>
            </tr>
            <tr>
                <td style="width: 470px" class="modal-sm">
                    <asp:SqlDataSource ID="gridSelect" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:group7ConnectionString %>" DeleteCommand="DELETE FROM [BookingSummary] WHERE [summaryID] = @original_summaryID AND [emailID] = @original_emailID AND [dateIn] = @original_dateIn AND [dateOut] = @original_dateOut AND [numberOfNights] = @original_numberOfNights AND (([bookingMethod] = @original_bookingMethod) OR ([bookingMethod] IS NULL AND @original_bookingMethod IS NULL)) AND (([bookingStatus] = @original_bookingStatus) OR ([bookingStatus] IS NULL AND @original_bookingStatus IS NULL)) AND [amountDue] = @original_amountDue" InsertCommand="INSERT INTO [BookingSummary] ([emailID], [dateIn], [dateOut], [numberOfNights], [bookingMethod], [bookingStatus], [amountDue]) VALUES (@emailID, @dateIn, @dateOut, @numberOfNights, @bookingMethod, @bookingStatus, @amountDue)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT summaryID, dateIn, dateOut, amountDue FROM BookingSummary WHERE (emailID = @emailID) ORDER BY summaryID DESC" UpdateCommand="UPDATE [BookingSummary] SET [emailID] = @emailID, [dateIn] = @dateIn, [dateOut] = @dateOut, [numberOfNights] = @numberOfNights, [bookingMethod] = @bookingMethod, [bookingStatus] = @bookingStatus, [amountDue] = @amountDue WHERE [summaryID] = @original_summaryID AND [emailID] = @original_emailID AND [dateIn] = @original_dateIn AND [dateOut] = @original_dateOut AND [numberOfNights] = @original_numberOfNights AND (([bookingMethod] = @original_bookingMethod) OR ([bookingMethod] IS NULL AND @original_bookingMethod IS NULL)) AND (([bookingStatus] = @original_bookingStatus) OR ([bookingStatus] IS NULL AND @original_bookingStatus IS NULL)) AND [amountDue] = @original_amountDue">
                        <DeleteParameters>
                            <asp:Parameter Name="original_summaryID" Type="Int32" />
                            <asp:Parameter Name="original_emailID" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_dateIn" />
                            <asp:Parameter DbType="Date" Name="original_dateOut" />
                            <asp:Parameter Name="original_numberOfNights" Type="Int32" />
                            <asp:Parameter Name="original_bookingMethod" Type="String" />
                            <asp:Parameter Name="original_bookingStatus" Type="String" />
                            <asp:Parameter Name="original_amountDue" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="emailID" Type="String" />
                            <asp:Parameter DbType="Date" Name="dateIn" />
                            <asp:Parameter DbType="Date" Name="dateOut" />
                            <asp:Parameter Name="numberOfNights" Type="Int32" />
                            <asp:Parameter Name="bookingMethod" Type="String" />
                            <asp:Parameter Name="bookingStatus" Type="String" />
                            <asp:Parameter Name="amountDue" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="emailID" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="emailID" Type="String" />
                            <asp:Parameter DbType="Date" Name="dateIn" />
                            <asp:Parameter DbType="Date" Name="dateOut" />
                            <asp:Parameter Name="numberOfNights" Type="Int32" />
                            <asp:Parameter Name="bookingMethod" Type="String" />
                            <asp:Parameter Name="bookingStatus" Type="String" />
                            <asp:Parameter Name="amountDue" Type="String" />
                            <asp:Parameter Name="original_summaryID" Type="Int32" />
                            <asp:Parameter Name="original_emailID" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_dateIn" />
                            <asp:Parameter DbType="Date" Name="original_dateOut" />
                            <asp:Parameter Name="original_numberOfNights" Type="Int32" />
                            <asp:Parameter Name="original_bookingMethod" Type="String" />
                            <asp:Parameter Name="original_bookingStatus" Type="String" />
                            <asp:Parameter Name="original_amountDue" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td style="width: 32px">&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group7ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BookingSummary] WHERE ([summaryID] = @summaryID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="summaryID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 470px" class="modal-sm">&nbsp;</td>
                <td style="width: 32px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>

</asp:Content>

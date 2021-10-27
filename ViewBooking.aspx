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
                    <asp:TextBox ID="TextBox1" runat="server" Width="134px"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" Width="152px"></asp:TextBox>
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
                    <asp:SqlDataSource ID="gridSelect" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:group7ConnectionString %>" DeleteCommand="DELETE FROM [BookingSummary] WHERE [summaryID] = @original_summaryID AND [dateIn] = @original_dateIn AND [amountDue] = @original_amountDue AND [dateOut] = @original_dateOut" InsertCommand="INSERT INTO [BookingSummary] ([dateIn], [amountDue], [dateOut]) VALUES (@dateIn, @amountDue, @dateOut)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [summaryID], [dateIn], [amountDue], [dateOut] FROM [BookingSummary] WHERE (([emailID] = @emailID) AND ([dateIn] &gt;= @dateIn)) ORDER BY [summaryID] DESC" UpdateCommand="UPDATE [BookingSummary] SET [dateIn] = @dateIn, [amountDue] = @amountDue, [dateOut] = @dateOut WHERE [summaryID] = @original_summaryID AND [dateIn] = @original_dateIn AND [amountDue] = @original_amountDue AND [dateOut] = @original_dateOut">
                        <DeleteParameters>
                            <asp:Parameter Name="original_summaryID" Type="Int32" />
                            <asp:Parameter Name="original_dateIn" DbType="Date" />
                            <asp:Parameter Name="original_amountDue" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_dateOut" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="dateIn" DbType="Date" />
                            <asp:Parameter Name="amountDue" Type="String" />
                            <asp:Parameter DbType="Date" Name="dateOut" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="emailID" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" DbType="Date" Name="dateIn" PropertyName="Text" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="dateIn" DbType="Date" />
                            <asp:Parameter Name="amountDue" Type="String" />
                            <asp:Parameter DbType="Date" Name="dateOut" />
                            <asp:Parameter Name="original_summaryID" Type="Int32" />
                            <asp:Parameter Name="original_dateIn" DbType="Date" />
                            <asp:Parameter Name="original_amountDue" Type="String" />
                            <asp:Parameter Name="original_dateOut" DbType="Date" />
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCancel.aspx.cs" Inherits="M4_major_project.AdminCancel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar navbar-inverse navbar-fixed-top" id="Panel" runat="server">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">The Cottage</a>
                </div>
                <div class="navbar-collapse collapse" staticselectedstyle-verticalpadding="10px">
                    <ul class="nav navbar-nav" runat="server">
                        <li><a runat="server" href="~/Admin"><b>View Bookings</b></a></li>
                        <li><a runat="server" href="~/Admin"><b>Modify Booikings</b></a></li>
                        <li><a runat="server" href="~/AdminRegister"><b>Register Customer</b></a></li>
                        <li><a runat="server" href="~/AdminUpdate"><b>Update Customer Details</b></a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a runat="server" id="Username1" href="~/Admin"><b id="setUser" runat="server">Admin1</b></a></li>
                        <li><a runat="server" id="Logoff1" href="~/Default" onclick="logOff_click()"><b>Log off</b></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <br />
        <br />
        <div>
            <br />
            <div class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
                <div class="text-center" style="background-color: #008cba; height: 55px">
                    <h1 style="color: white; margin: auto">Cancel Booking</h1>
                </div>
            </div>
            <br />
            <div class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Enter Email, Name, Surname, or ID"></asp:Label>
                    <asp:TextBox ID="adminTextBox" runat="server" class="form-control" placeholder="Enter Email, Name, Surname, or ID" Width="100%"></asp:TextBox>
                </div>
                <div class="col-md-12 text-center">
                    <asp:Button class="btn btn-primary pull-center" ID="Button2" runat="server" Text="Search" Width="50%" />
                </div>
                <br />
                <br />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group7ConnectionString %>" SelectCommand="SELECT [summaryID], [emailID], [dateIn], [dateOut], [numberOfNights], [bookingMethod], [bookingStatus], [amountDue] FROM [BookingSummary]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="summaryID" DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="242px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="summaryID" HeaderText="summaryID" InsertVisible="False" ReadOnly="True" SortExpression="summaryID" />
                        <asp:BoundField DataField="emailID" HeaderText="emailID" SortExpression="emailID" />
                        <asp:BoundField DataField="dateIn" HeaderText="dateIn" SortExpression="dateIn" />
                        <asp:BoundField DataField="dateOut" HeaderText="dateOut" SortExpression="dateOut" />
                        <asp:BoundField DataField="numberOfNights" HeaderText="numberOfNights" SortExpression="numberOfNights" />
                        <asp:BoundField DataField="bookingMethod" HeaderText="bookingMethod" SortExpression="bookingMethod" />
                        <asp:BoundField DataField="bookingStatus" HeaderText="bookingStatus" SortExpression="bookingStatus" />
                        <asp:BoundField DataField="amountDue" HeaderText="amountDue" SortExpression="amountDue" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>

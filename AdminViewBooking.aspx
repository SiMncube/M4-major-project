<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminViewBooking.aspx.cs" Inherits="M4_major_project.AdminViewBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-inverse navbar-fixed-top" id="Panel" runat="server">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" runat="server" href="~/Admin">The Cottage</a>
                    </div>
                    <div class="navbar-collapse collapse" staticselectedstyle-verticalpadding="10px">
                        <ul class="nav navbar-nav" runat="server">
                            <li><a runat="server" href="~/AdminViewBooking"><b>View Bookings</b></a></li>
                        <li><a runat="server" href="~/AdminCancel"><b>Cancel Bookings</b></a></li>
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
        </div>
        <div>
            <br />
            <br />
            <br />
            <div class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
                <div class="text-center" style="background-color: #008cba; height: 55px">
                    <h1 style="color: white; margin: auto">View Bookings</h1>
                </div>
            </div>
            <br />
            <div class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Enter Email, Name, Surnamel,Cell Number, ID or Booking Ref"></asp:Label>
                    <asp:TextBox ID="adminTextBox" runat="server" class="form-control" placeholder="Enter Email, Name, Surnamel,Cell Number, ID or Booking Ref" Width="100%"></asp:TextBox>
                </div>
                <div class="col-md-12 text-center">
                    <asp:Button class="btn btn-primary pull-center" ID="Button2" runat="server" Text="Search" Width="50%" OnClick="Button2_Click" />
                </div>
                <br />
                <br />
                <br />
                <asp:GridView AutoGenerateSelectButton="true" ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="100%" Height="187px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                <br />
            </div>
        </div>
        <div id="bookingText"  runat="server" visible="false">
            <br />
            <div  class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
                <div class="text-center" height: 55px">
                    <h1 style="color: #008cba; margin: auto">Booking Details</h1>
                </div>
            </div>
            <br />
            <div class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
                <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="100%" Height="126px">
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
                <br />
                <div class="col-md-12 text-center">
                </div>
            </div>
            <br />
            <br />
        </div>
        <div id="cancelAdminModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Update Confirmation</h4>
                    </div>
                    <div class="modal-body" id="modalBody" runat="server">
                        <p></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

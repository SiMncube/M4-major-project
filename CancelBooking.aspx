<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CancelBooking.aspx.cs" Inherits="M4_major_project.CancelBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://bootswatch.com/3/yeti/bootstrap.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function showModal() {
            $("#cancelAdminModal").modal('show');
        }
    </script>

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
                        <li><a runat="server" href="~/Admin"><b>Make Bookings</b></a></li>
                        <li><a runat="server" href="~/AdminViewBooking"><b>View Bookings</b></a></li>
                        <li><a runat="server" href="~/AdminModify"><b>Modify Bookings</b></a></li>
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
    <div>
        <div>
            <div class="text-center" style="background-color: #008cba; height: 55px">
                <h1 style="color: white; margin: auto">Cancel Booking</h1>
            </div>
        </div>
        <br />
        <div>
            <div class="form-gap">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-md-offset-4">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="text-center">
                                        <h3><i class="fa fa-lock fa-4x"></i></h3>
                                        <h3>Cancel A booking</h3>
                                        <div class="panel-body">
                                            <form id="register-form" role="form" autocomplete="off" class="form" method="post">
                                                <div class="form-group">
                                                        <asp:TextBox ID="bookingRefTextBox" runat="server" placeholder="Enter Booking Ref" class="form-control" Width="100%"></asp:TextBox>
                                                </div>
                                                <div class="form-group" width="100%">
                                                    <asp:Button ID="Button1" class="btn btn-lg btn-primary btn-block" value="Reset Password" runat="server" Text="Search" Width="100%" OnClick="Button1_Click" />
                                                </div>
                                                <input type="hidden" class="hide" name="token" id="token" value="">
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
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
                    <h1 style="color: #008cba; margin: auto">Cancel The following Booking</h1>
                </div>
            </div>
            <br />
            <div class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
                <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="100%">
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
                    <asp:Button class="btn btn-primary pull-center" ID="cancelBtn" runat="server" Text="Cancel Booking" Width="50%" Visible="False" OnClick="cancelBtn_Click"/>
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
                        <asp:Button ID="closeBtn" class="btn btn-default" runat="server" Text="Close" data-dismiss="modal" UseSubmitBehavior="false" OnClick="closeBtn_Click"/>
                    </div>
                </div>
            </div>
        </div>
    <br />
    <br />
</asp:Content>

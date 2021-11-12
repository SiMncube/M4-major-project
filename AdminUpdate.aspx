<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUpdate.aspx.cs" Inherits="M4_major_project.AdminUpdate" %>

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
                        <li><a runat="server" href="~/"><b>View Bookings</b></a></li>
                        <li><a runat="server" href="~/About"><b>Modify Booikings</b></a></li>
                        <li><a runat="server" href="~/Contact"><b>Cancel Bookings</b></a></li>
                        <li><a runat="server" href="~/Contact"><b>Register Customer</b></a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a runat="server" id="Username1" href="~/Admin"><b id="setUser" runat="server"></b></a></li>
                        <li><a runat="server" id="Logoff1" href="~/Default" onclick="logOff_click()"><b>Log off</b></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div>
            <br />
            <br />
            <br />
            <div class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
                <div class="jumbotron text-center" style="background-color: #008cba">
                    <h1 style="color: white">Update Customer Details</h1>
                </div>
            </div>
            <div class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Enter Email, Name, Surname, or ID"></asp:Label>
                    <asp:TextBox ID="adminTextBox" runat="server" class="form-control" placeholder="Enter Email, Name, Surname, or ID" Width="100%"></asp:TextBox>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group7ConnectionString %>" SelectCommand="SELECT [emailID], [surname], [name], [idNumber], [cellNumber], [streetName], [suburb], [city], [postalCode] FROM [Customer]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="emailID" DataSourceID="SqlDataSource1" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="emailID" HeaderText="emailID" ReadOnly="True" SortExpression="emailID" />
                        <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="idNumber" HeaderText="idNumber" SortExpression="idNumber" />
                        <asp:BoundField DataField="cellNumber" HeaderText="cellNumber" SortExpression="cellNumber" />
                        <asp:BoundField DataField="streetName" HeaderText="streetName" SortExpression="streetName" />
                        <asp:BoundField DataField="suburb" HeaderText="suburb" SortExpression="suburb" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="postalCode" HeaderText="postalCode" SortExpression="postalCode" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <br />
        <div class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
            <div class="row">
                <div class="col-md-6" style="margin: auto; width: 100%; border: 0px solid #FFFF00; padding: 5px">
                    <div class="well well-sm">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="Name" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="nameTextBox" runat="server" class="form-control" placeholder="Enter name" required=""></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label3" runat="server" Text="ID Number" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="idTextBox" runat="server" class="form-control" placeholder="Enter Id Number" required=""></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label4" runat="server" Text="Street name" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="streetTextBox" runat="server" class="form-control" placeholder="Enter Street name"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label6" runat="server" Text="City" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="cityTextBox" runat="server" class="form-control" placeholder="Enter city"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="Label5" runat="server" Text="Surname" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="surnameTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label8" runat="server" Text="Cell phone" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="cellTextBox" runat="server" class="form-control" placeholder="Enter cell number" required=""></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label7" runat="server" Text="Surburb" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="surbubNameTextBox" runat="server" class="form-control" placeholder="Enter suburb"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label11" runat="server" Text="Postal code" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="postalTextBox" runat="server" class="form-control" placeholder="Enter pastal code" required=""></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-12 text-center">
                                <asp:Button class="btn btn-primary pull-center" ID="Button1" runat="server" Text="Update Details" Width="210px" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <style>
    </style>
</body>
</html>

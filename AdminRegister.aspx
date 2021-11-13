﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="M4_major_project.AdminRegister" %>

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
                        <li><a runat="server" href="~/Admin"><b>Cancel Bookings</b></a></li>
                        <li><a runat="server" href="~/AdminUpdate"><b>Update CustomerDetails</b></a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a runat="server" id="Username1" href="~/Admin"><b id="setUser" runat="server">Admin1</b></a></li>
                        <li><a runat="server" id="Logoff1" href="~/Default" onclick="logOff_click()"><b>Log off</b></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div>
            <br />
            <br />
            <br />
            <br />
            <div class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
                <div class="text-center" style="background-color: #008cba; height: 55px">
                    <h1 style="color: white; margin: auto">Register New Customer</h1>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <div class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
            <div class="row">
                <div class="col-md-6" style="margin: auto; width: 100%; border: 0px solid #FFFF00; padding: 5px">
                    <div class="well well-sm">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="Name" class="form-label mt-4"></asp:Label>
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
                                <div class="form-group">
                                    <asp:Label ID="Label9" runat="server" Text="Email" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="emailTextBox" runat="server" class="form-control" placeholder="Enter email" required=""></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label10" runat="server" Text="Password" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="passwordTextBox" runat="server" class="form-control" placeholder="Enter password" required="" ReadOnly="True">Password-Auto generated</asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="Surname" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="surnameTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label8" runat="server" Text="Cell phone" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="cellTextBox" runat="server" class="form-control" placeholder="Enter cell number" required=""></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label5" runat="server" Text="Surburb" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="surbubNameTextBox" runat="server" class="form-control" placeholder="Enter suburb"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label7" runat="server" Text="Postal code" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="postalTextBox" runat="server" class="form-control" placeholder="Enter pastal code" required=""></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label12" runat="server" Text="Confirm email" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="confirmEmailTextBox" runat="server" class="form-control" placeholder="Enter email" required=""></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label11" runat="server" Text="Confirm password" class="form-label mt-4"></asp:Label>
                                    <asp:TextBox ID="confirmTextBox" runat="server" class="form-control" placeholder="Enter password" required="" ReadOnly="True">Password-Auto generated</asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-12 text-center">
                                <asp:Button class="btn btn-primary pull-center" ID="Button1" runat="server" Text="Register" Width="210px" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
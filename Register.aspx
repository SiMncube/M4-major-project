<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="M4_major_project.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="defaultStyle.css" />
    <link rel="stylesheet" href="https://bootswatch.com/3/yeti/bootstrap.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .panel{
            border: 1px solid #f4511e;
            border-radius: 0;
            color:white;
        }
    </style>
    <br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="well well-sm">
                    <form>
                        <div id="panel"  class="row">
                            <div class="text-center">
                                <h3>Sign up</h3>
                                <p>Please fill the form below to sign up<p>
                            </div>
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
                                    <asp:TextBox ID="passwordTextBox" runat="server" class="form-control" placeholder="Enter password" required="" TextMode="Password"></asp:TextBox>
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
                                    <asp:TextBox ID="confirmTextBox" runat="server" class="form-control" placeholder="Enter password" required="" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-12 text-center">
                                <asp:Button class="btn btn-primary pull-center" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" Width="210px" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

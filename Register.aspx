<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="M4_major_project.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="defaultStyle.css" />
    <link rel="stylesheet" href="https://bootswatch.com/3/yeti/bootstrap.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="well well-sm">
                    <form>
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
                                    <asp:Label ID="Label4" runat="server" Text="Street name" class="form-label mt-4" ></asp:Label>
                                     <asp:TextBox ID="streetTextBox" runat="server" class="form-control" placeholder="Enter Street name" required=""></asp:TextBox>
                                    </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

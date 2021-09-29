<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="M4_major_project.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="changePasswordStyle.css" />
    <div class="changePassword">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="well well-sm">
                        <h1>Change password</h1>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="New Password" class="form-label mt-4"></asp:Label>
                        <br />
                        <asp:TextBox ID="newTextBox" runat="server" required="" class="form-control" placeholder="Enter new password" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Confirm password"></asp:Label>
                        <br />
                        <asp:TextBox ID="confirmTextBox" runat="server" required="" class="form-control" placeholder="Confirm password" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Change password" OnClick="Button1_Click" class="btn btn-primary pull-center"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

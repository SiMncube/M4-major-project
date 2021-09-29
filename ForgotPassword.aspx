﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="M4_major_project.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="forgotStyle.css" />
    <div class="forgot">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="well well-sm">
                        <h1>Forgot Password</h1>
                        <br />
                        <asp:Label ID="Label2" Visible="false" runat="server" Text="Invalid email, please try again" CssClass="auto-style1" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Email" class="form-label mt-4"></asp:Label>
                        <asp:TextBox ID="emailTextBox" runat="server" required="" class="form-control" placeholder="Enter email"></asp:TextBox>
                        <br />
                        <div class="signup_link">
                            <asp:Label ID="Label3" runat="server" Text="Don't have an account?" class="form-label mt-4"></asp:Label>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Signup</asp:LinkButton>
                        </div>
                        <br />
                        <div class="col-md text-center">
                            <asp:Button ID="Button1" runat="server" Text="Reset password" OnClick="Button1_Click" class="btn btn-primary pull-center" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

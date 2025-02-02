﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterOTP.aspx.cs" Inherits="M4_major_project.RegisterOTP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://bootswatch.com/3/yeti/bootstrap.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!---The script for the modal ting---->
    <script type="text/javascript">
        function showModal() {
            $("#myModal").modal('show');
        }
    </script>
    <br />
    <div class="form-gap"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                            <h3><i class="fa fa-lock fa-4x"></i></h3>
                            <h3>OTP COnfirmation</h3>
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/icons8-password-64.png" />
                            <br />
                            <p>Please confirm OTP to register</p>
                            <div class="panel-body">
                                <form id="register-form" role="form" autocomplete="off" class="form" method="post">
                                    <div class="form-group">
                                        <asp:Label ID="Label1" CssClass="pull-left" runat="server" Text="Enter One Time Pin"></asp:Label>
                                        <asp:TextBox ID="otpTextBox" runat="server" class="form-control" placeholder="Enter OTP"></asp:TextBox>
                                    </div>
                                    <div class="form-group" width="100%">
                                        <asp:Button ID="confirmBtn" class="btn btn-lg btn-primary btn-block" value="Confirm" runat="server" Text="Confirm" Width="100%" OnClick="confirmBtn_Click" />
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
    <!-----Modal for le shandis ye pop up---->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Confirmation</h4>
                </div>
                <div class="modal-body" id="modalBody" runat="server">
                    <p>You query has been sent to the support team</p>
                </div>
                <div class="modal-footer">
                    <asp:Button id="closeBtn" class="btn btn-default" runat="server" Text="Ok" data-dismiss="modal" OnClick="closeBtn_Click" UseSubmitBehavior="false"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

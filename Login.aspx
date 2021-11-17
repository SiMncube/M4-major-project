<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="M4_major_project.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://bootswatch.com/3/yeti/bootstrap.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!---The script for the modal ting---->
    <script type="text/javascript">
        function showModal() {
            $("#myModal").modal('show');
        }
        $('#myModal').on('hidden.bs.modal', function () {
            window.location.href = "https://www.google.com/";
        })
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
                            <h3>Login</h3>
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/icons8-password-64.png" />
                            <br />
                            <br />
                            <p>Please enter your login details</p>
                            <div class="panel-body">
                                <form id="register-form" role="form" autocomplete="off" class="form" method="post">
                                    <div class="form-group">
                                        <asp:Label ID="Label1" CssClass="pull-left" runat="server" Text="Enter Email"></asp:Label>
                                        <asp:TextBox ID="emailTextBox" runat="server" class="form-control" placeholder="Enter email"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label2" CssClass="pull-left" runat="server" Text="Enter Password"></asp:Label>
                                        <asp:TextBox ID="passwordTextBox" runat="server" class="form-control" placeholder="Enter password" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <div class="form-group" width="100%">
                                        <asp:Button ID="confirmBtn" class="btn btn-lg btn-primary btn-block" value="Confirm" runat="server" Text="Confirm" Width="100%" OnClick="confirmBtn_Click" />
                                    </div>
                                    <div class="form-group">
                                        <div class="signup_link">
                                            Forgot Password?
                                            <asp:LinkButton Text="ResetPassword" ID="resetPasswordBtn" runat="server" OnClick="resetPasswordBtn_Click"></asp:LinkButton>
                                        </div>
                                    </div>
                                    <div class="form-group" width="100%">
                                        <div class="signup_link">
                                            Don&#39;t have an account?
                                            <asp:LinkButton Text="Signup" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>
                                        </div>
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
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" href="~/Password" class="close" data-dismiss="modal" runat="server">&times;</button>
                    <h4 class="modal-title">Confirmation</h4>
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
</asp:Content>

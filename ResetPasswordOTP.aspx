<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResetPasswordOTP.aspx.cs" Inherits="M4_major_project.ResetPasswordOTP" %>
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
    <style>
                .container-fluid {
            padding: 60px 50px;
        }

        .bg-grey {
            background-color:ivory;
        }

        .logo-small {
            color: #f4511e;
            font-size: 50px;
        }

        .logo {
            color: #f4511e;
            font-size: 200px;
        }

        .thumbnail {
            background-color: #008cba;
            padding: 0 0 15px 0;
            border: none;
            border-radius: 0;
        }

            .thumbnail img {
                width: 100%;
                height: 100%;
                margin-bottom: 10px;
            }

        @media screen and (max-width: 768px) {
            .col-sm-4 {
                text-align: center;
                margin: 25px 0;
            }
        }

        .carousel-control.right, .carousel-control.left {
            background-image: none;
            color: #008cba;
        }

        .carousel-indicators li {
            border-color: #008cba;
        }

            .carousel-indicators li.active {
                background-color: #008cba;
            }

        .item h4 {
            font-size: 19px;
            line-height: 1.375em;
            font-weight: 400;
            font-style: italic;
            margin: 70px 0;
        }

        .item span {
            font-style: normal;
        }
        .item h2
        {
            padding:0px;
        }
    </style>
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
                            <br />
                            <p>Please confirm OTP to reset your password</p>
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
    <br />
    <h2>Tips to keep your password safe</h2>
    <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <h4>"Do not use personal information"<br>
                    <span style="font-style: normal;">Elon Musk,Tesla CEO</span></h4>
            </div>
            <div class="item">
                <h4>"Create longer passwords, the longer the better"<br>
                    <span style="font-style: normal;">John Tapp, Hacker</span></h4>
            </div>
            <div class="item">
                <h4>"Use different passwords on different accounts"<br>
                    <span style="font-style: normal;">Zlatan Ibrahimavic, Security expert</span></h4>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <br />
    <!-----Modal for le shandis ye pop up---->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Confirmation</h4>
                </div>
                <div class="modal-body" id="modalBody" runat="server">
                    <p></p>
                </div>
                <div class="modal-footer">
                    <asp:Button id="closeBtn" class="btn btn-default" runat="server" Text="Close" data-dismiss="modal"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

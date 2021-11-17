<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="M4_major_project._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="defaultStyle.css" />
    <link rel="stylesheet" href="https://bootswatch.com/3/yeti/bootstrap.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .jumbotron {
            background-color: #008cba;
            color: #fff;
            width: 100%;
            height: 128px;
            padding:0px;
            margin:0px;
        }

        .panel {
            background-image:url("\Images\wallpaperflare.com_wallpaper.jpg");
            border: 1px solid #f4511e;
            border-radius: 0;
            transition: box-shadow 0.5s;
        }

            .panel:hover {
                box-shadow: 7px 0px 40px #008cba;
            }

        .panel-footer .btn:hover {
            border: 1px solid #f4511e;
            background-color: #fff !important;
            color: #f4511e;
        }

        .panel-heading {
            color: #fff !important;
            background-color: #008cba !important;
            padding: 5px;
            border-bottom: 1px solid transparent;
            border-top-left-radius: 0px;
            border-top-right-radius: 0px;
            border-bottom-left-radius: 0px;
            border-bottom-right-radius: 0px;
        }

        .panel-footer {
            background-color: #fff !important;
        }

            .panel-footer h3 {
                font-size: 10px;
            }

            .panel-footer h4 {
                color: #aaa;
                font-size: 14px;
            }

            .panel-footer .btn {
                margin: 5px 0;
                background-color: #008cba;
                color: #fff;
            }

        .jumbotron {
            background-color: #008cba;
            color: #fff;
            
        }

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
    <div class="jumbotron text-center">
        <h1>The Cottage BnB</h1>
        <p>Safe . Dependable . Affordable </p>
    </div>
        <div class="container-fluid text-center bg-grey">
        <h4 style="color:grey"><strong>Some of the things on offer</strong></h4>
        <div class="row text-center">
            <div class="col-sm-4">
                <div class="thumbnail">
                    <img src="Images/AB.jpg" alt="Paris" width="400" height="300">
                    <p><strong>Breakfast table</strong></p>
                    <p>Brerakfast area</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail">
                    <img src="Images/LB.jpg" alt="New York" width="400" height="300">
                    <p><strong>Luxury bed</strong></p>
                    <p>Sleep like a baby</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail">
                    <img src="Images/G.jpg" alt="San Francisco" width="400" height="300">
                    <p><strong>Nice Gym area</strong></p>
                    <p>Yes, we have a gym</p>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="text-center" >
            <h4>Sign in to start making bookings</h4>
        </div>
        <div class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h1>Double Room</h1>
                        </div>
                        <div class="panel-body">
                            <p><strong>1</strong> King size bed</p>
                            <p><strong>1</strong> Tv screen</p>
                            <p><strong>Yes</strong> Free wifi</p>
                            <p><strong>Yes</strong> Food service</p>
                        </div>
                        <div class="panel-footer">
                            <h3>R800</h3>
                            <h4>Per night</h4>
                            <asp:Button class="btn btn-lg" ID="Button1" runat="server" Text="Sign in" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h1>Single Room</h1>
                        </div>
                        <div class="panel-body">
                            <p><strong>1</strong> Double bed</p>
                            <p><strong>1</strong> Tv screen</p>
                            <p><strong>No</strong> Free wifi</p>
                            <p><strong>No</strong> Food service</p>
                        </div>
                        <div class="panel-footer">
                            <h3>R450</h3>
                            <h4>Per night</h4>
                            <asp:Button class="btn btn-lg" ID="Button2" runat="server" Text="Sign in" OnClick="Button2_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <h2>What our customers say</h2>
    <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <h4>"Thank you for a truly amazing stay! Your hospitality is quite outstanding"<br>
                    <span style="font-style: normal;">Siya Kolisi, Rugby Legend, Comment Box</span></h4>
            </div>
            <div class="item">
                <h4>"One word... WOW!!"<br>
                    <span style="font-style: normal;">John, Salesman, Facebook</span></h4>
            </div>
            <div class="item">
                <h4>"Everything was great, staff was very helpful and we were extremely happy"<br>
                    <span style="font-style: normal;">Harry Kane, Footballer, Twitter</span></h4>
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
</asp:Content>

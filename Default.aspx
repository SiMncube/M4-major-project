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
        }

        .panel {
            border: 1px solid #f4511e;
            border-radius: 0;
            transition: box-shadow 0.5s;
        }

            .panel:hover {
                box-shadow: 5px 0px 40px rgba(0,0,0, .2);
            }

        .panel-footer .btn:hover {
            border: 1px solid #f4511e;
            background-color: #fff !important;
            color: #f4511e;
        }

        .panel-heading {
            color: #fff !important;
            background-color: #008cba !important;
            padding: 25px;
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
                font-size: 32px;
            }

            .panel-footer h4 {
                color: #aaa;
                font-size: 14px;
            }

            .panel-footer .btn {
                margin: 15px 0;
                background-color: #008cba;
                color: #fff;
            }
    </style>
    <div class="jumbotron text-center">
        <h1>The Cottage BnB</h1>
        <p>Safe . Dependable . Affordable </p>
    </div>
    <div class="container-fluid">
  <div class="text-center">
    <h2>Our prices per night</h2>
    <h4>Sign up to start making bookings</h4>
  </div>
  <div class="row">
    <div class="col-sm-6">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Double Room</h1>
        </div>
        <div class="panel-body">
          <p><strong>1</strong> King size bed</p>
          <p><strong>1</strong> Tv screen</p>
          <p><strong>Yes</strong> Food service</p>
        </div>
        <div class="panel-footer">
          <h3>R800</h3>
          <h4>Per night</h4>
          <button class="btn btn-lg">Sign Up</button>
        </div>
      </div>
    </div>
    <div class="col-sm-6">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Signle Room</h1>
        </div>
        <div class="panel-body">
          <p><strong>1</strong> Double bed</p>
          <p><strong>1</strong> Tv screen</p>
          <p><strong>No</strong> Food service</p>
        </div>
        <div class="panel-footer">
          <h3>R450</h3>
          <h4>Per night</h4>
          <button class="btn btn-lg">Sign Up</button>
        </div>
      </div>
    </div>
  </div>
</div>
    <div class="container">
        <br />
        <h2>Gallery</h2>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="Images/wallpaperflare.com_wallpaper.jpg" style="width: 100%;" />
                </div>

                <div class="item">
                    <img src="Images/BeachLight.jpg" alt="Chicago" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/Fishing.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/Beach.jpg" alt="New york" style="width: 100%;">
                </div>
                <div class="item">
                    <img src="Images/Beach1.jpg" alt="New york" style="width: 100%;">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <br />
    <style>
        .map-container {
            overflow: hidden;
            padding-bottom: 56.25%;
            position: relative;
            height: 0;
        }

            .map-container iframe {
                left: 0;
                top: 0;
                height: 100%;
                width: 100%;
                position: absolute;
            }
    </style>
    <div id="map-container-google-3" class="z-depth-1-half map-container-3">
        <iframe src="https://maps.google.com/maps?q=warsaw&t=k&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0"
            style="border-style: none; border-color: inherit; border-width: 0; width: 1142px; height: 299px; margin-left: 15px;" allowfullscreen=""></iframe>
    </div>
</asp:Content>

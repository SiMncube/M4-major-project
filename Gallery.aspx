<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="M4_major_project.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="defaultStyle.css" />
    <link rel="stylesheet" href="https://bootswatch.com/3/yeti/bootstrap.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
         .aboutus-title {
            font-size: 30px;
            letter-spacing: 0;
            line-height: 32px;
            margin: 0 0 39px;
            padding: 0 0 11px;
            position: relative;
            text-transform: uppercase;
            color: #000;
        }
           .aboutus-title::after {
                background: #008cba none repeat scroll 0 0;
                bottom: 0;
                content: "";
                height: 2px;
                left: 0;
                position: absolute;
                width: 54px;
            }
    </style>
    <div class="container">
        <br />
        <h2 class="aboutus-title">Gallery</h2>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">

            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
                <li data-target="#myCarousel" data-slide-to="6"></li>
                <li data-target="#myCarousel" data-slide-to="7"></li>
                <li data-target="#myCarousel" data-slide-to="8"></li>
                <li data-target="#myCarousel" data-slide-to="9"></li>
            </ol>

            <div class="carousel-inner">

                <div class="item">
                    <img src="Images/bath.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/ga.jpg" style="width: 100%;" />
                </div>

                <div class="item">
                    <img src="Images/starlings-cafe.jpg" alt="Chicago" style="width: 100%;">
                </div>

                <div class="item active">
                    <img src="Images/suite.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/foxcroft.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/lux.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/luxx.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/mas.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/double.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/garden.jpg" alt="New york" style="width: 100%;">
                </div>

            </div>

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
</asp:Content>

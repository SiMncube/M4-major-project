<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="M4_major_project.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="defaultStyle.css" />
    <link rel="stylesheet" href="https://bootswatch.com/3/yeti/bootstrap.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <div class="container">
        <br />
        <h2>Gallery</h2>
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
                    <img src="Images/d71fb818-5a90-428b-aaaf-4c97130c5e4b.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item active">
                    <img src="Images/foxcroft.jpg" style="width: 100%;" />
                </div>

                <div class="item">
                    <img src="Images/starlings-cafe.jpg" alt="Chicago" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/SterlingsGarden.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/Fishing.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/6705d34b-5c7c-4e7c-96a0-febdc16c43a0.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/Beach.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/b8daca7b-4f5d-4ffa-afd8-31375e77c202.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/Beach1.jpg" alt="New york" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="Images/b8daca7b-4f5d-4ffa-afd8-31375e77c202.jpg" alt="New york" style="width: 100%;">
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

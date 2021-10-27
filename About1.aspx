<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About1.aspx.cs" Inherits="M4_major_project.About1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="defaultStyle.css" />
    <link rel="stylesheet" href="https://bootswatch.com/3/yeti/bootstrap.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
    <style>
        body {
            font-family: 'Roboto';
            font-size: 16px;
        }

        .aboutus-section {
        }

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

        .aboutus-text {
            color: #606060;
            font-size: 15px;
            line-height: 22px;
            margin: 0 0 35px;
        }

        a:hover, a:active {
            color: #ffb901;
            text-decoration: none;
            outline: 0;
        }

        .aboutus-more {
            border: 1px solid #008cba;
            border-radius: 25px;
            color: #008cba;
            display: inline-block;
            font-size: 14px;
            font-weight: 700;
            letter-spacing: 0;
            padding: 7px 20px;
            text-transform: uppercase;
        }

        .feature .feature-box .iconset {
            background: #fff none repeat scroll 0 0;
            float: left;
            position: relative;
            width: 18%;
        }

            .feature .feature-box .iconset::after {
                background: #008cba none repeat scroll 0 0;
                content: "";
                height: 150%;
                left: 43%;
                position: absolute;
                top: 100%;
                width: 1px;
            }

        .feature .feature-box .feature-content h4 {
            color: #0f0f0f;
            font-size: 18px;
            letter-spacing: 0;
            line-height: 22px;
            margin: 0 0 5px;
        }


        .feature .feature-box .feature-content {
            float: left;
            padding-left: 30px;
            width: 78%;
        }

            .feature .feature-box .feature-content h4 {
                color: #0f0f0f;
                font-size: 18px;
                letter-spacing: 0;
                line-height: 22px;
                margin: 0 0 5px;
            }

            .feature .feature-box .feature-content p {
                color: #606060;
                font-size: 13px;
                line-height: 22px;
            }

        .icon {
            color: #008cba;
            padding: 0px;
            font-size: 40px;
            border: 1px solid #008cba;
            border-radius: 100px;
            color: #fdb801;
            font-size: 28px;
            height: 70px;
            line-height: 70px;
            text-align: center;
            width: 70px;
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
    </style>
    <div class="aboutus-section">
        <div class="container">
            <div class="row">
                <div class="col-md-30 col-sm-6 col-xs-12">
                    <div class="aboutus">
                        <h2 class="aboutus-title">About Us</h2>
                        <p class="aboutus-text">Founded in 2010 in Durban, The Cottage BnB aims to grow from a small Durban outhouse to one of the Durban's leading BnB. The Cottage's mission is <strong>To make it easier for everyone to experience the Durban</strong></p>
                        <p class="aboutus-text">The Cottage is always open and offers 15 rooms(7 double rooms and 8 single rooms). No matter when you want to stay and how long you want to stay, The Cottage makes it easy and backs it all up with excellent customer support</p>
                        <p class="aboutus-text">In addition to comfortable hotel lounge, Our rooms are equipped with a smart TV and Wi-Fi. Our rooms offer all the space and comfort you need during your stay.</p>
                        <h2 class="aboutus-title">Activities around Durban</h2>
                        <p class="aboutus-text">
                            For your gambling entertainment <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://www.suncoastcasino.co.za/">Suncoast Casino</asp:HyperLink>
                        <br />
                            Events at <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://www.mmstadium.com/">Moses Mabhida</asp:HyperLink>
                        <br />
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://www.iol.co.za/lifestyle/food-drink/10-things-to-do-on-florida-road-19731588">Florida Road</asp:HyperLink>
&nbsp;if you are looking at a night out in the city
                        <br />
                            UShaka Marine World for family water activities and Indian Ocean wildlife
                        <br />
                            Durban Botanic Gardens if you want a picnic spot
                        <br />
                            Safari adventure at Phezulu Safari Park
                        </p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="aboutus-banner">
                        <img src="http://themeinnovation.com/demo2/html/build-up/img/home1/about1.jpg" alt="">
                    </div>
                </div>
                <div class="col-md-5 col-sm-6 col-xs-12">
                    <div class="feature">
                        <div class="feature-box">
                            <div class="clearfix">
                                <div class="iconset">
                                    <span class="glyphicon glyphicon-cog icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h3>No reservation fees</h3>
                                    <p>We don’t charge you any booking fees or add any administrative charges. You only pay for your stay.</p>
                                </div>
                            </div>
                        </div>
                        <div class="feature-box">
                            <div class="clearfix">
                                <div class="iconset">
                                    <span class="glyphicon glyphicon-cog icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h3>Low rates</h3>
                                    <p>The Cottage guarantees to offer you the best available rates. You can rest assured that you’re always getting a great deal.</p>
                                </div>
                            </div>
                        </div>
                        <div class="feature-box">
                            <div class="clearfix">
                                <div class="iconset">
                                    <span class="glyphicon glyphicon-cog icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h3>Great customer support</h3>
                                    <p>Whether you’ve just  booked or are already enjoying your trip, our customer experience team are on hand around the clock to answer your questions and advocate on your behalf.</p>
                                </div>
                            </div>
                        </div>
                        <div class="feature-box">
                            <div class="clearfix">
                                <div class="iconset">
                                    <span class="glyphicon glyphicon-cog icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h3>Single Room</h3>
                                    <p>Our comfortable single rooms are just the right size if you are a couple or travelling alone, seeking affordable accommodation. Similar to our double rooms, the single room is fully equipped with all comforts.</p>
                                </div>
                            </div>
                        </div>
                        <div class="feature-box">
                            <div class="clearfix">
                                <div class="iconset">
                                    <span class="glyphicon glyphicon-cog icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h3>Double Room</h3>
                                    <p>Warmth, luxury and peace meet you in our charming comfort double room. In addition to the queen sized bed, the room (23.5m^2) is equipped with all amenities The Cottage has to offer, including free access to the gym.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>&nbsp</div>
    <div>&nbsp</div>
    <h2>Send us a comment in <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink> to feature</h2>   
    <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <h4>"Staff is very kind and helpful"<br>
                    <span style="font-style: normal;">Sanele Theu</span></h4>
            </div>
            <div class="item">
                <h4>"Had a cute breakfast in your garden"<br>
                    <span style="font-style: normal;">Ayanda Ntuli</span></h4>
            </div>
            <div class="item">
                <h4>"You get value for your money"<br>
                    <span style="font-style: normal;">John Smith</span></h4>
            </div>
            <div class="item">
                <h4>"Definity coming back next holidays"<br>
                    <span style="font-style: normal;">Amy Pollard</span></h4>
            </div>
            <div class="item">
                <h4>"Bathroom was spotless when my wife and i arrived"<br>
                    <span style="font-style: normal;">Matthew Govender</span></h4>
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
</asp:Content>

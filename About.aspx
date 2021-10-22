<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="M4_major_project.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
<style>
    body {
        font-family: 'Roboto';
        font-size: 16px;
    }

    .aboutus-section {
        padding: 90px 0;
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
</style>
<div class="aboutus-section">
        <div class="container">
            <div class="row">
                <div class="col-md-30 col-sm-6 col-xs-12">
                    <div class="aboutus">
                        <h2 class="aboutus-title">About Us</h2>
                        <p class="aboutus-text">Founded in 2010 in Durban, The Cottage BnB aims to grow from a small Durban startup to one of the Durban's leading BnB. The Cottage's mission is <strong>To make it easier for everyone to experience the Durban</strong></p>
                        <p class="aboutus-text">The Cottage is available in 24/7 and offers 15 rooms(7 double rooms and 8 single rooms). No matter when you want to stay and how long you want to stay, The Cottage makes it easy and backs it all up with excellent customer support</p>
                        <a class="aboutus-more" href="#">read more</a>
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
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="M4_major_project.Help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
            height: 196px;
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
        .clearfix {
            height: 220px;
        }
    </style>
    <div class="aboutus-section">
        <div class="container">
            <div class="row">
                <div class="col-md-30 col-sm-6 col-xs-12">
                    <div class="aboutus">
                        <h2 class="aboutus-title">Help</h2>
                        <h3 class="aboutus-text">To answer the most asked questions by our customers</h3>
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
                                    <h3>Booking</h3>
                                    <h5>
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/HelpHTML/Make.aspx">Need assistant with making a booking through the website?</asp:HyperLink>
                                    </h5>
                                    <h5>
                                        <asp:HyperLink ID="HyperLink3" runat="server">Canceling a booking</asp:HyperLink>
                                    </h5>
                                    <h5>
                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/HelpHTML/ModifyHelp.aspx">Modifying a booking</asp:HyperLink>
                                    </h5>
                                    <h5>
                                        <asp:HyperLink ID="HyperLink5" runat="server">Don&#39;t want to register?</asp:HyperLink>
                                    </h5>
                                </div>
                            </div>
                        </div>
                        <div class="feature-box">
                            <div class="clearfix">
                                <div class="iconset">
                                    <span class="glyphicon glyphicon-cog icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h3>Registering</h3>
                                    <h5>
                                        <asp:HyperLink ID="HyperLink1" runat="server">How to create an account</asp:HyperLink>
                                    </h5>
                                    <h5>
                                        <asp:HyperLink ID="HyperLink6" runat="server">Updating your info?</asp:HyperLink>
                                    </h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

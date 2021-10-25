<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="M4_major_project.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://bootswatch.com/3/yeti/bootstrap.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .jumbotron {
            background: #008cba;
            color: #FFF;
        }

        .jumbotron-sm {
            padding-top: 24px;
            padding-bottom: 24px;
        }

        .jumbotron small {
            color: #FFF;
        }

        .h1 small {
            font-size: 24px;
        }
    </style>
    <div class="jumbotron jumbotron-sm">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-12">
                    <h1 class="h1">Contact us <small>Feel free to contact us</small></h1>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="well well-sm">
                    <form>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">
                                        Name</label>
                                    <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                                </div>
                                <div class="form-group">
                                    <label for="name">
                                        Email</label>
                                    <input type="text" class="form-control" id="email" placeholder="Enter email address" required="required" />
                                </div>
                                <div class="form-group">
                                    <label for="subject">
                                        Subject</label>
                                    <select id="subject" name="subject" class="form-control" required="required">
                                        <option value="na" selected="">Choose One:</option>
                                        <option value="service">General customer query</option>
                                        <option value="suggestions">Suggestions</option>
                                        <option value="product">Feedback on service</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">
                                        Message</label>
                                    <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                        placeholder="Message"></textarea>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <asp:Button class="btn btn-primary pull-right" id="btnContactUs" runat="server" Text="Send Message" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-4">
                <form>
                    <legend><span class="glyphicon glyphicon-globe"></span>The Cottage BnB</legend>
                    <address>
                        <strong>Visit</strong><br>
                        81 Evans Rd<br>
                        Glenwood
                        <br>
                        Durban, 4001<br>
                        <abbr title="Phone">
                            P:</abbr>
                        (+27) 083 809 3982
                    </address>
                    <address>
                        <strong>Sonya Jardine</strong><br>
                        <a href="mailto:#">Thecottagebnb@gmail.com</a>
                    </address>
                </form>
            </div>
        </div>
    </div>
    <br />
    <div id="map-container-google-1" class="z-depth-1 map-container">
        <iframe src="https://maps.google.com/maps?q=81+Evans+Rd,+Glenwood,+Berea&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0"
            style="border-style: none; border-color: inherit; border-width: 0; width: 1151px; height: 366px;" allowfullscreen=""></iframe>
    </div>
    <br />
</asp:Content>

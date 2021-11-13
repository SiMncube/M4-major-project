<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="M4_major_project.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://bootswatch.com/3/yeti/bootstrap.css">
    <div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <h3 style="color: #008cba" class="text-center">Payment Details</h3>
                        <img class="img-responsive cc-img" src="http://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png">
                    </div>
                </div>
                <div class="panel-body">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD NUMBER</label>
                                    <asp:TextBox ID="cardNumberTextBox" class="form-control" runat ="server" placeholder="Valid Card Number" required=""></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <asp:TextBox ID="expireTextBox" runat="server" class="form-control" placeholder="MM / YY"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label>CV CODE</label>
                                    <input type="tel" class="form-control" placeholder="CVC" required="" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD OWNER</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Card Owner Names" required=""></asp:TextBox>
                                </div>
                            </div>
                        </div>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-xs-12">
                            <asp:Button ID="Button1" class="btn btn-primary pull-center" runat="server" Text="Process payment" style="background-color: #008cba" Width="810px"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    .cc-img {
        margin: 0 auto;
    }
</style>
</asp:Content>

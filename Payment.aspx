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
                                    <asp:TextBox ID="cardNumberTextBox" class="form-control" runat="server" placeholder="Valid Card Number" required=""></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-md-5">
                                <label for="subject">Choose Month</label>
                                <select id="monthComboBox" name="subject" class="form-control" required="required" runat="server">
                                    <option value="na" selected="">Month:</option>
                                    <option value="jan">January</option>
                                    <option value="feb">February</option>
                                    <option value="Mar">March</option>
                                    <option value="apr">April</option>
                                    <option value="may">May</option>
                                    <option value="Jun">June</option>
                                    <option value="Jul">July</option>
                                    <option value="aug">August</option>
                                    <option value="sep">September</option>
                                    <option value="oct">October</option>
                                    <option value="nov">November</option>
                                    <option value="dec">December</option>
                                </select>
                            </div>
                            <div class="col-xs-12 col-md-5">
                                <label for="subject">Choose Year</label>
                                <select id="yearComboBox" name="subject" class="form-control" required="required" runat="server">
                                    <option value="na" selected="">Year:</option>
                                    <option value="2022">2022</option>
                                    <option value="2023">2023</option>
                                    <option value="2024">2024</option>
                                    <option value="2025">2025</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CV CODE</label>
                                    <asp:TextBox ID="cvvTextbox" runat="server" class="form-control" placeholder="CVC" required=""></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD OWNER</label>
                                    <asp:TextBox ID="holderNameTextBox" runat="server" class="form-control" placeholder="Card Owner Names" required=""></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <div class="row">
                            <div class="col-xs-12">
                                <asp:Button ID="Button1" class="btn btn-primary pull-center" runat="server" Text="Process payment" Style="background-color: #008cba" Width="810px" OnClick="Button1_Click" />
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

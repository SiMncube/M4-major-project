<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifyBooking.aspx.cs" Inherits="M4_major_project.ModifyBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class="center" style="margin: auto; width: 50%; border: 0px solid #FFFF00; padding: 0px">
        <h2 style="margin: auto; width: 52%; border: 0px solid #FFFF00; padding: 0px">Modify a booking</h2>
        <br />
        <div class="row" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
            <div class="form-group">
                <label for="name">Date-In</label>
                <asp:TextBox class="form-control" ID="dateInTextBox" placeholder="Choose Date-In" required="required" runat="server" TextMode="DateTime"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="name">Date-Out</label>
                <asp:TextBox class="form-control" ID="dateOutTextBox" placeholder="Choose Date-Out" required="required" runat="server" TextMode="DateTime"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="subject">Single Rooms</label>
                <select id="singleBox" class="form-control" required="required" runat="server"></select>
            </div>
            <div class="form-group">
                <label for="subject">Double Rooms</label>
                <select id="doubleBox" class="form-control" required="required" runat="server"></select>
            </div>
            <div class="form-group" style="margin: auto; width: 80%">
                <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="???" OnClick="Button1_Click" Width="210px" />
            </div>
        </div>
        <br />
    </div>
    </div>
</asp:Content>

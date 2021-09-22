<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="M4_major_project.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form>
        <fieldset>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Name"  class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="nameTextBox" runat="server" class="form-control" placeholder="Enter name" required=""></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="Surname"  class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="surnameTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
             </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Id Number" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="idTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Street name" class="form-label mt-4" ></asp:Label>
                <asp:TextBox ID="streetTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Surburb" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="surbubNameTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" Text="City" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="cityTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label7" runat="server" Text="Postal code" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="postalTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label8" runat="server" Text="Cell phone" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="cellTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label9" runat="server" Text="Email" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="emailTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label10" runat="server" Text="Password" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="passwordTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label11" runat="server" Text="Confirm password" class="form-label mt-4"></asp:Label>
                <asp:TextBox ID="confirmTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-primary"/>
        </fieldset>
    </form>
</asp:Content>

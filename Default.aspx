<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="M4_major_project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="txt_field">
                <asp:Label ID="Label2" runat="server" Text="Password" CssClass="auto-style3"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" required="" Font-Bold="True" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
            </div>
            <div class="pass">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Forgot password?</asp:LinkButton>
            </div>
    </asp:Content>

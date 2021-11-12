<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestingWebForm.aspx.cs" Inherits="M4_major_project.WebForm4" %>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
</script>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div></div>
    <div>
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="DateTime" Width="185px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    </div>
</asp:Content>

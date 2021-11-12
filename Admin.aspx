<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="M4_major_project.Admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="loginStyle.css" />
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top" id="Panel" runat="server">
        <div class="container">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" runat="server" href="~/">The Cottage</a>
            </div>
            <div class="navbar-collapse collapse" staticselectedstyle-verticalpadding="10px">
                    <ul class="nav navbar-nav" runat="server">
                        <li><a runat="server" href="~/"><b>View Bookings</b></a></li>
                        <li><a runat="server" href="~/About"><b>Modify Booikings</b></a></li>
                        <li><a runat="server" href="~/Contact"><b>Cancel Bookings</b></a></li>
                        <li><a runat="server" href="~/Contact"><b>Register Customer</b></a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a runat="server" id="Username1" href="~/Admin"><b id="setUser" runat="server"></b></a></li>
                        <li><a runat="server" id="Logoff1" href="~/Default" onclick="logOff_click()" ><b>Log off</b></a></li>
                    </ul>
                </div>
        </div>
    </div>
</body>
</html>

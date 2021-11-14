<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminModify.aspx.cs" Inherits="M4_major_project.AdminModify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-inverse navbar-fixed-top" id="Panel" runat="server">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" runat="server" href="~/Admin">The Cottage</a>
                    </div>
                    <div class="navbar-collapse collapse" staticselectedstyle-verticalpadding="10px">
                        <ul class="nav navbar-nav" runat="server">
                            <li><a runat="server" href="~/Admin"><b>Make Bookings</b></a></li>
                            <li><a runat="server" href="~/AdminViewBooking"><b>View Bookings</b></a></li>
                            <li><a runat="server" href="~/AdminCancel"><b>Cancel Bookings</b></a></li>
                            <li><a runat="server" href="~/AdminRegister"><b>Register Customer</b></a></li>
                            <li><a runat="server" href="~/AdminUpdate"><b>Update Customer Details</b></a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a runat="server" id="Username1" href="~/Admin"><b id="setUser" runat="server">Admin1</b></a></li>
                            <li><a runat="server" id="Logoff1" href="~/Default" onclick="logOff_click()"><b>Log off</b></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <br />
            <br />
            <br />
            <div class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
                <div class="text-center" style="background-color: #008cba; height: 55px">
                    <h1 style="color: white; margin: auto">Modify Bookings</h1>
                </div>
            </div>
            <br />
            <br />
        </div>
    </form>
</body>
</html>

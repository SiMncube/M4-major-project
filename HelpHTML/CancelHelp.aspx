<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CancelHelp.aspx.cs" Inherits="M4_major_project.HelpHTML.CancelHelp" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://bootswatch.com/3/yeti/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
    .jumbotron-sm {
        padding-top: 24px;
        padding-bottom: 24px;
    }
    .jumbotron {
        background: #008cba;
        color: #FFF;
    }
    .auto-style1 {
        height: 40px;
    }

</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="jumbotron jumbotron-sm">
               <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-12">
                    <h1 class="h1">How To Cancel A Booking</h1>
                </div>
            </div>
        </div>
    </div>
    <div></div>
        <div id="Content" style="margin: 0 auto; text-align:center">
            <div style="float: left; width: 100%;" >
            <h2>1. Enter Booking reference</h2>
            <h3>1.1. Click "Search" to confirm</h3>
            <Br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Screenshot (417).png" />
        </div>  
            <div>&nbsp</div>
            <div style="float: left; width: 100%;" >
            <h2>2. Select the booking you want to cancel</h2>
            <Br />
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Screenshot (418).png" />
        </div>  
            <div>&nbsp</div>
            <div style="float: left; width: 100%;" >
            <h2>3. Click "Done" to cancel</h2>
            <h5>IMPORTANT: Make sure correcting booking appears</h5>
            <Br />
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Screenshot (419).png" />
        </div>  
            <div>&nbsp</div>
           </div>
        </div>
    </form>
</body>
</html>

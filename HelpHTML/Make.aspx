<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Make.aspx.cs" Inherits="M4_major_project.HelpHTML.Make" %>

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
            <div class="jumbotron jumbotron-sm">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-12">
                    <h1 class="h1">How To Make A Booking</h1>
                </div>
            </div>
        </div>
    </div>
    <div></div>
    
        <div id="Content" style="margin: 0 auto; text-align:center">
            <div style="float: left; width: 100%;" >
            <h2>1. Select Check-In and Check-Out Dates</h2>
            <Br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Screenshot (381).jpg" />
        </div>  
            <div>&nbsp</div>
            <br />
            <div style="float: left; width: 100%;" >
            <h2>2. Select the number of rooms from our available</h2>
            <Br />
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Screenshot (388).png" />
        </div>
            <div>&nbsp</div>
            <br />
            <div style="float: left; width: 100%;" >
            <h2>3. Click "Save" to confirm the booking</h2>
            <h5> IMPORTANT: Amount due should appear in the box</h5>
            <Br />
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Screenshot (387).png" />
        </div>
            <div>&nbsp</div>
            <br />
            <div style="float: left; width: 100%;" >
            <h2>4. Enter payment details</h2>
            <h5>4.1 "Proceed Payment" once all details have been captured correctly</h5>
            <Br />
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/Untitled.png" />
        </div>
   <br />
     </div>  
    </form>
</body>
</html>

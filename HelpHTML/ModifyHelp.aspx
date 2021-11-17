<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyHelp.aspx.cs" Inherits="M4_major_project.HelpHTML.ModifyHelp" %>

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
 <form id="form2" runat="server">
            <div class="jumbotron jumbotron-sm">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-12">
                    <h1 class="h1">How To change booking dates</h1>
                </div>
            </div>
        </div>
    </div>
  <div>&nbsp</div>
     <div id="Content" style="margin: 0 auto; text-align:center">
            <div style="float: left; width: 100%;" >
            <h2>1. Select booking you want to change from active booking</h2>
            <h3>Select new Check-In and Check-Out Dates</h3>
            <Br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Screenshot (394).png" />
        </div>
   <div>&nbsp</div>
            <br />
            <div style="float: left; width: 100%;" >
            <h2>2. Select the number of rooms from our available</h2>
            <h3>Click "Modify Booking" to confirm</h3>
            <h5> IMPORTANT: Amount due should appear in the box</h5>
            <Br />
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Screenshot (393).png" />
        </div>
            <div>&nbsp</div>
            <br />
            <div style="float: left; width: 100%;" >
            <h2>3. Enter payment details</h2>
            <h5> "Proceed Payment" once all details have been captured correctly</h5>
            <Br />
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/Untitled.png" />
        </div>


        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterHelp.aspx.cs" Inherits="M4_major_project.HelpHTML.RegisterHelp" %>

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
             <div>
            <div class="jumbotron jumbotron-sm">
               <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-12">
                    <h1 class="h1">How To Register</h1>
                </div>
            </div>
        </div>
    </div>
    <div></div>
        <div id="Content" style="margin: 0 auto; text-align:center">
            <div style="float: left; width: 100%;" >
            <h2>1. Enter Personal Details</h2>
            <h4>1.1. Click "Register" to confirm</h4>
            <h4>1.2. Check emails for One Time Password (OTP)</h4>
            <Br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Screenshot (403).png" />
        </div>  
            <div>&nbsp</div>
           </div>
        </div>

        </div>
    </form>
</body>
</html>

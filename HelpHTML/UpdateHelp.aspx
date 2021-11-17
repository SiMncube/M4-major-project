<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateHelp.aspx.cs" Inherits="M4_major_project.HelpHTML.UpdateHelp" %>

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
                    <h1 class="h1">How To Update Customer Details</h1>
                </div>
            </div>
        </div>
    </div>
    <div></div>
        <div id="Content" style="margin: 0 auto; text-align:center">
            <div style="float: left; width: 100%;" >
            <h2>1. Type in name, surname, ID number, or email address</h2>
            <h3>1.1. Click "Search" to search for customer</h3>
            <Br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Screenshot (410).png" />
        </div>  
            <div>&nbsp</div>
             <br />
            <div style="float: left; width: 100%;" >
            <h2>2. Select customer details that you want to update</h2>
            <Br />
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Screenshot (411).png" />
        </div>
            </div> 
        </div>
    </form>
</body>
</html>

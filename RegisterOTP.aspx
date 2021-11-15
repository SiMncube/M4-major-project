<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterOTP.aspx.cs" Inherits="M4_major_project.OTP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function showModal() {
            $("#otpModal").modal('show');
        }

        $(function () {
            $("#btnShow").click(function () {
                showModal();
            });
        });
    </script>
    <style type="text/css">
        .auto-style1 {
            height: 677px;
            width: 1350px;
        }

        .auto-style2 {
            width: 367px;
            position: fixed;
            left: 517px;
            top: 204px;
            height: 337px;
        }

        .auto-style3 {
            margin-left: 142px;
            margin-top: 21px;
        }

        .auto-style4 {
            width: 316px;
            margin-left: 19px;
        }

        .auto-style5 {
            width: 164px;
            position: fixed;
            left: 627px;
            top: 315px;
            height: 31px;
            right: 317px;
        }

        .auto-style6 {
            width: 331px;
            position: fixed;
            left: 541px;
            top: 370px;
        }

        .auto-style7 {
            position: fixed;
            left: 626px;
            top: 426px;
        }

        .auto-style8 {
            position: fixed;
            left: 640px;
            top: 472px;
            width: 97px;
        }

        .auto-style9 {
            position: fixed;
            left: 600px;
            top: 521px;
            width: 261px;
            height: 13px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('https://localhost:44301/Images/WhatsApp Image 2021-09-05 at 19.21.54.jpeg')" class="auto-style1">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div class="auto-style2" style="border: thick solid #000000; background-color: #FFFFFF">
                <asp:Image ID="Image1" runat="server" CssClass="auto-style3" Height="74px" ImageAlign="AbsMiddle" ImageUrl="~/Images/png-clipart-login-computer-icons-avatar-icon-monochrome-black.png" Width="85px" />
                <br />
                <h1 class="auto-style5">Enter Code</h1>
                <br />
                <div class="auto-style4">
                </div>
                <br />
                <br />
                <br />
                <div class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text="We have sent you an email with 6 digit verification code (OTP) on" ForeColor="#333333"></asp:Label></div>
                <br />
                <br />
                <div class="auto-style7">
                    <asp:TextBox ID="otbTextBox" runat="server" Height="27px" ToolTip="6 digit OTP" Width="138px"></asp:TextBox>
                </div>
                <div class="auto-style8">
                    <asp:Button ID="confirmBtn" runat="server" BackColor="#0099FF" ForeColor="White" Height="32px" Text="Confirm" Width="116px" OnClick="ConfirmOTPbt_Click" />
                </div>
                <div class="auto-style9">
                    <asp:Label ID="Label2" runat="server" ForeColor="#666666" Text="Did not receive the code?"></asp:Label> &nbsp;<asp:HyperLink ID="resendHPL" runat="server" ForeColor="#0099FF">Resend</asp:HyperLink>
                </div>
            </div>
        </div>   
    </form>
</body>
/html>

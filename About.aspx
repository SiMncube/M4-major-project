<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="M4_major_project.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1352px;
            height: 652px;
            margin-right: 67px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
            width: 1365px;
            height: 56px;
        }
        .auto-style4 {
            text-align: center;
            height: 158px;
            width: 1365px;
        }
        .auto-style5 {
            width: 1365px;
        }
    </style>
</head>
<body style="margin-left: 0px; margin-top: 0px">
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('Images/wallpaperflare.com_wallpaper.jpg')">
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4" style="border-style: groove; background-color: #808080">
                        <asp:Image ID="Image1" runat="server" Height="245px" ImageUrl="~/Images/happy people.jpg" Width="474px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-size: xx-large; font-family: 'Times New Roman', Times, serif; color: #000000; background-color: #808080; border-style: groove">About Us</td>
                </tr>
                <tr>
                    <td class="auto-style5">We help you find affordable luxurrious </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

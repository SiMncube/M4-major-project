<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="M4_major_project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 650px;
            width: 1351px;
        }
        .auto-style2 {
            height: 20px;
            width: 625px;
        }
        .auto-style3 {
            height: 20px;
            width: 381px;
        }
        .auto-style5 {
            height: 20px;
            width: 419px;
        }
        .auto-style7 {
            margin-bottom: 0px;
        }
        .auto-style8 {
            width: 100%;
            margin-right: 0px;
            height: 38px;
            margin-top: 0px;
        }
        .auto-style9 {
            margin-left: 40px;
            text-align: center;
            height: 25px;
        }
        .auto-style10 {
            width: 89%;
        }
        .auto-style13 {
            width: 690px;
            text-align: right;
            height: 40px;
        }
        .auto-style14 {
            height: 40px;
            text-align: center;
            width: 645px;
        }
        .auto-style15 {
            width: 690px;
            text-align: right;
            height: 36px;
        }
        .auto-style16 {
            height: 36px;
            text-align: center;
            width: 645px;
        }
        .auto-style19 {
            width: 100%;
            height: 102px;
        }
        .auto-style21 {
            margin-top: 0px;
        }
        .auto-style22 {
            text-align: center;
            height: 129px;
        }
    </style>
    <table class="auto-style8" style="border-style: groove">
                <tr>
                    <td class="auto-style9" style="border-color: #000000; border-style: groove; background-color: #808080">&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" ForeColor="Blue" Font-Size ="XX-Large" Text="The Cottage"></asp:Label>
       </td>
                </tr>
            </table>
        
        <table class="auto-style10">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="248px" ImageUrl="~/Images/luxury bed.jpg" Width="432px" BorderStyle="Groove" />
                </td>
                <td class="auto-style5">
                    <asp:Image ID="Image2" runat="server" Height="248px" ImageUrl="~/Images/4ec0b423-f222-48e3-be7d-869433c98184.jpg" Width="493px" BorderStyle="Groove" />
                </td>
                <td class="auto-style2">
                    <asp:Image ID="Image3" runat="server" CssClass="auto-style7" Height="248px" ImageUrl="~/Images/Airbnb_breakfast.jpg" Width="423px" BorderColor="White" BorderStyle="Groove" />
                </td>
            </tr>
        </table>
            <asp:Table ID="Table2" runat="server" BackColor="Gray" ForeColor="Gray" Height="16px" Width="1353px" BorderColor="Black" BorderStyle="Double" CssClass="auto-style21">
        </asp:Table>

            <br />

            <table class="nav-justified" style="border-style: groove">
                <tr>
                    <td class="auto-style22" style="border-color: #000000; border-style: groove; background-color: #808080; color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <table class="auto-style19" style="border-color: #000000; border-style: double; color: #000000; font-size: large; font-family: 'Times New Roman', Times, serif; background-color: #808080;">
                            <tr>
                                <td class="auto-style13" style="font-family: 'Times New Roman', Times, serif; color: #0000FF; font-size: x-large">Single Rooms: R450&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <td class="auto-style14" style="color: #0000FF; font-size: x-large; font-family: 'Times New Roman', Times, serif;">
                                    Would You Like To Get Quote?</td>
                            </tr>
                            <tr>
                                <td class="auto-style15" style="color: #0000FF; font-size: x-large;">Double Rooms: R800&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <td class="auto-style16">
                                    <asp:Button ID="Button2" runat="server" BackColor="Blue" BorderColor="Black" BorderStyle="Groove" ForeColor="White" Height="45px" Text="Get Quote" Width="147px" />
                                </td>
                            </tr>
                            </table>
                    </td>
                </tr>
            </table>

            <br />
    </asp:Content>

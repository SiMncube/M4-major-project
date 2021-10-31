<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MakeBooking.aspx.cs" Inherits="M4_major_project.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group">
        <table style="width: 100%;">
            <tr>
                <td style="width: 428px">&nbsp;</td>
                <td style="width: 322px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 428px">&nbsp;</td>
                <td style="width: 322px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 428px">&nbsp;</td>
                <td style="width: 322px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 428px">&nbsp;</td>
                <td style="width: 322px">
                    <label for="subject">Single rooms:</label>
                    <select id="singleBox" name="subject" class="form-control" required="required" runat="server">
                    </select></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 428px">&nbsp;</td>
                <td style="width: 322px">
                    <label for="subject">Double Rooms:</label>
                    <select id="doubleBox" name="subject" class="form-control" required="required" runat="server">
                    </select></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 428px">&nbsp;</td>
                <td style="width: 322px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 428px">&nbsp;</td>
                <td style="width: 322px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

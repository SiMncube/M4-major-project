<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentReport.aspx.cs" Inherits="M4_major_project.PaymentReport" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                <Report FileName="PaymentReport.rpt">
                </Report>
            </CR:CrystalReportSource>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource1" />
            <br />
            <br />
        </div>
        <CR:CrystalReportSource ID="CrystalReportSource2" runat="server">
            <Report FileName="PaymentReport.rpt">
            </Report>
        </CR:CrystalReportSource>
        <CR:CrystalReportViewer ID="CrystalReportViewer2" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource2" />
    </form>
</body>
</html>

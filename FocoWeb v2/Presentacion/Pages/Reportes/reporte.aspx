<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="reporte.aspx.vb" Inherits="Presentacion.reporte" %>

<%@ Register Assembly="DevExpress.XtraReports.v17.2.Web, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--<dx:ASPxButton ID="pdf" runat="server" Text="pdf repote"></dx:ASPxButton>--%>
            <dx:ASPxDocumentViewer ID="vistareporte" runat="server" Height="1100px" Theme="MaterialCompact" Width="100%">
            </dx:ASPxDocumentViewer>

        </div>
    </form>
</body>
</html>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MostrarHistorial.aspx.vb" Inherits="Presentacion.MostrarHistorial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" Theme="MaterialCompact" Width="100%">
            </dx:ASPxGridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>

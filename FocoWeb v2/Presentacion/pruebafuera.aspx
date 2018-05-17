<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="pruebafuera.aspx.vb" Inherits="Presentacion.pruebafuera" %>
<%@ register assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="grillaMensajes" runat="server" AutoGenerateColumns="False"  Width="100%" Theme="MaterialCompact" DataSourceID="ObjectDataSource1" >
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="ID_REG_CHK_HIST" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ID_REG_CHK" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ESTADO_APROBACION" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OBSERVACION_CHK" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="FECHA_HORA" VisibleIndex="4">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="ID_USU" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="NOM_USU" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="NOM_REG_CHK" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="NOM_ESTADO_APROBACION" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                </Columns>
         </dx:ASPxGridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getHistorial" TypeName="DAL.Calidad.Historial">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="" Name="vUsuario" SessionField="xSSN_USUARIO" Type="Object" />
                    <asp:Parameter DefaultValue="612" Name="ID_REG_CHK" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>

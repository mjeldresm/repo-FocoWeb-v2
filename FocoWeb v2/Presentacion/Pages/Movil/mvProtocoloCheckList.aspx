<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="mvProtocoloCheckList.aspx.vb" Inherits="Presentacion.mvProtocoloCheckList" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:BootstrapGridView ID="grillaCheck" runat="server" DataSourceID="sqlCheckList"></dx:BootstrapGridView>
        </div>
         <asp:SqlDataSource ID="sqlCheckList" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_REG_LISTA_CHEQUEO" SelectCommandType="StoredProcedure" UpdateCommand="SP_QA_WS_ACTUALIZA_CHECKLIST" UpdateCommandType="StoredProcedure">
                                                                        <SelectParameters>
                                                                            <asp:QueryStringParameter Name="ID_ACC_REG" QueryStringField="idRegistro" DefaultValue="124" Type="Int32" />
                                                                        </SelectParameters>
                                                                        <UpdateParameters>
                                                                            <asp:Parameter Name="ID_REG_CHK"   Type="Int64" />
                                                                            <asp:Parameter Name="ESTADO_APROBACION"   Type="Int16" />
                                                                            <asp:Parameter Name="OBS" Type="String" />
                                                                        </UpdateParameters>
                                                                    </asp:SqlDataSource>
    </form>
</body>
</html>

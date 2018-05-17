<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="prueba2.aspx.vb" Inherits="Presentacion.Formulario_web15" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link href="../../assets/stylesheets/DragAndDrop.css" rel="stylesheet" />
    <link href="../../CSS/animate.css" rel="stylesheet" />
    <link href="../../assets/stylesheets/pace-theme-flash.css" rel="stylesheet" />
    <script src="../../../assets/javascripts/pace.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</asp:Content>


<asp:Content ID="MainBody" ContentPlaceHolderID="body" runat="server">
    
    <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" DataSourceID="SqlDataSource1" Theme="MaterialCompact" Height="100%" Width="100%">
        <Fields>
            <dx:PivotGridField FieldName="NOMBRE_UCO" Name="fieldNOMBREUCO" ID="fieldNOMBREUCO" Area="RowArea" AreaIndex="0"></dx:PivotGridField>
            <dx:PivotGridField FieldName="UCO_SUP" Name="fieldUCOSUP" ID="fieldUCOSUP" Area="DataArea" AreaIndex="0"></dx:PivotGridField>
            <dx:PivotGridField FieldName="NOMBRE_TIP" Name="fieldNOMBRETIP" ID="fieldNOMBRETIP" Area="RowArea" AreaIndex="1"></dx:PivotGridField>
            <dx:PivotGridField ID="fieldTIPOUCO" Area="ColumnArea" AreaIndex="0" FieldName="TIPOUCO" Name="fieldTIPOUCO">
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldIDTIP" Area="DataArea" FieldName="ID_TIP" Name="fieldIDTIP" Visible="False">
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldIDTUC" Area="DataArea" FieldName="ID_TUC" Name="fieldIDTUC" Visible="False">
            </dx:PivotGridField>
        </Fields>
    </dx:ASPxPivotGrid>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="PA_ListadoUco" SelectCommandType="StoredProcedure">
                                                        <SelectParameters>
                                                            <asp:SessionParameter DefaultValue="68" Name="ID_OBRA" SessionField="ID_OBRA" Type="Int64" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>


</asp:Content>

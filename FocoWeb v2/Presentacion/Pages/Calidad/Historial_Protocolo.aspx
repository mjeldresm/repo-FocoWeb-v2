<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="Historial_Protocolo.aspx.vb" Inherits="Presentacion.Formulario_web114" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
     <dx:ASPxGridView ID="grillaHistorial" runat="server" Theme="MaterialCompact" Width="100%" AutoGenerateColumns="False">
         <Columns>
             <dx:GridViewDataTextColumn FieldName="ID_REG_CHK_HIST" VisibleIndex="0">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn FieldName="ID_REG_CHK" VisibleIndex="1">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn FieldName="ESTADO_APROBACION" VisibleIndex="2">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn FieldName="OBSERVACION_CHK" VisibleIndex="3">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn FieldName="FECHA_HORA" VisibleIndex="4">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn FieldName="ID_USU" VisibleIndex="5">
             </dx:GridViewDataTextColumn>
         </Columns>
            </dx:ASPxGridView>
</asp:Content>

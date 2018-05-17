<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="Pruebas.aspx.vb" Inherits="Presentacion.Formulario_web14" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link href="../../assets/stylesheets/DragAndDrop.css" rel="stylesheet" />
    <link href="../../CSS/animate.css" rel="stylesheet" />
<link href="../../assets/stylesheets/pace-theme-flash.css" rel="stylesheet" />
<script src="../../../assets/javascripts/pace.min.js"></script>

    <script type="text/javascript">
        function CategoriasCombo_SelectedIndexChanged(s, e) {
             grid.GetEditor("ID_TIP").PerformCallback(s.GetValue());
         }
	</script>
   
    </asp:Content>


<asp:Content ID="MainBody" ContentPlaceHolderID="body" runat="server">
         
   
</asp:Content>

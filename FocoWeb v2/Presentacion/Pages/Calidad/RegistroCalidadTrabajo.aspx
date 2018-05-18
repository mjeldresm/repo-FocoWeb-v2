<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="RegistroCalidadTrabajo.aspx.vb" Inherits="Presentacion.Formulario_web112" %>
<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxRichEdit.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRichEdit" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="../../assets/stylesheets/DragAndDrop.css" rel="stylesheet" />
    <link href="../../CSS/animate.css" rel="stylesheet" />
    <link href="../../assets/stylesheets/pace-theme-flash.css" rel="stylesheet" />
    <script src="../../assets/javascripts/pace.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="../../assets/javascripts/bootstrap-notify.min.js"></script>


    <style>
   .list-group-item
   {
    position: relative;
    display: block;
    padding: 10px 15px;
    margin-bottom: -1px;
    background-color: #f3f3f3;
    border: 1px solid #ddd;
   }
 .dropZoneExternal > div,
.dropZoneExternal > img
{
    position: absolute;
}
.dropZoneExternal
{
   
    position: relative;
    border: 1px dashed #f17f21!important;
    cursor: pointer;
}
.dropZoneExternal,
.dragZoneText
{
    width: 350px;
    height: 350px;
}
.dropZoneText
{
    width: 300px;
    height: 150px;
    color: #fff;
    background-color: #888;
}
#dropZone
{
    top: 0;
    padding: 100px 25px; 
}
.uploadControlDropZone,
.hidden
{
    display: none;
}
.dropZoneText,
.dragZoneText
{
    display: table-cell;
    vertical-align: middle;
    text-align: center;
    font-size: 20pt;
}
.dragZoneText
{
    color: #808080;
}
.dxucInlineDropZoneSys span
{
    color: #fff!important;
    font-size: 10pt;
    font-weight: normal!important;
}
.uploadControlProgressBar
{
    width: 350px!important;
}
.validationMessage
{
    padding: 0 20px;
    text-align: center;
}
.uploadControl
{
    margin-top: 10px;
}
.Note
{
    max-width: 500px;
}
   
        .dxpc-mainDiv.DetailsPopup
        {
            border-width: 4px; 
        }
        .dxpc-mainDiv.DetailsPopup .dxpc-content
        {
            padding: 0;
        }
        .dxpc-mainDiv.DetailsPopup .dxpc-content > div
        {
            margin: auto;
        }
        .dxpc-mainDiv.DetailsPopup .dxflGroupSys
        {
            padding-top: 12px;
            padding-bottom: 12px;
        }
        .dxpc-mainDiv.DetailsPopup .dxflCaptionCellSys label
        {
            color: #929292;
        }
    </style>

      <%--<script type="text/javascript">
          function onFilterMenuItemClick(s, e) {
            var filterArg = e.item.name === 'All' ? "" : e.item.name + "|" + e.item.GetText();
            alert(filterArg); 
            manejaArchivos.PerformCallback(filterArg);
        }
    </script>--%>
     <style>
        .menu-container,
        .filemanager-container
        {
            display: table-cell;
            vertical-align: top;
        }
        .filemanager-container
        {
            width: 100%;
        }
    </style>
 <script>
     function OnCustomCommand(s, e) {
         switch (e.commandName) {
             case "ChangeView-Thumbnails":
                 manager.PerformCallback("Thumbnails");
                 break;
             case "ChangeView-Details":
                 manager.PerformCallback("Details");
                 break;
             case "Properties":
                 PopupControl.PerformCallback(manager.GetActiveAreaName());
                 break;
         }
     }
     function OnToolbarUpdating(s, e) {
         var enabled = ( manager.GetSelectedItems().length > 0 && e.activeAreaName != "None");
         //manager.GetToolbarItemByCommandName("Properties").SetEnabled(enabled);
         //manager.GetContextMenuItemByCommandName("Properties").SetEnabled(enabled);
     }
     function OnPopupEndCallback(s, e) {
         PopupControl.SetHeaderText(PopupControl.cpHeaderText);
         PopupControl.ShowAtElement(manager.GetMainElement());
     }
    </script>



  <%--  <script  type="text/javascript">
        function ChangeGridWidth(sel) {
            document.getElementById("gridContainer").style.width = 100%;
        }
</script>--%>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body"  runat="server">
    <div class ="page-profile">
    <div class="profile-full-name">
			<span class="text-semibold">
               <br />
              </span>
		</div>
	 	<div class="profile-row">
			<div class="left-col">
				<div class="profile-block">
					<div class="panel profile-photo">
						<img src="../../assets/images/logoBeltec2.png" />
					</div><br>
				
				</div>
				<div class="menu-content top" id="menu-content-demo">
				<div>
					<div class="text-bg ">
                     </div>  
					<div class="btn-group btn-group-lg">
						<a href="#" onclick="window.location.href='RegistrosCalidadListado.aspx'; return false;"class="btn btn-group-lg  btn-outline btn-warning"><i class="fas fa-angle-left"></i></a>
                        <a>&nbsp;Volver</a>
						<%--<a href="#" class="btn btn-group-lg btn-outline btn-warning"><i class="fas fa-lock"></i></a>
						<a href="#" class="btn btn-group-lg btn-outline btn-warning"><i class="fas fa-print"></i></a>--%>
					</div>
					
				</div>
			</div>
				<div class="panel panel-transparent">
					<div class="panel-heading">
						<span class="panel-title">INFO. DEL PROTOCOLO </span>
					</div>
                    <div class="list-group">
                        <a class="list-group-item">
                              <p class="list-group-item-heading text-left text-xs"><i class="far fa-calendar-check"></i>&nbsp;&nbsp;<b>Actividad:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblActividad" runat="server" Text=""></asp:Label></p>
                            </a>
                        <a class="list-group-item">
                               <p class="list-group-item-heading text-left text-xs"><i class="fas fa-angle-right"></i>&nbsp;&nbsp;<b>Etapa:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblEtapa" runat="server" Text=""></asp:Label></p>
                            </a>
                        <a class="list-group-item">
                               <p class="list-group-item-heading text-left text-xs"><i class="fab fa-buromobelexperte"></i>&nbsp;&nbsp;<b>Recinto:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblRecinto" runat="server" Text=""></asp:Label></p>
                         </a>
                         <a class="list-group-item">
                               <p class="list-group-item-heading text-left text-xs"><i class="fas fa-angle-double-right"></i>&nbsp;&nbsp;<b>Raiz:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblRaiz" runat="server" Text=""></asp:Label></p>
                         </a>
                            <a  class="list-group-item ">
                              <p class="list-group-item-heading text-left text-xs"><i class="far fa-calendar-alt"></i>&nbsp;&nbsp;<b>creación:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblFechaCrea" runat="server" Text=""></asp:Label></p>
                            </a>
                        <a  class="list-group-item ">
                              <p class="list-group-item-heading text-left text-xs"><i class="far fa-calendar-check"></i>&nbsp;&nbsp;<b>ultimo V°B°:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblvb" runat="server" Text=""></asp:Label></p>
                            </a>
                        <a  class="list-group-item ">
                              <p class="list-group-item-heading text-left text-xs"><i class="fas fa-ellipsis-v"></i>&nbsp;&nbsp;<b>Nivel V°B°:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblNivel" runat="server" Text=""></asp:Label></p>
                            </a>
                        <a  class="list-group-item ">
                              <p class="list-group-item-heading text-left text-xs"><i class="fas fa-bell animated pulse infinite "></i>&nbsp;&nbsp;<b>Días en Inventario.:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblDias" runat="server" Text=""></asp:Label></p>
                            </a>
                          
                          </div>
				</div>

			

			</div>
			<div class="right-col ">

				<hr class="profile-content-hr no-grid-gutter-h">
				
				<div class="profile-content">

					<ul id="profile-tabs" class="nav nav-tabs">
						<li class="active">
							<a href="#profile-tabs-board" data-toggle="tab"><i class ="fas fa-map-marker-alt"></i>&nbsp;&nbsp;Protocolo - lista de chequeo </a>
						</li>
					</ul>

					<div class="tab-content tab-content-bordered panel-padding">
						<div class="tab-pane panel no-padding no-border fade in active " id="profile-tabs-board">
                        <div class="panel widget-tasks  panel-transparent ">
                                <asp:UpdatePanel ID="recargaCheck" runat="server">
                                    <ContentTemplate>
                                        <div class="panel-heading-controls">

                                              <div class="btn-group">
                                                  <dx:ASPxButton ID="btnCerrarProtocolo"  Visible="false"   runat="server" AutoPostBack="false" Image-IconID="businessobjects_bopermission_16x16" Text="Finalizar Rev. de Protocolo"  >
                                                       


                                                  </dx:ASPxButton>
                                                 
                                              </div>

                                        </div>
                                        <div class="panel-body">  
                                            <br />
                                            <br />
                                           <script type="text/javascript">
                                                           var rowIndex;
                                               var focusedColumn;
                                             
                                                                        function OnSaveClick(s, e) {
                                                                            grid.UpdateEdit();
                                                                        }
                                                                        function checkedChanged(s, e) {
                                                                                        for (var i = 0; i < grid.GetColumnsCount() ; i++) {
                                                                                            var column = grid.GetColumn(i);
                                                                                            var editor = grid.GetEditor(i);
                                                                                            if (editor == null || column == focusedColumn || column.fieldName == "ID_REG_CHK" || column.fieldName == "NOMBRE_GRP_CHK" || column.fieldName == "ESPECIFICACION_CHK" || column.fieldName == "CRITERIO_CONTROL" || column.fieldName == "OBSERVACION_CHK") {
                                                                                                continue;
                                                                                            }
                                                                                            grid.batchEditApi.SetCellValue(rowIndex, column.fieldName, false);
                                                                                        }
                                                                                    }
                                                                        function onBatchEditStartEditing(s, e) {
                                                                                        rowIndex = e.visibleIndex;
                                                                                        focusedColumn = e.focusedColumn;
                                                                        }

                                                                           function OnBatchEditEndEditing(s, e) {
                                                                              
                                                                           }
                                                                            

                                               function validadGrilla() {
                                                                           console.log('entre en validadGrilla');
                                                                           var countAprobados = 0;
                                                                           var countFallos = 0;
                                                                           var countNA = 0;
                                                                           var totCK = 0;


                                                                           var rowsCount = grid.GetVisibleRowsOnPage();
                                                   //console.log(rowsCount);
                                                                           for (var i = 0; i < rowsCount; i++) {

                                                                               
                                                                               if (grid.batchEditApi.GetCellValue(i, "ESTADO_CON_FALLOS") != null ) {
                                                                                  
                                                                                   totCK++;
                                                                                if (grid.batchEditApi.GetCellValue(i, "ESTADO_CON_FALLOS")) { countFallos++; }
                                                                                if (grid.batchEditApi.GetCellValue(i, "ESTADO_APROBACION")) { countAprobados++; }
                                                                                if (grid.batchEditApi.GetCellValue(i, "ESTADO_NA")) { countNA++;}
                                                                               }
                                                                              
                                                   }
                                                   
                                                   if (countFallos > 0) { myFuncionAlerta(-1); }
                                                   else if (countAprobados + countNA < totCK) { myFuncionAlerta(0); } 
                                                   else if (countAprobados + countNA == totCK) { myFuncionAlerta(1); } 
                                                                         
                                                   }




                                                                        function getParameterByName(name, url) {
                                                                                        if (!url) url = window.location.href;
                                                                                        name = name.replace(/[\[\]]/g, "\\$&");
                                                                                        var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
                                                                                            results = regex.exec(url);
                                                                                        if (!results) return null;
                                                                                        if (!results[2]) return '';
                                                                                        return decodeURIComponent(results[2].replace(/\+/g, " "));
                                                                         }
                                               function OnToolbarItemClick(s, e) {
                                                   
                                                  
                                                                                        if (e.item.name =='imprimir') {
                                                                                           var idReg = getParameterByName('idRegistro');
                                                                                           window.open('../Reportes/Reporte.aspx?idRegistro='+ idReg , '_blank');
                                                                                        }
                                                                                        if (e.item.name == 'cancel') {
                                                                                            grid.CancelEdit();
                                                                                        }
                                                                                        //if (e.item.name == 'finalizar') {
                                                                                        //    grid.OnBatchEditEndEditing();

                                                                                        //}

                                                                                       if (e.item.name == 'finalizar') {
                                                                                                     console.log('entre en finaliza');
                                                                                                     validadGrilla();
                                                                                           
                                                                                        }
                                                                                        if (e.item.name == 'finalizaP') {
                                                                                                     console.log('entre en finaliza');
                                                                                                     validadGrilla();
                                                                                                    grid.UpdateEdit();
                                                                                        }

                                                                                        if (e.item.name == 'historial') {
                                                                                             e.processOnServer = true;
                                                                                            e.usePostBack = true;
                                                                                        }
                                                                                        if (IsCustomExportToolbarCommand(e.item.name)) {
                                                                                            e.processOnServer = true;
                                                                                            e.usePostBack = true;
                                                                                        }
                                                                                    }
                                                                        function IsCustomExportToolbarCommand(command) {
                                                                                        return command == "CustomExportToXLS" || command == "CustomExportToXLSX" 
                                                                                    }
                                                                        function myFuncionAlerta(respuesta) {
                                                                           
                                                                                        if (respuesta == 0)
                                                                                        {
                                                                                            $.notify({
                                                                                                title: '<strong>Cuidado</strong>',
                                                                                                message: 'Existen Items sin revisar, la revisión del protocolo no se puede finalizar.'
                                                                                            }, {
                                                                                                    type: 'warning'
                                                                                                });
                                                                                        }
                                                                                        if (respuesta == -1) {
                                                                                            $.notify({
                                                                                                title: '<strong>Existe un problema</strong>',
                                                                                                message: 'Existen Items con fallas detectadas, la revisión del protocolo no se puede finalizar.'
                                                                                            }, {
                                                                                                    type: 'danger'
                                                                                                });
                                                                                        }
                                                                                        if (respuesta == -3) {
                                                                                            $.notify({
                                                                                                title: '<strong>Cuidado</strong>',
                                                                                                message: ' No Existe ningun Item Aprobado, la revisión del protocolo no se puede finalizar.'
                                                                                            }, {
                                                                                                    type: 'warning'
                                                                                                });
                                                                                        }
                                                                                        if (respuesta >= 1) {
                                                                                            $.notify({
                                                                                                title: '<strong>O.K.!</strong>',
                                                                                                message: ' Revisión del Protocolo finalizado correctamente.'
                                                                                            }, {
                                                                                                    type: 'success'
                                                                                                });
                                                                                            setTimeout(function () { window.open('RegistrosCalidadListado.aspx', '_self'); }, 3000);
                                                                                        }
                                                                                    }
                                             </script>
                                        
                                            <dx:ASPxGridView ID="grilla_check" runat="server"
                                                ClientInstanceName="grid"
                                                KeyFieldName="ID_REG_CHK"
                                                OnDataBinding="grilla_check_DataBinding"
                                                OnCellEditorInitialize="grilla_check_CellEditorInitialize"
                                                Theme="MaterialCompact"
                                                Settings-ShowStatusBar="Visible"
                                                OnBatchUpdate="grilla_check_BatchUpdate"
                                                Width="100%" AutoGenerateColumns="False"
                                                OnToolbarItemClick="grilla_check_ToolbarItemClick">
                                                 <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />
                                                <ClientSideEvents BatchEditStartEditing="onBatchEditStartEditing" BatchEditEndEditing="OnBatchEditEndEditing"  />
                                                <SettingsPager Mode="ShowAllRecords">
                                                </SettingsPager>
                                                <SettingsEditing Mode="Batch">
                                                    <BatchEditSettings ShowConfirmOnLosingChanges="false"  EditMode ="Row"/>
                                                </SettingsEditing>

                                                 <SettingsDetail ExportMode="Expanded" ShowDetailRow="True" ShowDetailButtons="False" />
                                                            <SettingsAdaptivity AdaptivityMode="HideDataCellsWindowLimit" AllowOnlyOneAdaptiveDetailExpanded="true"></SettingsAdaptivity>
                                                  <Templates>
                                                                                            <DetailRow>
                                                                                               
                                                                                                        <dx:ASPxGridView ID="grillaHistorial" runat="server" AutoGenerateColumns="False" OnBeforePerformDataSelect="grillaHistorial_BeforePerformDataSelect" Theme="MetropolisBlue" Width="100%">
                                                                                                    <SettingsPager Mode="ShowAllRecords">
                                                                                                    </SettingsPager>
                                                                                                    <Settings GridLines="Horizontal" ShowColumnHeaders="False" />
                                                                                                    <EditFormLayoutProperties>
                                                                                                        <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" />
                                                                                                    </EditFormLayoutProperties>
                                                                                                    <Columns>
                                                                                                        <dx:GridViewDataTextColumn FieldName="ID_REG_CHK_HIST" Visible="False" VisibleIndex="0">
                                                                                                            <HeaderTemplate>
                                                                                                                  <dx:ASPxImage ID="ASPxImageeqwe2" runat="server" EmptyImage-IconID="support_issue_32x32" ShowLoadingImage="true"></dx:ASPxImage>
                                                                                                            </HeaderTemplate>
                                                                                                        </dx:GridViewDataTextColumn>
                                                                                                        <dx:GridViewDataTextColumn FieldName="ID_REG_CHK" Visible="False" VisibleIndex="1">
                                                                                                        </dx:GridViewDataTextColumn>
                                                                                                        <dx:GridViewDataTextColumn FieldName="ESTADO_APROBACION" Visible="False" VisibleIndex="2">
                                                                                                              <HeaderTemplate>
                                                                                                               <dx:ASPxImage ID="ASPxImageqweq2" runat="server" EmptyImage-IconID="sales_salesthankyou_16x16devav" ShowLoadingImage="true"></dx:ASPxImage>
                                                                                                            </HeaderTemplate>
                                                                                                        </dx:GridViewDataTextColumn>
                                                                                                        <dx:GridViewDataTextColumn FieldName="OBSERVACION_CHK" VisibleIndex="8" Width="70%">
                                                                                                              <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                                              <CellStyle BackColor="WhiteSmoke" HorizontalAlign="Left" VerticalAlign="Middle">
                                                                                                              </CellStyle>
                                                                                                              <HeaderTemplate>
                                                                                                 
                                                                                                            </HeaderTemplate>
                                                                                                               <DataItemTemplate>
                                                                                                                <table>
                                                                                                                    <tr>
                                                                                                                         <td rowspan="2" >
                                                                                                                             <asp:Label ID="Label1" runat="server"  Font-Size="XX-Small" ForeColor="Black" Text='<%# Eval("OBSERVACION_CHK") %>'></asp:Label></td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                        </DataItemTemplate>
                                                                                                        </dx:GridViewDataTextColumn>
                                                                                                        <dx:GridViewDataTextColumn FieldName="FECHA_HORA" VisibleIndex="5" Visible="False">
                                                                                                              <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                                              <CellStyle BackColor="WhiteSmoke" HorizontalAlign="Center" VerticalAlign="Middle">
                                                                                                              </CellStyle>
                                                                                                              <HeaderTemplate>
                                                                                                               <dx:ASPxImage ID="ASPxImageqwewqe2" runat="server" EmptyImage-IconID="people_employeenotice_16x16devav" ShowLoadingImage="true"></dx:ASPxImage>
                                                                                                            </HeaderTemplate>
                                                                                                        </dx:GridViewDataTextColumn>
                                                                                                        <dx:GridViewDataTextColumn FieldName="ID_USU" Visible="False" VisibleIndex="9">
                                                                                                        </dx:GridViewDataTextColumn>
                                                                                                        <dx:GridViewDataTextColumn Caption="NOM_REG_CHK" FieldName="NOM_REG_CHK" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3">
                                                                                                        </dx:GridViewDataTextColumn>
                                                                                                        <dx:GridViewDataTextColumn Caption="NOM_ESTADO_APROBACION" FieldName="NOM_ESTADO_APROBACION" ShowInCustomizationForm="True" VisibleIndex="6" Visible="False">
                                                                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                                            <CellStyle BackColor="WhiteSmoke" HorizontalAlign="Center" VerticalAlign="Middle">
                                                                                                            </CellStyle>
                                                                                              
                                                                                                        </dx:GridViewDataTextColumn>
                                                                                                        <dx:GridViewDataTextColumn Caption="REGISTRO" FieldName="NOM_USU" ShowInCustomizationForm="True" VisibleIndex="4" Width="30%">
                                                                                                            <DataItemTemplate>
                                                                                                                <table>
                                                                                                                    <tr>
                                                                                                                      <td><dx:ASPxImage ID="ASPxImageqweqe2" runat="server" EmptyImage-IconID="actions_newgroup_16x16devav" ShowLoadingImage="true"></dx:ASPxImage></td>
                                                                                                                      <td>&nbsp;&nbsp; <asp:Label ID="lblnombreUusario" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text='<%# Eval("NOM_USU") %>'></asp:Label></td>
                                                                                                                    <tr>
                                                                                                                      <td> <dx:ASPxImage ID="ASPxImage1" runat="server" EmptyImage-IconID="people_employeenotice_16x16devav" ShowLoadingImage="true"></dx:ASPxImage></td>
                                                                                                                      <td>&nbsp;&nbsp; <asp:Label ID="Labelqweq1" runat="server"  Font-Size="XX-Small" ForeColor="Black" Text='<%# Eval("FECHA_HORA") %>'></asp:Label></td>
                                                                                                                        <td>&nbsp;(&nbsp;<asp:Label ID="Label2" runat="server"  Font-Size="XX-Small" ForeColor="Black" Text='<%# Eval("NOM_ESTADO_APROBACION") %>'></asp:Label> &nbsp;)&nbsp;</td>
                                                                                                                    </tr>
                                                                                                                </table>  
                                                                                                            </DataItemTemplate>
                                                                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                                            <CellStyle BackColor="WhiteSmoke" HorizontalAlign="Left" VerticalAlign="Middle">
                                                                                                            </CellStyle>
                                                                                                            <HeaderTemplate>
                                                                                                               <dx:ASPxImage ID="ASPxImageqwewq2" runat="server" EmptyImage-IconID="actions_newgroup_16x16devav" ShowLoadingImage="true"></dx:ASPxImage>
                                                                                                            </HeaderTemplate>
                                                                                                        </dx:GridViewDataTextColumn>
                                                                                                        <dx:GridViewDataTextColumn Caption="coment." VisibleIndex="7" Width="5%">
                                                                                                              <DataItemTemplate>
                                                                                                                <table>
                                                                                                                   <tr>
                                                                                                                      <td>  <dx:ASPxImage ID="ASPxImageqewqe2" runat="server" EmptyImage-IconID="contacts_message_16x16devav" ShowLoadingImage="true"></dx:ASPxImage></td>
                                                                                                                   </tr>
                                                                                                                </table>
                                                                                                              </DataItemTemplate>

                                                                                                              <CellStyle BackColor="WhiteSmoke" HorizontalAlign="Right" VerticalAlign="Middle">
                                                                                                              </CellStyle>

                                                                                                        </dx:GridViewDataTextColumn>
                                                                                                    </Columns>
                                                                                                    <Border BorderStyle="None" />
                                                                                                </dx:ASPxGridView>
                                                                                                    
                                                                                            </DetailRow>
                                                </Templates>






                                                <Settings GridLines="Horizontal" />
                                                <SettingsBehavior AutoExpandAllGroups="True" />
                                                <Columns>
                                                    <dx:GridViewCommandColumn VisibleIndex="0" Width="0%">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn Caption="Reg." FieldName="ID_REG_CHK" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1" Width="5%">
                                            <EditFormSettings Visible="False" />
                                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                          </dx:GridViewDataTextColumn>
                                           <dx:GridViewDataTextColumn Caption="DESCRIPCIÓN" FieldName="ITEM" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3" Width="40%">
                                                                                            <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn Caption="GRUPO" FieldName="NOMBRE_GRP_CHK" GroupIndex="0" ReadOnly="True" ShowInCustomizationForm="True" SortIndex="0" SortOrder="Descending" VisibleIndex="2" Width="0%">
                                                                                            <PropertiesTextEdit EnableFocusedStyle="False"></PropertiesTextEdit>
                                                                                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="NOMBRE_CHK" ShowInCustomizationForm="True" Visible="False" VisibleIndex="4">
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewBandColumn ShowInCustomizationForm="True" Caption="ESTADOS DE REVISI&#211;N" VisibleIndex="9">
                                                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                                                                            <Columns>
                                                                                                <dx:GridViewDataCheckColumn FieldName="ESTADO_APROBACION" ShowInCustomizationForm="True" Width="5%" ToolTip="Aprobaci&#243;n del registro" VisibleIndex="1">
                                                                                                    <PropertiesCheckEdit ValueChecked="True" ValueType="System.Boolean" ValueUnchecked="False">
                                                                                                    </PropertiesCheckEdit>
                                                                                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>

                                                                                                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle"></CellStyle>
                                                                                                    <HeaderTemplate>
                                                                                                        <dx:ASPxImage ID="ASPxImageqewwqe2" runat="server" EmptyImage-IconID="support_issue_32x32" ShowLoadingImage="true"></dx:ASPxImage>

                                                                                                    </HeaderTemplate>
                                                                                                </dx:GridViewDataCheckColumn>
                                                                                                <dx:GridViewDataCheckColumn FieldName="ESTADO_CON_FALLOS" ShowInCustomizationForm="True" Width="5%" ToolTip="El Registro presenta fallos" VisibleIndex="2">
                                                                                                   <PropertiesCheckEdit ValueChecked="True" ValueType="System.Boolean" ValueUnchecked="False">
                                                                                                    </PropertiesCheckEdit>
                                                                                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>

                                                                                                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle"></CellStyle>
                                                                                                    <HeaderTemplate>
                                                                                                        <dx:ASPxImage ID="ASPxImageeqwe2" runat="server" EmptyImage-IconID="actions_deletelist2_32x32" ShowLoadingImage="true"></dx:ASPxImage>

                                                                                                    </HeaderTemplate>

                                                                                                </dx:GridViewDataCheckColumn>
                                                                                                <dx:GridViewDataCheckColumn FieldName="ESTADO_NA" ShowInCustomizationForm="True" Width="5%" Caption="N/A" ToolTip="El Registro no aplica" VisibleIndex="3">
                                                                                                  <PropertiesCheckEdit ValueChecked="True" ValueType="System.Boolean" ValueUnchecked="False">
                                                                                                    </PropertiesCheckEdit>
                                                                                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>


                                                                                                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle"></CellStyle>
                                                                                                </dx:GridViewDataCheckColumn>
                                                                                            </Columns>
                                                                                        </dx:GridViewBandColumn>
                                                                                        <dx:GridViewBandColumn Caption="COMENTARIOS" VisibleIndex="10">
                                                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                                                                            <Columns>
                                                                                                <dx:GridViewDataTextColumn FieldName="OBSERVACION_CHK" VisibleIndex="1" Width="30%">
                                                                                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                                                                                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle"></CellStyle>
                                                                                                    <HeaderTemplate>
                                                                                                        <dx:ASPxImage ID="ASPxImageqeqwe2" runat="server" EmptyImage-IconID="miscellaneous_comment_32x32office2013" ShowLoadingImage="true"></dx:ASPxImage>
                                                                                                    </HeaderTemplate>

                                                                                                </dx:GridViewDataTextColumn>

                                                                                            </Columns>
                                                                                        </dx:GridViewBandColumn>
                                                                                    <dx:GridViewBandColumn Caption="INFORMACI&#211;N DEL PROTOCOLO" VisibleIndex="5">
                                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                                                                        <Columns>
                                                                                            <dx:GridViewDataTextColumn FieldName="ESPECIFICACION_CHK" ReadOnly="True" ShowInCustomizationForm="True" Width="45%" Caption="ESPECIFICACI&#211;N" VisibleIndex="1">
                                                                                                <Settings ShowEditorInBatchEditMode="False"></Settings>
                                                                                            </dx:GridViewDataTextColumn>
                                                                                            <dx:GridViewDataTextColumn FieldName="CRITERIO_CONTROL" ReadOnly="True" ShowInCustomizationForm="True" Width="10%" Caption="CRITERIOS" VisibleIndex="2">
                                                                                                <Settings ShowEditorInBatchEditMode="False"></Settings>
                                                                                                <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle"></HeaderStyle>
                                                                                            </dx:GridViewDataTextColumn>
                                                                                        </Columns>
                                                                                    </dx:GridViewBandColumn>
                                                                                    </Columns>
                                                                                            <Toolbars>
                                                                                                <dx:GridViewToolbar ItemAlign="Right" EnableAdaptivity="true">
                                                                                                    <Items>
                                                                                                        <dx:GridViewToolbarItem Command="Update" Name="fome" Image-IconID="save_save_16x16" Text="Grabar">
                                                                                                            <Image IconID="save_save_16x16"></Image>
                                                                                                        </dx:GridViewToolbarItem>
                                                                                                        <dx:GridViewToolbarItem Name="cancel" Image-IconID="actions_cancel_16x16" Text="Cancelar">
                                                                                                            <Image IconID="actions_cancel_16x16"></Image>
                                                                                                        </dx:GridViewToolbarItem>

                                                                                                        <dx:GridViewToolbarItem Name="historial" Image-IconID="format_listbullets_16x16" Text="historial">
                                                                                                            <Image IconID="format_listbullets_16x16"></Image>
                                                                                                        </dx:GridViewToolbarItem>
                                                                                                        <dx:GridViewToolbarItem Name="imprimir" Image-IconID="print_printviapdf_16x16" Text="Imprimir">
                                                                                                            <Image IconID="print_printviapdf_16x16"></Image>
                                                                                                        </dx:GridViewToolbarItem>
                                                                                                        <dx:GridViewToolbarItem Command="Update" ClientVisible="true" Name="finalizar" Image-IconID="businessobjects_bopermission_16x16" Text="Finalizar">
                                                                                                            <%--<Template>
                                                                                
                                                                            <Image IconID="save_save_16x16"></Image>
                                                                          
                                                                                    <dx:ASPxButton ID="btn" runat="server"  Image-IconID ="businessobjects_bopermission_16x16" Text="Finalizar Rev. de Protocolo"   AutoPostBack="false"  Theme="MaterialCompact" >
                                                                                        
                                                                                    </dx:ASPxButton>
                                                                                   

                                                                              </Template>--%>
                                                                                                        </dx:GridViewToolbarItem>
                                                                                                        <dx:GridViewToolbarItem Name="finalizaP" Image-IconID="actions_cancel_16x16" Text="Finalizar Protocolo">
                                                                                                            <Image IconID="actions_cancel_16x16"></Image>
                                                                                                        </dx:GridViewToolbarItem>
                                                                                                        <dx:GridViewToolbarItem Text="Exportar a.." Image-IconID="actions_download_16x16office2013" BeginGroup="true">
                                                                                                            <Items>
                                                                                                                <dx:GridViewToolbarItem Command="ExportToDocx" />
                                                                                                                <dx:GridViewToolbarItem Command="ExportToRtf" />
                                                                                                                <dx:GridViewToolbarItem Command="ExportToCsv" />
                                                                                                                <dx:GridViewToolbarItem Command="ExportToXls" Text="Export to XLS(DataAware)" />
                                                                                                                <dx:GridViewToolbarItem Name="CustomExportToXLS" Text="Export to XLS(WYSIWYG)" Image-IconID="export_exporttoxls_16x16office2013">
                                                                                                                    <Image IconID="export_exporttoxls_16x16office2013"></Image>
                                                                                                                </dx:GridViewToolbarItem>
                                                                                                                <dx:GridViewToolbarItem Command="ExportToXlsx" Text="Export to XLSX(DataAware)" />
                                                                                                                <dx:GridViewToolbarItem Name="CustomExportToXLSX" Text="Export to XLSX(WYSIWYG)" Image-IconID="export_exporttoxlsx_16x16office2013">
                                                                                                                    <Image IconID="export_exporttoxlsx_16x16office2013"></Image>
                                                                                                                </dx:GridViewToolbarItem>
                                                                                                            </Items>

                                                                                                            <Image IconID="actions_download_16x16office2013"></Image>
                                                                                                        </dx:GridViewToolbarItem>

                                                                                                    </Items>
                                                                                                </dx:GridViewToolbar>
                                                                                             </Toolbars>
                                                                            </dx:ASPxGridView>
                                          
                                           <br />
                                        </div>
                                    </ContentTemplate>
                               </asp:UpdatePanel>

                        
                      </div>

  <div class="panel widget-tasks  ">
                            <div class="panel-heading">
                               <span class="panel-title"><i class="lnr lnr-file-add fa-2x"></i>&nbsp;&nbsp; Adjunta Información al protocolo </span>
                            </div>
                            <div class="panel-body"> 
                                  
                                   <dx:ASPxFileManager ID="manejaArchivos" ClientInstanceName="manager" runat="server" Theme="Material" 
                                                                                  EnableTheming="True"
                                                                                  OnCustomCallback="manejaArchivos_CustomCallback"
                                                                                  OnItemDeleting="manejaArchivos_ItemDeleting"
                                                                                  Width="100%">
                                                                                        <Settings    AllowedFileExtensions=".jpg,.jpeg,.gif,.rtf,.txt,.avi,.png,.mp3,.xml,.doc,.pdf" />
                                                                                        <SettingsFileList ShowFolders="True" ShowParentFolder="True">
                                                                                            <ThumbnailsViewSettings ThumbnailWidth="50px" ThumbnailHeight="50px" >
                                                                                            </ThumbnailsViewSettings>
                                                                                        </SettingsFileList>
                                                                                        <SettingsEditing AllowDownload="True" AllowDelete="True"></SettingsEditing>
                                                                                        <SettingsFolders HideAspNetFolders="False" ShowExpandButtons="False" ShowFolderIcons="False" ShowLockedFolderIcons="False" ShowTreeLines="False" Visible="False" />
                                                                                        <SettingsToolbar ShowPath="False" ShowPopOutImages="True">
                                                                                             <Items>
                                                                                                <dx:FileManagerToolbarCustomButton CommandName="Properties">
                                                                                                    <Image IconID="setup_properties_16x16" />
                                                                                                </dx:FileManagerToolbarCustomButton>
                                                                                                <dx:FileManagerToolbarRefreshButton BeginGroup="false" />
                                                                                                <dx:FileManagerToolbarCustomButton Text="Vista archivos" CommandName="ChangeView-Thumbnails" GroupName="ViewMode">
                                                                                                    <Image IconID="grid_cards_16x16" />
                                                                                                </dx:FileManagerToolbarCustomButton>
                                                                                                <dx:FileManagerToolbarCustomButton Text="vista detalle" CommandName="ChangeView-Details" GroupName="ViewMode">
                                                                                                    <Image IconID="grid_grid_16x16" />
                                                                                                </dx:FileManagerToolbarCustomButton> 
                                                                                            </Items>
                                                                                        </SettingsToolbar>
                                                                                        <SettingsUpload>
                                                                                        <AdvancedModeSettings EnableMultiSelect="True"></AdvancedModeSettings>
                                                                                    </SettingsUpload>
                                                                                    <ClientSideEvents CustomCommand="OnCustomCommand" ToolbarUpdating="OnToolbarUpdating" />
                                                                                </dx:ASPxFileManager>

                            
                            </div>
      </div>
                      </div>
            </div>
                </div>

</div>
    </div>
    </div>
      <dx:ASPxPopupControl ID="PopupControl" runat="server" ClientInstanceName="PopupControl" OnWindowCallback="PopupControl_WindowCallback" Width="430" 
        ShowHeader="true" ShowFooter="false" PopupHorizontalAlign="Center" PopupVerticalAlign="Middle" AllowDragging="true" DragElement="Header" CssClass="DetailsPopup" CloseOnEscape="true">
        <ClientSideEvents EndCallback="OnPopupEndCallback" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <dx:ASPxFormLayout ID="FormLayout" runat="server" AlignItemCaptionsInAllGroups="True">
                    <Items>
                        <dx:LayoutGroup Caption=" " GroupBoxDecoration="None">
                            <Items>
                                <dx:LayoutItem Caption="Name">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Name" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Type">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Type" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                            </Items>
                        </dx:LayoutGroup>
                        <dx:LayoutGroup Caption=" " GroupBoxDecoration="None">
                            <Items>
                                <dx:LayoutItem Caption="Location">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Location" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Relative Location">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="RelativeLocation" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Size">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Size" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Contains" Name="Contains">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Contains" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                            </Items>
                        </dx:LayoutGroup>
                        <dx:LayoutGroup Caption=" " GroupBoxDecoration="None">
                            <Items>
                                <dx:LayoutItem Caption="Created">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Created" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Modified" Name="Modified">
                                    <LayoutItemNestedControlCollection >
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Modified" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                <dx:LayoutItem Caption="Accessed" Name="Accessed">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxLabel ID="Accessed" runat="server" />
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                            </Items>
                        </dx:LayoutGroup>
                    </Items>
                </dx:ASPxFormLayout>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
</asp:Content>
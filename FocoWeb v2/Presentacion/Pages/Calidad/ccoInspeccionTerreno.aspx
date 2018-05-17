<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="ccoInspeccionTerreno.aspx.vb" Inherits="Presentacion.Formulario_web11" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
      <style>
        /*.dropzone-box .fa.fa-cloud-upload{margin-left:350px;}
        .form-horizontal .has-feedback .form-control-feedback{right:0px;}
        .has-feedback:not(.form-group) .form-control-feedback {top: 5px;}
        .claseTest {background-color: #008c9e !important;font-weight: normal;font-size:10px;text-transform:uppercase;}
        .dxgvHeader, .dxgvHeader table{color:#F1F1F1;}
          .auto-style1 {
              height: 10px;
          }*/
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
     <script type="text/javascript">
        function OnToolbarItemClick(s, e) {
            if(IsCustomExportToolbarCommand(e.item.name)) {
                e.processOnServer=true;
                e.usePostBack=true;
            }
        }
        function IsCustomExportToolbarCommand(command) {
            return command == "CustomExportToXLS" || command == "CustomExportToXLSX";
        }
    </script>
     <div class="panel">  
                    <div class="panel-heading">
						<span class="panel-title" style="color:#17649A"><b>LISTADO DE PLANTILLAS DE CONTROL DE CALIDAD.</b></span></div>
				<div class="stat-panel">
					<div class="stat-row">
						<div class="stat-cell col-sm-12 padding-sm ">
                            <%--<div class="alert alert-dark alert-info">
							<button type="button" class="close" data-dismiss="alert">×</button>
							<strong>Nota:</strong> Recuerda guardar los cambios que vayas realizando!
						    </div>--%>
                            <p>En esta sección puedes editar la información relacionada con las etapas constructivas de tus proyectos en Foco.</p><hr />
						             <div class="panel-body bg-panel">
                                      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                 <contenttemplate>
                                      <div class="col-md-12">
                                            <label class="control-label">Listado de plantillas creadas</label>
                                            <br />
                                
                                            <dx:ASPxGridView ID="gridActividades"  ClientInstanceName="grid" runat="server" AutoGenerateColumns="False" DataSourceID="sqlCalidad" 
                                                EnableTheming="True" KeyFieldName="ID_ACC_PLT" Theme="MaterialCompact" Width="100%">
                                                <Settings GridLines="Horizontal" VerticalScrollableHeight="400" VerticalScrollBarStyle="VirtualSmooth" />
                                                <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                                                <SettingsSearchPanel Visible="True" />
                                                <SettingsPager EnableAdaptivity="true" Mode="EndlessPaging" Position="Top" />
                                                <Settings ShowFooter="true" />
                                                 <ClientSideEvents CustomButtonClick="function(s, e) {
	                                                            if(e.buttonID == 'ver'){
                                                                                var rowVisibleIndex = e.visibleIndex;
                                                                                var rowKeyValue = s.GetRowKey(rowVisibleIndex);
                                                                               window.open('verPlantilla.aspx?idPLantilla='+ rowKeyValue , '_self');
                                                                   }
                                                                if(e.buttonID == 'calidad'){
                                                                                var rowVisibleIndex = e.visibleIndex;
                                                                                var rowKeyValue = s.GetRowKey(rowVisibleIndex);
                                                                               window.open('consultarplantilla.aspx?idPLantilla='+ rowKeyValue , '_self');
                                                                   }
                                                                    


                                                                    }"
                                                     



                                                     />
                                                <Columns>
                                                     
                                                    <dx:GridViewCommandColumn VisibleIndex="0" Width="22%">
                                                            <CustomButtons>
                                                                <dx:GridViewCommandColumnCustomButton ID="ver" Text =" ">
                                                                             <Image  ToolTip="Consultar"  IconID ="zoom_zoomin_32x32gray"/>
                                                                </dx:GridViewCommandColumnCustomButton>
                                                                <%--<dx:GridViewCommandColumnCustomButton ID="version" Text =" ">
                                                                    <Image  ToolTip="Nueva versión"  IconID ="edit_copy_32x32gray"   />
                                                                </dx:GridViewCommandColumnCustomButton>--%>
                                                                   <dx:GridViewCommandColumnCustomButton ID="calidad" Text =" ">
                                                                    <Image  ToolTip="Activar protocolos de calidad"  IconID ="other_addtext_32x32gray"/>
                                                                </dx:GridViewCommandColumnCustomButton> 
                                                                
                                                            </CustomButtons>
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewBandColumn Caption="PLANTILLAS DE CONTROL DE CALIDAD" VisibleIndex="1">
                                                        <HeaderStyle  HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                                                        <Columns>
                                                            <dx:GridViewDataTextColumn Caption="ID" FieldName="ID_ACC_PLT" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4" Visible="False">
                                                                <EditFormSettings Visible="False" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="VERSIÓN" FieldName="VERSION_ACC" ShowInCustomizationForm="True" VisibleIndex="6" Visible="False">
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="NOMBRE PLANTILLA" FieldName="NOMBRE_ACC" ShowInCustomizationForm="True" VisibleIndex="3" Visible="False">
                                                                <CellStyle HorizontalAlign="Left" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="N°" FieldName="NUM_ACC" ShowInCustomizationForm="True" VisibleIndex="5" Visible="False">
                                                            </dx:GridViewDataTextColumn>
                                                           <%-- <dx:GridViewDataTextColumn FieldName="ETAPA" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4">
                                                                <CellStyle HorizontalAlign="Left" VerticalAlign="Middle">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>--%>
                                                            <dx:GridViewDataTextColumn FieldName="CODIGO" VisibleIndex="2" Caption="CODIGO / NOMBRE PLANTILLA" Width="25%">
                                                                <DataItemTemplate>
                                                                    <table class="nav-justified">
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Label ID="lblEtapa" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text='<%# Eval("CODIGO") %>'></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style1">
                                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("NOMBRE_ACC") %>'></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </DataItemTemplate>
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="ACTIVIDAD" VisibleIndex="1" Visible="False">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="ETAPA" VisibleIndex="0" Caption="ETAPA / ACTIVIDAD" Width="25%">
                                                                <DataItemTemplate>
                                                                    <table class="nav-justified">
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Label ID="lblEtapa" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text='<%# Eval("ETAPA") %>'></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style1">
                                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("ACTIVIDAD") %>'></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </DataItemTemplate>
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                            </dx:GridViewDataTextColumn>
                                                        </Columns>
                                                    </dx:GridViewBandColumn>
                                                    <dx:GridViewBandColumn Caption="REGISTROS DE CALIDAD" VisibleIndex="8">
                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                        <Columns>
                                                            <dx:GridViewDataTextColumn Caption="TOTAL" FieldName="REG_TOT" ReadOnly="True" ShowInCustomizationForm="True"  VisibleIndex="0" Width="5%">
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                                <HeaderTemplate >
                                                                    <dx:ASPxImage ID="ASPxImage1" runat="server" EmptyImage-IconID="data_summary_16x16gray"  ShowLoadingImage="true"></dx:ASPxImage>
                                                                    
                                                                </HeaderTemplate>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="APROBADOS" FieldName="REG_APROB" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1" Width="5%">
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                                <HeaderTemplate>
                                                                         <dx:ASPxImage ID="ASPxImage2" runat="server" EmptyImage-IconID="actions_apply_16x16gray"  ShowLoadingImage="true"></dx:ASPxImage>
                                                                </HeaderTemplate>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="PENDIENTES" FieldName="REG_PEND" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3" Width="5%">
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                                 <HeaderTemplate>
                                                                         <dx:ASPxImage ID="ASPxImage2" runat="server" EmptyImage-IconID="scheduling_timelineview_16x16gray"  ShowLoadingImage="true"></dx:ASPxImage>
                                                                </HeaderTemplate>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="RECHAZADOS" FieldName="REG_RECHAZA" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2" Width="5%">
                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                </CellStyle>
                                                                 <HeaderTemplate>
                                                                         <dx:ASPxImage ID="ASPxImage2" runat="server" EmptyImage-IconID="edit_delete_16x16gray"  ShowLoadingImage="true"></dx:ASPxImage>
                                                                </HeaderTemplate>
                                                            </dx:GridViewDataTextColumn> 
                                                        </Columns>
                                                    </dx:GridViewBandColumn>
                                                </Columns>

        
       
                                                <Styles Header-Wrap="True">
                                                    <Header Wrap="True">
                                                    </Header>
                                                     <AlternatingRow Enabled="true" />
                                                </Styles>
                                                           <SettingsCommandButton>
                                                        <NewButton Text=" " Image-IconID="actions_add_16x16gray"  >
                                                            <%--<Styles>
                                                                        <Style CssClass="fas fa-angle-double-right fa-2x"></Style>
                                                               </Styles>--%>

                                                             <Image  ToolTip="nuevo" ></Image>
                                                       </NewButton>
                                                         <EditButton    Text =" " Image-IconID ="edit_edit_16x16gray">   
                                                                <Image  ToolTip="Editar" ></Image>
                                                         </EditButton>
                                                      <UpdateButton  Text =" " Image-IconID ="save_save_16x16gray"  >
                                                                <Image  ToolTip="Guardar" ></Image>
                                                      </UpdateButton>
                                                      <CancelButton Text =" " Image-IconID ="actions_cancel_16x16gray"   >
                                                              <Image  ToolTip="cancelar" ></Image>
                                                      </CancelButton>
                                                       <DeleteButton Text =" " Image-IconID ="actions_delete_16x16gray"  >
                                                            <Image  ToolTip="eliminar" ></Image>
                                                       </DeleteButton>
                                                  </SettingsCommandButton>
                                            </dx:ASPxGridView>

                                            <asp:SqlDataSource ID="sqlCalidad" runat="server" 
                                                         SelectCommand="SP_QA_ACC_PLT_BUSCAR" 
                                                SelectCommandType="StoredProcedure">
                                                
                                                <SelectParameters>
                                                      <asp:SessionParameter SessionField="idObra" Name="ID_OBR" Type="string"  ></asp:SessionParameter>
                                                  <%--  <asp:ControlParameter ControlID="ddlObra" Name="ID_OBR" PropertyName="Value" Type="Int64" />--%>
                                                    <asp:Parameter DefaultValue="-1" Name="ID_ACC_PLT" Type="Int32" />
                                                    <asp:Parameter DefaultValue="0" Name="SOLO_PEND" Type="Int32" />
                                                </SelectParameters>
                                                
                                            </asp:SqlDataSource>

                                        </div>
					                 </div>
                                 </contenttemplate>
                                               
                            </asp:UpdatePanel>
                          
                        <%--<div class="col-md-12">
                           <p class="pull-right">
                                    <span id="paso1btn" class="fa-stack fa-lg" style="margin-top:-10px;cursor:pointer">
                                    <i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
                                    </span> Guardar Cambios
                           </p>
                        </div>--%>
				    </div>
			    </div>
		    </div> 
		 </div> 
         </div>
</asp:Content>

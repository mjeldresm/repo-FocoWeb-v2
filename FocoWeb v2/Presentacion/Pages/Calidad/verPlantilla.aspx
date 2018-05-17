<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="verPlantilla.aspx.vb" Inherits="Presentacion.Formulario_web19" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link href="../../assets/stylesheets/DragAndDrop.css" rel="stylesheet" />
    <link href="../../CSS/animate.css" rel="stylesheet" />
    <link href="../../assets/stylesheets/pace-theme-flash.css" rel="stylesheet" />
<script src="../../../assets/javascripts/pace.min.js"></script>

<script type="text/javascript">
    function onFileUploadComplete(s, e) {
       // alert('Archivo(s) cargados correctamente');
        if (e.callbackData) {
            var fileData = e.callbackData.split('|');
            var fileName = fileData[0],
                fileUrl = fileData[1],
                fileSize = fileData[2];
            //DXUploadedFilesContainer.AddFile(fileName, fileUrl, fileSize);
        }
    }
    </script>

  <script type="text/javascript">
        function CategoriasCombo_SelectedIndexChanged(s, e) {
             grid.GetEditor("ID_TIP").PerformCallback(s.GetValue());
         }
	</script>

     <style>
        .modal-alert .modal-header .fa{
            font-size:40px;
        }
        .dropzone-box .fa.fa-cloud-upload{
            margin-left:130px;
        }
         .claseTest {
            background-color: #008c9e !important;
            font-weight: normal;
            font-size:10px;
            text-transform:uppercase;
        }

         .dxgvHeader, .dxgvHeader table{
             color:#F1F1F1;
         }

       .dxgvHeader{
           background-color:#008c9e;
           border: 1px solid #005F6B;
        }

       .nav-tabs > li > a{
           color:#ddd !important;
         }
       .nav-tabs li.active > a, .nav-tabs li.active > a:focus, .nav-tabs li.active > a:hover{
           color:#f1f1f1 !important;
           font-weight:700;
       }

       .tab-content.tab-content-bordered{
           background-color:#f2f2f2;
       }

       .panel-primary>.panel-heading{
           background-color:#17649A !important;
       }

      

    .form-horizontal .has-feedback .form-control-feedback{right:0px;}
    .dropzone-box .fa.fa-cloud-upload{margin-left:130px;}
    .claseTest {background-color: #008c9e !important;font-weight: normal;font-size:10px;text-transform:uppercase;}
    .dxgvHeader, .dxgvHeader table{color:#F1F1F1;}
    .dxgvHeader{background-color:#008c9e;border: 1px solid #005F6B;}
    .nav-tabs > li > a{color:#ddd !important;}
    .nav-tabs li.active > a, .nav-tabs li.active > a:focus, .nav-tabs li.active > a:hover{color:#f1f1f1 !important;font-weight:700;}
    .tab-content.tab-content-bordered{background-color:#f2f2f2;}
    .panel-primary>.panel-heading{background-color:#008c9e !important;}
    </style>

    
</asp:Content>


<asp:Content ID="MainBody" ContentPlaceHolderID="body" runat="server">
       <div class="panel">  
                    <!--                    -->
                    <!-- HEADING IMPORTADOR -->
                    <!--                    -->
                    <div class="panel-heading" id="c-tooltips-demo">
                        	<script>
                                init.push(function () {
                                    $('#c-tooltips-demo button').tooltip();
                                });
				            </script>
						<span class="panel-title" style="color:#17649A"><b>DEFINICIÓN PROCESO DE CALIDAD</b></span>
                        <div  class="panel-heading-controls"  >
							 <span class="panel-heading-text" >
                                <asp:UpdatePanel ID="UpdatePanel7" runat="server" >
                                   <ContentTemplate >

                                    <div id="datosTop" class="panel-heading-controls" style="display:none">      
                                           <span class="panel-title">
                                               <div class="btn-group">
                                                    <button type="button" class="btn btn-labeled btn-flat  btn-xs btn-rounded btn-dark-gray">
                                                            <span class="btn-label "><i class="glyphicon glyphicon-certificate"></i></span><strong><asp:Label CssClass ="text-xs" ID="lblAct" runat="server" Text=""></asp:Label></strong>
                                                    </button>
                                                    &nbsp;&nbsp;
                                                    <button type="button" class="btn btn-labeled btn-flat btn-xs">
                                                            <span class="btn-label"><i class="glyphicon glyphicon glyphicon glyphicon-list-alt"></i></span><strong><asp:Label CssClass ="text-xs" ID="lblPlnNom" runat="server" text=""></asp:Label></strong>
                                                    </button>
                                                    &nbsp;&nbsp;
           	                                       <button type="button" class="btn btn-labeled btn-flat btn-xs">
                                                            <span class="btn-label"><i class="glyphicon glyphicon-home"></i></span><strong><asp:Label CssClass ="text-xs" ID="lblObra" runat="server" text=""></asp:Label></strong>
                                                    </button>
                                              
                                        </span>
                                      </div>
                            
                                </ContentTemplate>
                            </asp:UpdatePanel> 


                                 
                             </span> 

                            <p>
                                                                                                               
						</div>
			        </div>

					<div class="panel-body">
                             <div class="wizard ui-wizard-example">
							   <div class="panel" >
                                        <div class="row"> 
                                             <div class="col-md-6">
                                                                                                         <div class="panel widget-tasks  panel-transparent ">
                                                                                                                    <div class="panel-heading">
                                                                                                                        <span class="panel-title"><i class="lnr lnr-file-add fa-2x"></i>&nbsp;&nbsp;Información del proceso</span>
                                                                                                                       
                                                                                                                    </div>
                                                                                                                    <div class="panel-body">
                                                                                                                               <span class="text-default "><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </em></span>
                                                                                                                          <br />
                                                                                                                          <br />
                                                                                                                         <div class="row">
                                                                                                                             

		                                                            	                                                                   <div class="col-sm-12">
				                                                                                                                                <div class="form-group">
						                                                                                                                            <div class="col-sm-12">
							                                                                                                                             <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                                                                                                                            <ContentTemplate>
                                                                                                                                                        <dx:BootstrapTextBox  Enabled ="false"  RequiredField-IsRequired="true" ID="codigotexto" Caption="Código" runat="server" NullText="Código de plantilla"></dx:BootstrapTextBox>
                                                                                                                                                    </ContentTemplate>
                                                                                                                                                              
                                                                                                                                                         </asp:UpdatePanel>
                                                                                                                                                                </div>
					                                                                                                                            </div> 
					                                                                                                                            <div class="form-group">
						                                                                                                                            <div class="col-sm-12">
                                                                                                                                                   
							                                                                                                                             <dx:BootstrapTextBox  Enabled ="true"  RequiredField-IsRequired="true" ID="txtnombre" Caption="Nombre plantilla proceso" runat="server" NullText="Nombre proceso"></dx:BootstrapTextBox>
						                                                                                                                            </div>
                                                                                                                                                </div> <!-- / .form-group -->
					                                                                                                                           <div class="form-group">
                                                                                                                                                    <div class="col-sm-12">
                                                                                                                                                        <p><strong>Actividad:</strong></p>
                                                                                                                                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                                                                                                            <ContentTemplate>

                                                                                                                                                                    <div id="modalActividad" class="modal slideInRight animated ">
					                                                                            <div class="modal-dialog" >
						                                                                            <div class="modal-content">
							                                                                            <div class="modal-header dark">
								                                                                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								                                                                            <h4 class="modal-title" id="myModalLabel"><i class="fas fa-plus-circle "></i>&nbsp;&nbsp;NUEVA ACTIVIDAD</h4>
							                                                                            </div>
							                                                                            <div class="modal-body">
                                                                                                        <div class="row padding-sm">
                                                                                                             <div class="col-sm-12">
				                                                                                                       <div class="form-group">
						                                                                                                               <%-- <label for="inputEmail2" class="col-sm-2 control-label">Proyecto </label>
						                                                                                                                <div class="col-sm-4">
							                                                                                                          <%--     <dx:ASPxLabel ID="lblProyecto" runat="server" Text=""></dx:ASPxLabel>
						                                                                                                                </div>--%>
					                                                                                                                </div> <!-- / .form-group -->
					                                                                                                                <div class="form-group">
						                                                                                                                <label for="inputEmail2" class="col-sm-2 control-label">Nombre</label>
						                                                                                                                <div class="col-sm-10">
							                                                                                                                <input type="text" runat="server" class="form-control" id="txtAct_Nombre" placeholder="Nombre Actividad">
						                                                                                                                </div>
                                                                                                                                    </div> <!-- / .form-group -->
					                                                                                                                  <div class="form-group">
						                                                                                                                <label for="inputEmail2" class="col-sm-2 control-label">Etapa</label>
						                                                                                                                <div class="col-sm-10">
                                                                                                                                            <dx:BootstrapComboBox ID="ddlEtapa" runat="server" DataSourceID="sqlEtapa" ValueField="ID_ETA" TextField="NOMBRE_ETA" ValueType="System.Int32" ForceDataBinding="True" ValidateRequestMode="Enabled">
                                                                                                                                                <ClearButton DisplayMode="Never"></ClearButton>
                                                                                                                                            </dx:BootstrapComboBox>
                                                                                                                                         
                                                                                                                                        </div>
                                                                                                                                    </div> <!-- / .form-group -->
					                                                                                                        </div> <!-- / .form-group -->
                                                                                                                </div>
							                                                                            </div>
                                                                                                          <asp:SqlDataSource ID="sqlEtapa" runat="server"
                                                                                                                                                    SelectCommand="SELECT [ID_ETA], [NOMBRE_ETA], [ID_OBR] FROM [ETAPAS_NIVELES] WHERE ([ID_OBR] = @ID_OBR)">
                                                                                                                                                         <SelectParameters>
                                                                                                                                                                   <asp:SessionParameter Name="ID_OBR" SessionField="idObra" Type="Int64" />
                                                                                                                                                         </SelectParameters>
                                                                                                      </asp:SqlDataSource>
                                                                                                        <div class="modal-footer">
                                                                                                           <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								                                                                            <dx:BootstrapButton ID="btnNuevaActividad" runat="server" data-dismiss="modal" AutoPostBack="false" Text="Guardar Actividad" class="btn btn-rounded btn-labeled btn-primary">
                                                                                                                <SettingsBootstrap RenderOption="Primary" />
								                                                                            </dx:BootstrapButton>
							                                                                            </div>
						                                                                            </div> <!-- / .modal-content -->
					                                                                            </div> <!-- / .modal-dialog -->
				                                                                            </div> <!-- / .modal -->
                                                                    



                                                                                                                                                            <div class="input-group col-sm-12">
                                                                                                                                                                    <dx:BootstrapComboBox   NullText="selecciona una actividad" ID="dllActividad" runat="server" DataSourceID="sqlActividad" TextField="NOMBRE_ACT" ValueField="ID_QA_ACT" AutoPostBack="True" Width ="100%" >
                                                                                                                                                                    </dx:BootstrapComboBox>
                                                                                                                                                                    <asp:SqlDataSource ID="sqlActividad" runat="server" SelectCommand="SELECT [NOMBRE_ACT], [ID_QA_ACT], [ID_ETA] FROM [QA_ACTIVIDAD] WHERE ([ID_OBR] = @ID_OBR)">
                                                                                                                                                                        <SelectParameters>
                                                                                                                                                                            <asp:SessionParameter Name="ID_OBR" SessionField="idObra" Type="Int64" />
                                                                                                                                                                        </SelectParameters>
                                                                                                                                                                    </asp:SqlDataSource>
                                                                                                                                                                <span class="input-group-btn">
								                                                                                                                                   <button data-toggle="modal" data-target="#modalActividad" data-original-title="Ingrese nueva actividad" class="btn btn-primary" type="button"> <i class="fas fa-plus-circle rounded"></i></button>
							                                                                                                                                    </span>
                                                                                                                                                            </div>  
                                                                                                                                                                </ContentTemplate>
                                                                                                                                                          
                                                                                                                                                            </asp:UpdatePanel>
                                                                                                                                                    </div>
                                                                                                                                                </div> <!-- / .form-group -->
                                                                                                                                                  <div class="form-group">
						                                                                                                                            <div class="col-sm-12">
                                                                                                                                                          <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                                                                                                                            <ContentTemplate>
                                                                                                                                                        <dx:BootstrapTextBox Enabled ="false"  RequiredField-IsRequired="true" ID="txtEtapa" Caption="Etapa" runat="server" NullText="etapa de una actividad"></dx:BootstrapTextBox>
                                                                                                                                                        <p class="help-block">Esta es la etapa para actividad seleccionada.</p>
						                                                                                                                                  </ContentTemplate>
                                                                                                                                                            
                                                                                                                                                            </asp:UpdatePanel>
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        </div>
					                                                                                                                            </div> <!-- / .form-group -->
					                                                                                                                            <div class="form-group">
						                                                                                                                            <label for="asdasdas" class="col-sm-6 control-label">Observaciones generales:</label>
						                                                                                                                            <div class="col-sm-12">
                                                                                                                                                       <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                                                                                                                                            <ContentTemplate>
							                                                                                                                                     <dx:BootstrapMemo ID="txtMemPbservaciones" runat="server" Rows="2" EncodeHtml="False" AutoPostBack ="true" ></dx:BootstrapMemo>
                                                                                                                                                                    <p class="help-block">las observaciones que ingresas aparecen en el Pie de la plantilla de registro</p>
                                                                                                                                                        </ContentTemplate>
                                                                                                                                                            
                                                                                                                                                            </asp:UpdatePanel>
                                                                                                                                                        </div>
					                                                                                                                            </div> <!-- / .form-group -->
					                                                                                                                    </div> <!-- / .form-group -->
			                                                                                                              </div>
                                                                                                                    </div>
                                                                                                                </div> <!-- / .panel -->
				                                                                                   </div>
                                             <div class="col-md-6">
                                                                                                             <div class="panel panel-transparent ">
                                                                                                                    <div class="panel-heading">
                                                                                                                        <span class="panel-title"><i class="fas fa-map-marker-alt fa-2x"></i> &nbsp;&nbsp;Alcance </span>
                                                                                                                    </div>
                                                                                                             <div class="panel-body">
                                                                                                              <span class="text-default "><em>Corresponde a los recintos donde aplica este proceso de calidad </em></span>
                                                                                                                 <br />
                                                                                                                 <br />
                                                                                                                 <div class="row">
		                                                            	                                                      <div class="col-sm-12">
                                                                                                                                  <div class="form-group">    
                                                                                                                                  <dx:ASPxGridView 	OnCellEditorInitialize="Grid_CellEditorInitialize" ClientInstanceName="grid" ID="Grid" runat="server" DataSourceID="sqlCat_Tip" AutoGenerateColumns="False" KeyFieldName="ID_ACC_SEC" Theme="Moderno" EnableTheming="True" Width="100%">
                                                                                                                                      <Toolbars>
                                                                                                                                            <dx:GridViewToolbar EnableAdaptivity="true">
                                                                                                                                                <Items>
                                                                                                                                                    <dx:GridViewToolbarItem Command="New" Text ="Agregar" DisplayMode="Text" >
                   
                                                                                                                                                        <Image IconID="actions_addfile_32x32">
                                                                                                                                                        </Image>
                                                                                                                                                        <ItemStyle VerticalAlign="Middle" Width="20px">
                                                                                                                                                        <BackgroundImage HorizontalPosition="center" VerticalPosition="center" />
                                                                                                                                                        </ItemStyle>
                                                                                                                                                    </dx:GridViewToolbarItem>
                   
                                                                                                                                                </Items>
                                                                                                                                            </dx:GridViewToolbar>
                                                                                                                                        </Toolbars>
                                                                                                                                                <SettingsPager Visible="False"></SettingsPager>
                                                                                                                                      <SettingsEditing Mode="Inline">
                                                                                                                                      </SettingsEditing>
                                                                                                                                       <Settings UseFixedTableLayout="True" />
                                                                                                                                     <SettingsDataSecurity AllowEdit="False" />
                                                                                                                                      <SettingsText CommandNew="Agregar" CommandUpdate="Guardar" CommandCancel="Cancelar" CommandDelete="Quitar" EmptyDataRow="No hay terrenos con recintos agregados" />
                                                                                                                                                <Columns>
                                                                                                                                                       <dx:GridViewCommandColumn VisibleIndex="1" Width="10%" ShowDeleteButton="True"></dx:GridViewCommandColumn>
                                                                                                                                                       <dx:GridViewDataTextColumn FieldName="ID_ACC_SEC" ReadOnly="True" VisibleIndex="2" Visible="False">
                                                                                                                                                           <EditFormSettings Visible="False"></EditFormSettings>
                                                                                                                                                       </dx:GridViewDataTextColumn>
                                                                                                                                                       <dx:GridViewDataComboBoxColumn Caption="Categorias" FieldName="ID_TUC" Width="40%" VisibleIndex="4">
                                                                                                                                                           <PropertiesComboBox DataSourceID="sqlCategorias" ValueField="ID_TUC" ValueType="System.Int32"
                                                                                                                                                               TextField="NOMBRE_TUC" EnableSynchronization="False" IncrementalFilteringMode="StartsWith">
                                                                                                                                                                  <ValidationSettings RequiredField-IsRequired="true" Display="Dynamic" >
                                                                                                                                                                    <RequiredField IsRequired="True"></RequiredField>
                                                                                                                                                                  </ValidationSettings>
						                                                                                                                                        <ClientSideEvents SelectedIndexChanged="CategoriasCombo_SelectedIndexChanged" />
					                                                                                                                                        </PropertiesComboBox>
				                                                                                                                                           <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
				                                                                                                                                        </dx:GridViewDataComboBoxColumn>
                                                                                                                                                       <dx:GridViewDataComboBoxColumn Caption="Tipologias" FieldName="ID_TIP" Width="50%" VisibleIndex="5">
					                                                                                                                                        <PropertiesComboBox DataSourceID="sqlTodasTipologias" ValueField="ID_TIP" ValueType="System.Int32"
						                                                                                                                                        TextField="NOMBRE_TIP" EnableSynchronization="False" IncrementalFilteringMode="StartsWith">
						                                                                                                                                        <ValidationSettings RequiredField-IsRequired="true" Display="Dynamic" >
<RequiredField IsRequired="True"></RequiredField>
                                                                                                                                                                </ValidationSettings>
					                                                                                                                                        </PropertiesComboBox>
				                                                                                                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
				                                                                                                                                        </dx:GridViewDataComboBoxColumn>

                                                                                                                                                       <dx:GridViewDataTextColumn FieldName="ID_ACC_PLT" VisibleIndex="3" Visible="False" Caption="ID" ReadOnly="True" Width="10%">
                                                                                                                                                       </dx:GridViewDataTextColumn>

                                                                                                                                                   </Columns>

                                                                                                                                                   
                                                                                                                                      <Styles>
                                                                                                                                          <InlineEditRow BackColor="#F0F0F0">
                                                                                                                                          </InlineEditRow>
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
                                                                                                                                              <asp:SqlDataSource runat="server" ID="sqlCat_Tip"  
                                                                                                                                                        SelectCommand="SELECT * FROM [QA_ACC_PLT_SECTOR] WHERE ([ID_ACC_PLT] = @ID_ACC_PLT)" 
                                                                                                                                                        DeleteCommand="DELETE FROM [QA_ACC_PLT_SECTOR] WHERE [ID_ACC_SEC] = @ID_ACC_SEC" 
                                                                                                                                                        InsertCommand="INSERT INTO [QA_ACC_PLT_SECTOR] ([ID_ACC_PLT], [ID_TUC], [ID_TIP]) VALUES (@ID_ACC_PLT, @ID_TUC, @ID_TIP)" 
                                                                                                                                                        UpdateCommand="UPDATE [QA_ACC_PLT_SECTOR] SET [ID_ACC_PLT] = @ID_ACC_PLT, [ID_TUC] = @ID_TUC, [ID_TIP] = @ID_TIP WHERE [ID_ACC_SEC] = @ID_ACC_SEC">
                                                                                                                                                   <deleteparameters>
                                                                                                                                                            <asp:Parameter Name="ID_ACC_SEC" Type="Int32"></asp:Parameter>
                                                                                                                                                            </deleteparameters>
                                                                                                                                                   <insertparameters>
                                                                                                                                                        <asp:SessionParameter SessionField="ID_ACC_PLT" Name="ID_ACC_PLT" Type="Int32" ></asp:SessionParameter>
                                                                                                                                                        <asp:Parameter Name="ID_TUC" Type="Int64"></asp:Parameter>
                                                                                                                                                        <asp:Parameter Name="ID_TIP" Type="Int64"></asp:Parameter>
                                                                                                                                                        </insertparameters>
                                                                                                                                                   <updateparameters>
                                                                                                                                                        <asp:Parameter Name="ID_ACC_PLT" Type="Int32"></asp:Parameter>
                                                                                                                                                        <asp:Parameter Name="ID_TUC" Type="Int64"></asp:Parameter>
                                                                                                                                                        <asp:Parameter Name="ID_TIP" Type="Int64"></asp:Parameter>
                                                                                                                                                        <asp:Parameter Name="ID_ACC_SEC" Type="Int32"></asp:Parameter>
                                                                                                                                                        </updateparameters>
                                                                                                                                                   <selectparameters>
                                                                                                                                                            <asp:SessionParameter SessionField="ID_ACC_PLT" Name="ID_ACC_PLT" Type="Int32" DefaultValue ="-1" ></asp:SessionParameter>
                                                                                                                                                            </selectparameters>
                                                                                                                                               </asp:SqlDataSource>
                                                                                                                                                                     <asp:SqlDataSource ID="sqlCategorias" runat="server"  
                                                                                                                                                                         SelectCommand="SELECT [ID_TUC], [ID_OBR], [NOMBRE_TUC] FROM [UCO_TIPOS] WHERE ([ID_OBR] = @ID_OBR)">
                                                                                                                                                                         <SelectParameters>
                                                                                                                                                                            <asp:SessionParameter Name="ID_OBR" SessionField="idObra" Type="Int64" />
                                                                                                                                                                         </SelectParameters>
                                                                                                                                                                     </asp:SqlDataSource>
                                                                                                                                                                     <asp:SqlDataSource ID="sqlTodasTipologias" runat="server" SelectCommand="SELECT [ID_TIP], [ID_UNIUCO], [NOMBRE_TIP], [ID_OBR], [ID_TUC] FROM [CM_MAESTRO_TIPOLOGIAS] WHERE ([ID_OBR] = @ID_OBR)">
                                                                                                                                                                         <SelectParameters>
                                                                                                                                                                              <asp:SessionParameter Name="ID_OBR" SessionField="idObra" Type="Int64" />
                                                                                                                                                                         </SelectParameters>
                                                                                                                                                                     </asp:SqlDataSource>
                                                                                                                                                                     <asp:SqlDataSource ID="sqlTipologias" runat="server" SelectCommand="SELECT [ID_TIP], [NOMBRE_TIP], [ID_OBR], [ID_TUC] FROM [CM_MAESTRO_TIPOLOGIAS] WHERE (([ID_OBR] = @ID_OBR) AND ([ID_TUC] = @ID_TUC))">
                                                                                                                                                                         <SelectParameters>
                                                                                                                                                                             <asp:SessionParameter Name="ID_OBR" SessionField="idObra" Type="Int64" />
                                                                                                                                                                             <asp:Parameter Name="ID_TUC" Type="Int32" />
                                                                                                                                                                         </SelectParameters>
                                                                                                                                                                     </asp:SqlDataSource>
                                                                                                                                  </div>
                                                                                                                          </div>
                                                                                                                 </div> <!-- / .form-group -->
			                                                                                                        <p class="help-block">ejemplo: Departamento (Categoría) Tipo A (Tipologia).</p>     
                                                                                                            </div>

		                                                                                                        </div>
					                                                                                 </div>
                                        </div>
						       </div>
                                                                <div class="panel" >
                                                                     
                                                                       <div id="modalGrupo" class="modal  fadeIn  animated">
					                                                                            <div class="modal-dialog" >
						                                                                            <div class="modal-content">
							                                                                            <div class="modal-header dark">
								                                                                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								                                                                            <h4 class="modal-title" id="myModalLabelGRUPO"><i class="fas fa-plus-circle "></i>&nbsp;&nbsp;NUEVO GRUPO</h4>
							                                                                            </div>
							                                                                            <div class="modal-body">
                                                                                                        <div class="row padding-sm">
                                                                                                             <div class="col-sm-12">
				                                                                                                       <div class="form-group">
						                                                                                                            <div class="form-group">
						                                                                                                                <label for="inputEmail2" class="col-sm-2 control-label">Nombre</label>
						                                                                                                                <div class="col-sm-10">
							                                                                                                                <input type="text" runat="server" class="form-control" id="txtNuevoGrupo" placeholder="Nombre grupo">
						                                                                                                                </div>
                                                                                                                                    </div> <!-- / .form-group -->
					                                                                                                                
					                                                                                                        </div> <!-- / .form-group -->
                                                                                                                    </div>
                                                                                                          </div>
							                                                                            </div>
                                                                                                        <div class="modal-footer">
                                                                                                           <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                                                                            <!--<button id="OnMyButtonClick" type="button" class="btn btn-default" >Guardar</button>-->
                                                                                                            <dx:BootstrapButton ID="btnNuevoGrupo" runat="server" data-dismiss="modal" Text="Guardar Grupo" class="btn btn-rounded btn-labeled btn-primary">
                                                                                                                <SettingsBootstrap RenderOption="Primary" />
								                                                                            </dx:BootstrapButton>
							                                                                            </div>
						                                                                            </div> <!-- / .modal-content -->
					                                                                            </div> <!-- / .modal-dialog -->
				                                                                            </div> <!-- / .modal -->
                                                                    <div class="row">
                                                                                 <div class="col-md-12">

                                                                                    <div class="panel panel-transparent">
                                                                                        <div class="panel-heading">
                                                                                            <span class="panel-title "><i class="lnr lnr lnr-layers fa-2x"></i> <b>2.1)</b>&nbsp;&nbsp;Detalle de la especificación </span>
                                                                                        </div>
                                                                                     <div class="panel-body">


                                                                            <br />
                                                                            <br />
                                                                              <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                                                <ContentTemplate>
                                                                              
                                                                 
                                                                                <dx:ASPxGridView ID="grillaCheck" runat="server" AutoGenerateColumns="False" DataSourceID="sqlListaCheck" KeyFieldName="ID_PLT_CHK" EnableTheming="True" Theme="Moderno" Width="100%">
                                                                                    <SettingsEditing Mode="EditForm">
                                                                                    </SettingsEditing>
                                                                                    <SettingsBehavior AutoExpandAllGroups="True" />
                                                                                    <SettingsPager Mode="ShowAllRecords">
                                                                                    </SettingsPager>
                                                                                    <SettingsDataSecurity AllowDelete="True" AllowEdit="True" AllowInsert="True" />
                                                                                    <EditFormLayoutProperties AlignItemCaptionsInAllGroups="True" ColCount="2">
                                                                                        <Items>
                                                                                            <dx:GridViewColumnLayoutItem ColumnName="ID_GRP_CHK" Caption="GRUPO" Name="comboGrupo" Width="50%">
                                                                                            </dx:GridViewColumnLayoutItem>
                                                                                            <dx:GridViewColumnLayoutItem ColumnName="Adj." Width="100%" Caption="SUBIR ARCHIVOS" HelpText="Adjunte 1 o varios archivos a la actividad" RowSpan="6" ShowCaption="True" VerticalAlign="Middle">
                                                                                                <Template>
                                                                                                    <div class="uploadContainer">
                                                                                            

                                                                                                        <dx:ASPxUploadControl ID="UploadControl" runat="server" ClientInstanceName="UploadControl" Width="320"
                                                                                                            NullText="Elije multiples Archivos...." UploadMode="Advanced" ShowUploadButton="True" ShowProgressPanel="True"  AdvancedModeSettings-TemporaryFolder="~/archivos"    FileSystemSettings-UploadFolder ="~/archivos"
                                                                                                            OnFileUploadComplete="UploadControl_FileUploadComplete" Theme="Material" UploadStorage="FileSystem" >
                                                                                                            <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
                                                                                                            <ValidationSettings MaxFileSize="4194304" AllowedFileExtensions=".jpg,.jpeg,.gif,.png">
                                                                                                            </ValidationSettings>
                                                                                                            <ClientSideEvents FilesUploadStart="function(s, e) {  }"
                                                                                                                FileUploadComplete="onFileUploadComplete" />
                                                                                                        </dx:ASPxUploadControl>
                                                                                                        <br />
                                                                                                        <br />
                                                                                                        <p class="note note-danger ">
                                                                                                            <dx:ASPxLabel ID="AllowedFileExtensionsLabel" runat="server" Text="las posibles extenciones son: .jpg, .jpeg, .gif, .png." Font-Size="8pt">
                                                                                                            </dx:ASPxLabel>
                                                                                                            <br />
                                                                                                            <dx:ASPxLabel ID="MaxFileSizeLabel" runat="server" Text="el maximo de tamaño de archivo: 4 MB." Font-Size="8pt">
                                                                                                            </dx:ASPxLabel>
                                                                                                        </p>
                                                                                                    </div>
                                                                                      
                                                                                                </Template>

                                                                                                <CaptionSettings Location="Top" HorizontalAlign="Left" VerticalAlign="Middle"></CaptionSettings>
                                                                                            </dx:GridViewColumnLayoutItem>
                                                                                            <dx:GridViewColumnLayoutItem ColumnName="NOMBRE_CHK" Width="50%">
                                                                                            </dx:GridViewColumnLayoutItem>
                                                                                            <dx:GridViewColumnLayoutItem Caption="ESPECIFICACION" ColumnName="ESPECIFICACION_CHK" Width="50%">
                                                                                                <CaptionSettings Location="Left"></CaptionSettings>
                                                                                            </dx:GridViewColumnLayoutItem>
                                                                                            <dx:GridViewColumnLayoutItem  ColumnName="CRITERIO_CONTROL" Width="50%">
                                                                                            </dx:GridViewColumnLayoutItem>
                                                                                            <dx:EditModeCommandLayoutItem HorizontalAlign="Right" ColSpan="2">
                                                                                            </dx:EditModeCommandLayoutItem>
                                                                                        </Items>
                                                                                        <SettingsItemCaptions HorizontalAlign="Right" Location="Left" VerticalAlign="Middle" />
                                                                                    </EditFormLayoutProperties>
                                                                                    <Columns>
                                                                                        <dx:BootstrapGridViewCommandColumn ButtonRenderMode="Link" ButtonType="Link" HorizontalAlign="Center" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0" Width="10%">
                                                                                        </dx:BootstrapGridViewCommandColumn>
                                                                                        <dx:BootstrapGridViewTextColumn FieldName="ID_PLT_CHK" ReadOnly="True" Visible="False" VisibleIndex="1">
                                                                                            <SettingsEditForm Visible="False" />
                                                                                        </dx:BootstrapGridViewTextColumn>
                                                                                        <dx:BootstrapGridViewTextColumn FieldName="ID_ACC_PLT" Visible="False" VisibleIndex="2">
                                                                                        </dx:BootstrapGridViewTextColumn>
                                                                                        <dx:BootstrapGridViewHyperLinkColumn Caption="Adj." HorizontalAlign="Center" VisibleIndex="10" Width="5%" Visible="False">
                                                                                            <PropertiesHyperLinkEdit IconCssClass="fas fa-paperclip" Text="Adjuntar...">
                                                                                            </PropertiesHyperLinkEdit>
                                                                                        </dx:BootstrapGridViewHyperLinkColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="NOMBRE_GRP_CHK" GroupIndex="0" SortIndex="0" SortOrder="Ascending" Width="10%" Caption="GRUPO" VisibleIndex="3">
                                                                                            <SettingsHeaderFilter>
                                                                                                <DateRangeCalendarSettings>
                                                                                                    <FastNavProperties DisplayMode="Inline"></FastNavProperties>
                                                                                                </DateRangeCalendarSettings>
                                                                                                <DateRangePickerSettings>
                                                                                                    <FastNavProperties DisplayMode="Inline"></FastNavProperties>
                                                                                                </DateRangePickerSettings>
                                                                                            </SettingsHeaderFilter>
                                                                                            <EditItemTemplate>
                                                                                                 <div class="input-group col-sm-12">
                                                                                               
                                                                                                   </div>  
                                                                                            </EditItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataComboBoxColumn  FieldName="ID_GRP_CHK" VisibleIndex="7" Name="ckGrupo" Visible="False">
                                                                                            <PropertiesComboBox  DataSourceID="sqlGrupos" TextField="NOMBRE_GRP_CHK" ValueField="ID_GRP_CHK">
                                                                                               <ClientSideEvents ButtonClick="function(s,e) { $('#modalGrupo').modal('show'); }" />
                                                                                             <%--   <button data-toggle="modal" data-target="#modalActividad" data-original-title="Ingrese nueva actividad" class="btn btn-primary" type="button"> <i class="fas fa-plus-circle rounded"></i></button>--%>
                                                                                                <Buttons>
                                                                                                    <dx:BootstrapEditButton  IconCssClass="fas fa-plus-circle" Position="right" />
                                                                                               </Buttons>
                                                                                            </PropertiesComboBox>
                                                                                         <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                        </dx:GridViewDataComboBoxColumn>
                                                                                        <dx:GridViewDataTextColumn Caption="NOMBRE" FieldName="NOMBRE_CHK" VisibleIndex="4" Width="25%">
                                                                                            <SettingsHeaderFilter>
                                                                                                <DateRangeCalendarSettings>
                                                                                                    <FastNavProperties DisplayMode="Inline" />
                                                                                                </DateRangeCalendarSettings>
                                                                                                <DateRangePickerSettings>
                                                                                                    <FastNavProperties DisplayMode="Inline" />
                                                                                                </DateRangePickerSettings>
                                                                                            </SettingsHeaderFilter>
                                                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn Caption="CRITERIO" FieldName="CRITERIO_CONTROL" VisibleIndex="6" Width="10%">
                                                                                            <SettingsHeaderFilter>
                                                                                                <DateRangeCalendarSettings>
                                                                                                    <FastNavProperties DisplayMode="Inline" />
                                                                                                </DateRangeCalendarSettings>
                                                                                                <DateRangePickerSettings>
                                                                                                    <FastNavProperties DisplayMode="Inline" />
                                                                                                </DateRangePickerSettings>
                                                                                            </SettingsHeaderFilter>
                                                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataMemoColumn Caption="ESPECIFICACIÓN" FieldName="ESPECIFICACION_CHK" VisibleIndex="5" Width="45%">
                                                                                            <PropertiesMemoEdit Rows="2">
                                                                                            </PropertiesMemoEdit>
                                                                                            <SettingsHeaderFilter>
                                                                                                <DateRangeCalendarSettings>
                                                                                                    <FastNavProperties DisplayMode="Inline" />
                                                                                                </DateRangeCalendarSettings>
                                                                                                <DateRangePickerSettings>
                                                                                                    <FastNavProperties DisplayMode="Inline" />
                                                                                                </DateRangePickerSettings>
                                                                                            </SettingsHeaderFilter>
                                                                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                        </dx:GridViewDataMemoColumn>
                                                                                    </Columns>
                                                                                    <Styles>
                                                                                        <EditForm BackColor="#CCCCCC">
                                                                                        </EditForm>
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
                                                                                   <asp:SqlDataSource ID="sqlGrupos" runat="server" 
                                                                                       SelectCommand="SELECT * FROM [QA_GRUPO_CHECKLIST]" 
                                                                                       DeleteCommand="DELETE FROM [QA_GRUPO_CHECKLIST] WHERE [ID_GRP_CHK] = @ID_GRP_CHK" 
                                                                                       InsertCommand="INSERT INTO [QA_GRUPO_CHECKLIST] ([NOMBRE_GRP_CHK]) VALUES (@NOMBRE_GRP_CHK)" 
                                                                                       UpdateCommand="UPDATE [QA_GRUPO_CHECKLIST] SET [NOMBRE_GRP_CHK] = @NOMBRE_GRP_CHK WHERE [ID_GRP_CHK] = @ID_GRP_CHK">
                                                                                       <DeleteParameters>
                                                                                           <asp:Parameter Name="ID_GRP_CHK" Type="Int32"></asp:Parameter>
                                                                                       </DeleteParameters>
                                                                                       <InsertParameters>
                                                                                           <asp:Parameter Name="NOMBRE_GRP_CHK" Type="String"></asp:Parameter>
                                                                                       </InsertParameters>
                                                                                       <UpdateParameters>
                                                                                           <asp:Parameter Name="NOMBRE_GRP_CHK" Type="String"></asp:Parameter>
                                                                                           <asp:Parameter Name="ID_GRP_CHK" Type="Int32"></asp:Parameter>
                                                                                       </UpdateParameters>
                                                                                   </asp:SqlDataSource>
                                                                                <asp:SqlDataSource ID="sqlListaCheck" runat="server" 
                                                                                    SelectCommand="SP_WS_LISTA_CHECKLIST" DeleteCommand="DELETE FROM [QA_ACC_PLT_CHECKLIST] WHERE [ID_PLT_CHK] = @ID_PLT_CHK" 
                                                                                    InsertCommand="INSERT INTO [QA_ACC_PLT_CHECKLIST] ([ID_ACC_PLT], [ID_GRP_CHK], [NOMBRE_CHK], [SOLICITA_ENT], [TIPO_DATO_ENT], [CRITERIO_CONTROL], [ESPECIFICACION_CHK]) VALUES (@ID_ACC_PLT,@ID_GRP_CHK, @NOMBRE_CHK,@SOLICITA_ENT, @TIPO_DATO_ENT, @CRITERIO_CONTROL, @ESPECIFICACION_CHK)" 
                                                                                    UpdateCommand="UPDATE [QA_ACC_PLT_CHECKLIST] SET [ID_ACC_PLT] = @ID_ACC_PLT,[NOMBRE_CHK] = @NOMBRE_CHK, [ID_GRP_CHK] = @ID_GRP_CHK,[SOLICITA_ENT] = @SOLICITA_ENT, [TIPO_DATO_ENT] = @TIPO_DATO_ENT, [CRITERIO_CONTROL] = @CRITERIO_CONTROL, [ESPECIFICACION_CHK] = @ESPECIFICACION_CHK WHERE [ID_PLT_CHK] = @ID_PLT_CHK" 
                                                                                    SelectCommandType="StoredProcedure">
                                                                                    <DeleteParameters>
                                                                                        <asp:Parameter Name="ID_PLT_CHK" Type="Int32"></asp:Parameter>
                                                                                    </DeleteParameters>
                                                                                    <InsertParameters>
                                                                                        <asp:SessionParameter SessionField="ID_ACC_PLT" Name="ID_ACC_PLT" Type="Int16" ></asp:SessionParameter>
                                                                                        <asp:Parameter Name="NOMBRE_CHK" Type="String"></asp:Parameter>
                                                                                        <asp:Parameter Name="ID_GRP_CHK" Type="int16"></asp:Parameter>
                                                                                        <asp:Parameter Name="SOLICITA_ENT" Type="Int16" DefaultValue="0"></asp:Parameter>
                                                                                        <asp:Parameter Name="TIPO_DATO_ENT" Type="Int16" DefaultValue="0"></asp:Parameter>
                                                                                        <asp:Parameter Name="CRITERIO_CONTROL" Type="String"></asp:Parameter>
                                                                                        <asp:Parameter Name="ESPECIFICACION_CHK" Type="String"></asp:Parameter>
                                                                                    </InsertParameters>
                                                                                    <SelectParameters>
                                                                                        <asp:SessionParameter  Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                                    </SelectParameters>
                                                                                    <UpdateParameters>
                                                                                        <asp:Parameter Name="ID_ACC_PLT" Type="Int32"></asp:Parameter>
                                                                                        <asp:Parameter Name="NOMBRE_CHK" Type="String"></asp:Parameter>
                                                                                        <asp:Parameter Name="ID_GRP_CHK" Type="Int32"></asp:Parameter>
                                                                                        <asp:Parameter Name="SOLICITA_ENT" Type="Int16" DefaultValue="0"></asp:Parameter>
                                                                                        <asp:Parameter Name="TIPO_DATO_ENT" Type="Int16" DefaultValue="0"></asp:Parameter>
                                                                                        <asp:Parameter Name="CRITERIO_CONTROL" Type="String"></asp:Parameter>
                                                                                        <asp:Parameter Name="ESPECIFICACION_CHK" Type="String"></asp:Parameter>
                                                                                        <asp:Parameter Name="ID_PLT_CHK" Type="Int32"></asp:Parameter>
                                                                                    </UpdateParameters>

                                                                                </asp:SqlDataSource>                    
                                                                              <br />
                                                                                </ContentTemplate>
                                                                                  <Triggers>
                                                                                        <asp:AsyncPostBackTrigger ControlID ="btnNuevoGrupo" />
                                                                                  </Triggers>
                                                                            </asp:UpdatePanel>

                                                                            </div>
                                                                        </div>              

                                                                            </div>
                                                                        </div>			
                                                               </div>
								                                <div class="row">
                                                                             <div class ="col-md-12">
                                                                                                                  <div class="panel panel-transparent">
                                                                                                                        <div class="panel-heading">
                                                                                                                                <span class="panel-title "><i class="lnr lnr-sort-amount-asc fa-2x "></i> <b>3.2)</b>&nbsp;&nbsp;Definición de cadena revisión</span>
                                                                                                                        </div>
                                                                                                                         <div class="panel-body">
                                                                                                                                             
                                                                                                                      <dx:ASPxGridView ID="GridVb" runat="server" AutoGenerateColumns="False" DataSourceID="sql_vb" KeyFieldName="ID_PLT_VB"  Theme="MaterialCompact" Width="100%" EnableTheming="True">
                                                                                                                                     <SettingsEditing EditFormColumnCount="1" Mode="EditForm">
                                                                                                                                     </SettingsEditing>
                                                                                                                                       <SettingsPopup>
                                                                                                                                           <EditForm Modal="True" VerticalAlign="Middle">
                                                                                                                                           </EditForm>
                                                                                                                                           <CustomizationWindow PopupAnimationType="Slide" ShowShadow="True" VerticalAlign="Above" />
                                                                                                                                       </SettingsPopup>
                                                                                                                                     <EditFormLayoutProperties AlignItemCaptionsInAllGroups="True" ColCount="8">
                                                                                                                                         <Items>
                                                                                                                                             <dx:GridViewColumnLayoutItem Caption="ORDEN" ColumnName="ORDEN_VB" Name="cbx" Width="20%">
                                                                                                                                             </dx:GridViewColumnLayoutItem>
                                                                                                                                             <dx:GridViewColumnLayoutItem ColumnName="CARGO_VB" Caption="REVISOR" Width="20%">
                                                                                                                                             </dx:GridViewColumnLayoutItem>
                                                                                                                                             <dx:GridViewColumnLayoutItem ColumnName="ROL" Caption="ROLES" Width="30%">
                                                                                                                                             </dx:GridViewColumnLayoutItem>
                                                                                                                                             <dx:GridViewColumnLayoutItem Caption="AVISO ADICIONAL" ColumnName="CORREOS_VB" Width ="40%">
                                                                                                                                             </dx:GridViewColumnLayoutItem>
                                                                                                                                             <dx:GridViewColumnLayoutItem ColumnName="VB_PAPEL">
                                                                                                                                             </dx:GridViewColumnLayoutItem>
                                                                                                                                             <dx:GridViewColumnLayoutItem ColumnName="VB_DIGITAL">
                                                                                                                                             </dx:GridViewColumnLayoutItem>
                                                                                                                                             <dx:EditModeCommandLayoutItem HorizontalAlign="Right" ColSpan="8">
                                                                                                                                             </dx:EditModeCommandLayoutItem>
                                                                                                                                         </Items>
                                                                                                                                         <SettingsItemCaptions HorizontalAlign="Left" Location="Top" VerticalAlign="Middle" />
                                                                                                                                     </EditFormLayoutProperties>
                                                                                                                                     <Columns>
                                                                                                                                         <dx:GridViewCommandColumn ShowNewButtonInHeader="True" VisibleIndex="0" ShowEditButton="True" Width="10%">
                                                                                                                                         </dx:GridViewCommandColumn>
                                                                                                                                         <dx:GridViewDataTextColumn FieldName="ID_PLT_VB" ReadOnly="True" VisibleIndex="8" Visible="False">
                                                                                                                                             <EditFormSettings Visible="False"></EditFormSettings>
                                                                                                                                         </dx:GridViewDataTextColumn>

                                                                                                                                         <dx:GridViewDataTextColumn FieldName="ID_ACC_PLT" VisibleIndex="9" Visible="False">
                                                                                                                                         </dx:GridViewDataTextColumn>
                                                                                                                                         <dx:GridViewDataTextColumn FieldName="CARGO_VB" VisibleIndex="4" Caption="REVISOR" Width="20%">
                                                                                                                                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                                                                         </dx:GridViewDataTextColumn>
                                                                                                                                         <dx:GridViewDataTextColumn FieldName="ESTADO_VB" Visible="false" VisibleIndex="10" Caption="ESTADO">
                                                                                                                                         </dx:GridViewDataTextColumn>
                                                                                                                                         <dx:GridViewDataTokenBoxColumn FieldName="ROL" VisibleIndex="5" Width="25%" Caption="ROLES">
                                                                                                                                             <PropertiesTokenBox AllowMouseWheel="True" DataSourceID="sqlRol" TextField="NOMBRE_ROL" Tokens="" ValueField="NOMBRE_ROL" 
                                                                                                                                                 ValueSeparator =";">
                                                                                                                                                 <TokenBoxInputStyle Width="30%">
                                                                                                                                                 </TokenBoxInputStyle>
                                                                                                                                             </PropertiesTokenBox>
                                                                                                                                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                                                                         </dx:GridViewDataTokenBoxColumn>
                                                                                                                                         <dx:GridViewBandColumn Caption="V.B." VisibleIndex="7">
                                                                                                                                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                                                                             <Columns>
                                                                                                                                                 <dx:GridViewDataCheckColumn FieldName="VB_DIGITAL" Caption="DIGITAL" VisibleIndex="4" Width="5%">
                                                                                                                                                     <PropertiesCheckEdit ValueChecked="1" ValueType="System.Int32" ValueUnchecked="0">
                                                                                                                                                     </PropertiesCheckEdit>
                                                                                                                                                     <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                                                                                 </dx:GridViewDataCheckColumn>
                                                                                                                                                 <dx:GridViewDataCheckColumn FieldName="VB_PAPEL" Caption="PAPEL" VisibleIndex="0" Width="5%">
                                                                                                                                                     <PropertiesCheckEdit ValueChecked="1" ValueType="System.Int32" ValueUnchecked="0">
                                                                                                                                                     </PropertiesCheckEdit>
                                                                                                                                                     <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                                                                                 </dx:GridViewDataCheckColumn>
                                                                                                                                             </Columns>
                                                                                                                                         </dx:GridViewBandColumn>
                                                                                                                                         <dx:GridViewDataTokenBoxColumn FieldName="CORREOS_VB" ShowInCustomizationForm="True" VisibleIndex="6" Width="40%" Caption="AVISO ADICIONAL">
                                                                                                                                             <PropertiesTokenBox AllowMouseWheel="True" IncrementalFilteringMode="None" ShowDropDownOnFocus="Never" Tokens="" ValueSeparator=";">
                                                                                                                                                 <TokenBoxInputStyle Width="50%">
                                                                                                                                                 </TokenBoxInputStyle>
                                                                                                                                             </PropertiesTokenBox>
                                                                                                                                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                                                                         </dx:GridViewDataTokenBoxColumn>
                                                                                                                                         <dx:GridViewDataComboBoxColumn Caption="ORDEN" FieldName="ORDEN_VB" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2" Width="12%">
                                                                                                                                             <PropertiesComboBox DataSourceID="sqlAnterior" TextField="ORDEN_STR" ValueField="ORDEN_VB" ValueType="System.Int32">
                                                                                                                                                 <Columns>
                                                                                                                                                     <dx:ListBoxColumn Caption="ORDEN" FieldName="ORDEN_STR">
                                                                                                                                                     </dx:ListBoxColumn>
                                                                                                                                                 </Columns>
                                                                                                                                             </PropertiesComboBox>
                                                                                                                                             <EditFormSettings Visible="False" />
                                                                                                                                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                                                                         </dx:GridViewDataComboBoxColumn>
                                                                                                                                         <dx:GridViewDataTextColumn Caption="iD" FieldName="ORDEN_VB" Name="combo" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1" Width="3%">
                                                                                                                                             <PropertiesTextEdit NullDisplayText="Seleccione su nivel de aprobación">
                                                                                                                                             </PropertiesTextEdit>
                                                                                                                                             <EditFormSettings Visible="False" />
                                                                                                                                         </dx:GridViewDataTextColumn>
                                                                                                                                         <dx:GridViewDataTextColumn Caption="ORDEN" FieldName="ORDEN_VB" ReadOnly="True" VisibleIndex="3">
                                                                                                                                         </dx:GridViewDataTextColumn>
                                                                                                                                         <dx:GridViewDataTextColumn FieldName="USUARIOS" ReadOnly="True" VisibleIndex="11" Visible="False">
                                                                                                                                         </dx:GridViewDataTextColumn>
                                                                                                                                     </Columns>
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
                                                                                                                                 <asp:SqlDataSource ID="sql_vb" runat="server" 
                                                                                                                                     SelectCommand="SP_WS_TRAER_VB"
                                                                                                                                     InsertCommand ="SP_WS_INS_VB"
                                                                                                                                     UpdateCommand  ="SP_WS_ACTUALIZA_VB"
                                                                                                                                     SelectCommandType="StoredProcedure" InsertCommandType="StoredProcedure" UpdateCommandType="StoredProcedure">
                                                                                                                                     <SelectParameters>
                                                                                                                                         <asp:SessionParameter  Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                                                                                     </SelectParameters>
                                                                                                                                     <InsertParameters>
                                                                                                                                         <asp:SessionParameter  Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                                                                                         <asp:Parameter Name="CARGO_VB" Type="String" />
                                                                                                                                         <asp:Parameter Name="VB_DIGITAL" Type="Int32" DefaultValue ="0" />
                                                                                                                                         <asp:Parameter Name="VB_PAPEL" Type="Int32" DefaultValue ="0"/>
                                                                                                                                         <asp:Parameter Name="ORDEN_VB" Type="Int32" />
                                                                                                                                         <asp:Parameter Name="ESTADO_VB" Type="Int32"  DefaultValue ="0" />
                                                                                                                                         <asp:Parameter Name="ROL"  Type="String" />
                                                                                                                                         <asp:Parameter Name="CORREOS_VB"  Type="String" />
                                                                                                                                     </InsertParameters>
                                                                                                                                     <UpdateParameters>
                                                                                                                                          <asp:Parameter Name="ID_PLT_VB" Type="Int32" />
                                                                                                                                          <asp:SessionParameter  Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                                                                                         <asp:Parameter Name="CARGO_VB" Type="String" />
                                                                                                                                         <asp:Parameter Name="VB_DIGITAL" Type="Int32" DefaultValue ="0" />
                                                                                                                                         <asp:Parameter Name="VB_PAPEL" Type="Int32"  DefaultValue ="0"/>
                                                                                                                                          <asp:SessionParameter Name="ORDEN_VB" SessionField="ORDEN_VB" Type="Int32" />
                                                                                                                                         <asp:Parameter Name="ESTADO_VB" Type="Int32" DefaultValue ="0" />
                                                                                                                                         <asp:Parameter Name="ROL" Type="String" />
                                                                                                                                          <asp:Parameter Name="CORREOS_VB" Type="String" />
                                                                                                                                     </UpdateParameters>
                                                                                                                                 </asp:SqlDataSource>
                                                                                                                                 <asp:SqlDataSource ID="SqlUsuarios" runat="server" 
                                                                                                                                     SelectCommand="SELECT [id_Usu], [nombre_Usu] FROM [USUARIOS]">

                                                                                                                                 </asp:SqlDataSource>
                                                                                                                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                                                                                                     SelectCommand="SELECT [ID_PLT_VB], [ID_ACC_PLT], [CARGO_VB], [ORDEN_VB] FROM [QA_ACC_PLT_CADENA_VB] 
WHERE ID_ACC_PLT=@ID_ACC_PLT
ORDER BY [ID_PLT_VB] DESC">
                                                                                                                                     <SelectParameters>
                                                                                                                                         <asp:SessionParameter Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" />
                                                                                                                                     </SelectParameters>

                                                                                                                                 </asp:SqlDataSource>

                                                                                                                                             <asp:SqlDataSource ID="sqlRol" runat="server"  
                                                                                                                                                 SelectCommand=" SELECT [ID_ROL], [NOMBRE_ROL]  FROM [QA_ROL] WHERE ([ID_OBR] = @ID_OBR)">
                                                                                                                                                 <SelectParameters>
                                                                                                                                                     <asp:SessionParameter Name="ID_OBR" SessionField="idObra" Type="Int64" />
                                                                                                                                                 </SelectParameters>
                                                                                                                                             </asp:SqlDataSource>

                                                                                                                                             <asp:SqlDataSource ID="sqlAnterior" runat="server"  
                                                                                                                                                SelectCommand="SP_WS_TRAER_VB_CREADOS"
                                                                                                                                     InsertCommand ="SP_WS_INS_VB"
                                                                                                                                     UpdateCommand  ="SP_WS_ACTUALIZA_VB"
                                                                                                                                     SelectCommandType="StoredProcedure" InsertCommandType="StoredProcedure" UpdateCommandType="StoredProcedure">
                                                                                                                                     <SelectParameters>
                                                                                                                                         <asp:SessionParameter  Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                                                                                     </SelectParameters>
                                                                                                                                     <InsertParameters>
                                                                                                                                         <asp:SessionParameter  Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                                                                                         <asp:Parameter Name="CARGO_VB" Type="String" />
                                                                                                                                         <asp:Parameter Name="VB_DIGITAL" Type="Int32" DefaultValue ="0" />
                                                                                                                                         <asp:Parameter Name="VB_PAPEL" Type="Int32" DefaultValue ="0"/>
                                                                                                                                         <asp:Parameter Name="ORDEN_VB" Type="Int32" />
                                                                                                                                         <asp:Parameter Name="ESTADO_VB" Type="Int32"  DefaultValue ="0" />
                                                                                                                                         <asp:Parameter Name="USUARIO"  Type="String" />
                                                                                                                                         <asp:Parameter Name="CORREOS_VB"  Type="String" />
                                                                                                                                     </InsertParameters>
                                                                                                                                     <UpdateParameters>
                                                                                                                                          <asp:Parameter Name="ID_PLT_VB" Type="Int32" />
                                                                                                                                          <asp:SessionParameter  Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                                                                                         <asp:Parameter Name="CARGO_VB" Type="String" />
                                                                                                                                         <asp:Parameter Name="VB_DIGITAL" Type="Int32" DefaultValue ="0" />
                                                                                                                                         <asp:Parameter Name="VB_PAPEL" Type="Int32"  DefaultValue ="0"/>
                                                                                                                                          <asp:SessionParameter Name="ORDEN_VB" SessionField="ORDEN_VB" Type="Int32" />
                                                                                                                                         <asp:Parameter Name="ESTADO_VB" Type="Int32" DefaultValue ="0" />
                                                                                                                                         <asp:Parameter Name="USUARIO" Type="String" />
                                                                                                                                          <asp:Parameter Name="CORREOS_VB" Type="String" />
                                                                                                                                     </UpdateParameters>
                                                                                                                                             </asp:SqlDataSource>

                                                                                                                             </div>
                                                                                                                    </div>
                                                                                                             </div>   
                                                                            <div class="col-md-12">
                                                                                                                 <div class="panel panel-transparent">
                                                                                                                        <div class="panel-heading">
                                                                                                                                <span class="panel-title "><i class="lnr lnr-apartment fa-2x"></i> <b>3.1)</b>&nbsp;&nbsp;Definición de mensajería </span>
                                                                                                                        </div>
                                                                                                                         <div class="panel-body">
                                                                                                                                            
                                                                                                                                             <br />
                                                                                                                                             <br />
                                                                        
                                                                                                                                    <dx:ASPxGridView ID="gridMensajes" runat="server" DataSourceID="SqlDataSource2" EnableTheming="True" Theme="MaterialCompact" AutoGenerateColumns ="False" KeyFieldName="ID_QA_MSG" Width="100%">
                                                                                                                                                <Columns>
                                                                                                                                                    <dx:GridViewBandColumn Caption="CRITERIOS DE AVISOS POR MAIL.-" VisibleIndex="8">
                                                                                                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                                                                                        <Columns>
                                                                                                                                                            <dx:GridViewDataCheckColumn Caption="SOLICITAR" FieldName="CRT_GENERA_ACC" VisibleIndex="0" Width="5%">
                                                                                                                                                                <PropertiesCheckEdit ValueChecked="1" ValueType="System.Int32" ValueUnchecked="0">
                                                                                                                                                                </PropertiesCheckEdit>
                                                                                                                                                                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                                                                                                                                                            </dx:GridViewDataCheckColumn>
                                                                                                                                                            <dx:GridViewDataCheckColumn Caption="VB" FieldName="CRT_VB_ACC" VisibleIndex="1" Width="5%">
                                                                                                                                                                <PropertiesCheckEdit ValueChecked="1" ValueType="System.Int32" ValueUnchecked="0">
                                                                                                                                                                </PropertiesCheckEdit>
                                                                                                                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                                                                                                                                            </dx:GridViewDataCheckColumn>
                                                                                                                                                            <dx:GridViewDataCheckColumn Caption="RECHAZO" FieldName="CRT_RECHAZA_ACC" VisibleIndex="2" Width="5%">
                                                                                                                                                                <PropertiesCheckEdit ValueChecked="1" ValueType="System.Int32" ValueUnchecked="0">
                                                                                                                                                                </PropertiesCheckEdit>
                                                                                                                                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                                                                                            </dx:GridViewDataCheckColumn>
                                                                                                                                                        </Columns>
                                                                                                                                                    </dx:GridViewBandColumn>
                                                                                                                                                    <dx:GridViewCommandColumn VisibleIndex="0" Width="10%" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True">
                                                                                                                                                    </dx:GridViewCommandColumn>
                                                                                                                                                                <dx:GridViewBandColumn ShowInCustomizationForm="True" Caption="MENSAJERIA - DEFINICIÓN DE DESTINATARIOS DE AVISOS.-" VisibleIndex="1"><Columns>
                                                                                                                                                                <dx:GridViewDataTextColumn FieldName="NOMBRE_MSG" ShowInCustomizationForm="True" Width="10%" Caption="NOMBRE" VisibleIndex="2"></dx:GridViewDataTextColumn>
                                                                                                                                                                <dx:GridViewDataTextColumn FieldName="CARGO_MSG" ShowInCustomizationForm="True" Width="15%" Caption="CARGO" VisibleIndex="3"></dx:GridViewDataTextColumn>
                                                                                                                                                                <dx:GridViewDataTextColumn FieldName="MAIL_MSG" ShowInCustomizationForm="True" Width="35%" Caption="E-MAIL" VisibleIndex="4"></dx:GridViewDataTextColumn>
                                                                                                                                                                <dx:GridViewDataTextColumn FieldName="FONO_MSG" ShowInCustomizationForm="True" Width="5%" Caption="TELEFONO" VisibleIndex="5"></dx:GridViewDataTextColumn>
                                                                                                                                                                </Columns>
                                                                                                                                                                </dx:GridViewBandColumn>
                                                                                                                                                </Columns>
                                                                                                                                                        <SettingsEditing Mode="Inline">
                                                                                                                                                </SettingsEditing>
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
                                                                                                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"  
                                                                                                                                        DeleteCommand="DELETE FROM [QA_MENSAJERIA] WHERE [ID_QA_MSG] = @ID_QA_MSG" 
                                                                                                                                        InsertCommand="INSERT INTO [QA_MENSAJERIA] ([NOMBRE_MSG], [CARGO_MSG], [MAIL_MSG], [FONO_MSG], [ID_ACC_PLT], [CRT_GENERA_ACC], [CRT_VB_ACC], [CRT_RECHAZA_ACC]) VALUES (@NOMBRE_MSG, @CARGO_MSG, @MAIL_MSG, @FONO_MSG, @ID_ACC_PLT, @CRT_GENERA_ACC, @CRT_VB_ACC, @CRT_RECHAZA_ACC)" 
                                                                                                                                        SelectCommand="SELECT * FROM [QA_MENSAJERIA] WHERE ([ID_ACC_PLT] = @ID_ACC_PLT)" 
                                                                                                                                        UpdateCommand="UPDATE [QA_MENSAJERIA] SET [NOMBRE_MSG] = @NOMBRE_MSG, [CARGO_MSG] = @CARGO_MSG, [MAIL_MSG] = @MAIL_MSG, [FONO_MSG] = @FONO_MSG, [ID_ACC_PLT] = @ID_ACC_PLT, [CRT_GENERA_ACC] = @CRT_GENERA_ACC, [CRT_VB_ACC] = @CRT_VB_ACC, [CRT_RECHAZA_ACC] = @CRT_RECHAZA_ACC WHERE [ID_QA_MSG] = @ID_QA_MSG">
                                                                                                                                         <DeleteParameters>
                                                                                                                                             <asp:Parameter Name="ID_QA_MSG" Type="Int32" />
                                                                                                                                         </DeleteParameters>
                                                                                                                                         <InsertParameters>
                                                                                                                                             <asp:Parameter Name="NOMBRE_MSG" Type="String" />
                                                                                                                                             <asp:Parameter Name="CARGO_MSG" Type="String" />
                                                                                                                                             <asp:Parameter Name="MAIL_MSG" Type="String" />
                                                                                                                                             <asp:Parameter Name="FONO_MSG" Type="String" />
                                                                                                                                             <asp:SessionParameter Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                                                                                             <asp:Parameter Name="CRT_GENERA_ACC" Type="Int32"  DefaultValue="0" />
                                                                                                                                             <asp:Parameter Name="CRT_VB_ACC" Type="Int32"  DefaultValue="0" />
                                                                                                                                             <asp:Parameter Name="CRT_RECHAZA_ACC" Type="Int32"  DefaultValue="0"/>
                                                                                                                                         </InsertParameters>
                                                                                                                                         <SelectParameters>
                                                                                                                                             <asp:SessionParameter Name="ID_ACC_PLT" SessionField="ID_ACC_PLT" Type="Int32" />
                                                                                                                                         </SelectParameters>
                                                                                                                                         <UpdateParameters>
                                                                                                                                             <asp:Parameter Name="NOMBRE_MSG" Type="String" />
                                                                                                                                             <asp:Parameter Name="CARGO_MSG" Type="String" />
                                                                                                                                             <asp:Parameter Name="MAIL_MSG" Type="String" />
                                                                                                                                             <asp:Parameter Name="FONO_MSG" Type="String" />
                                                                                                                                             <asp:Parameter Name="ID_ACC_PLT" Type="Int32" />
                                                                                                                                             <asp:Parameter Name="CRT_GENERA_ACC" Type="Int32" />
                                                                                                                                             <asp:Parameter Name="CRT_VB_ACC" Type="Int32" />
                                                                                                                                             <asp:Parameter Name="CRT_RECHAZA_ACC" Type="Int32" />
                                                                                                                                             <asp:Parameter Name="ID_QA_MSG" Type="Int32" />
                                                                                                                                         </UpdateParameters>
                                                                                                                                     </asp:SqlDataSource>
                                                                                                                        </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                               
                                                                        </div>
                                </div>  <!-- FIN wizard-content panel -->
                     </div> <!-- FIN PANEL BODY -->
				
					 
		                      
    </div>   <!-- FIN PANEL PRINCIPAL -->

                      
    
         <script type="text/javascript" charset="utf-8">
                             jQuery(document).ready(function ($) {
                                              /*boton siguiente paso 3 al 4 */
                                              $('#validaObservacion').click(function (e) {
                                                  $('#countdown2').hide();
                                                  $('#countdown').show();
                                                  e.preventDefault();
                                                  var countdown = $("#countdown").countdown360({
                                                      radius: 60,
                                                      seconds: 10,
                                                      fontColor: '#FFFFFF',
                                                      fillStyle: "#17649A",
                                                      strokeStyle: "#008080",
                                                      autostart: false,
                                                      onComplete: function () {

                                                          $('#nextAuto').click();
                                                          $('#countdown').hide();
                                                          $('#countdown2').show();

                                                      }
                                                  });

                                                  countdown.start();

                                              });

                                              jQuery(document).ready(function ($) {
                                                  /*boton siguiente paso 3 al 4 texto*/
                                                  $('#validaObservacion2').click(function (e) {
                                                      $('#countdown2').hide();
                                                      $('#countdown').show();
                                                      e.preventDefault();
                                                      var countdown = $("#countdown").countdown360({
                                                          radius: 60,
                                                          seconds: 10,
                                                          fontColor: '#FFFFFF',
                                                          fillStyle: "#17649A",
                                                          strokeStyle: "#008080",
                                                          autostart: false,
                                                          onComplete: function () {

                                                              $('#nextAuto').click();
                                                              $('#countdown').hide();
                                                              $('#countdown2').show();

                                                          }
                                                      });

                                                      countdown.start();

                                                  });
                                              });
                                          });

		  </script>
    <script>
         $("#modalOpen").on("click", function (e) {
                e.preventDefault();
        });
    </script>
        <script>

            



              $(document).ready(function () {
                  //alert('aaaa');
                  //$("#modal").iziModal();
                   $('.modal').each(function () {
                    var src = $(this).find('iframe').attr('src');
                    $(this).on('click', function () {
                        $(this).find('iframe').attr('src', '');
                        $(this).find('iframe').attr('src', src);
                    });
                  });
                   $("#body_GuardarPaso_1").click(function () {
                       document.getElementById("datosTop").style.display = "block";
                       var a = $('#body_ddlProyectos_VI').val();
                       var codPlt = $('#body_codigotexto_I').val();
                       var nomPlt = $('#body_txtnombre_I').val();
                       var idAct = $('#body_dllActividad_VI').val();
                       //var idEta = $('#body_txtEtapa_I').val();
                       var obs = $('#body_txtMemPbservaciones_I').val();
                      
                       var datos = "{'a':'" + a + "','codPlt':'" + codPlt + "','nomPlt':'" + nomPlt + "','idAct':'" + idAct + "','obs':'" + obs + "' }";
                       //alert(datos);
                       $.ajax({
                           type: "POST",
                           url: "RegistroCalidadIngreso.aspx/guardaPaso_1",
                           data: datos,
                           contentType: "application/json; charset=utf-8",
                           dataType: "json",
                           success: function (response) {
                              
                           },
                           failure: function (response) {
                               console.log(response.d);
                               alert(response.d);
                           }
                       });
                   });
                   $("#OnMyButtonClick").click(function () {
                      
                       var txtgrupo = $('#body_txtNuevoGrupo').val();

                      
                       var actionData = "{'nombreGrupo':'" + txtgrupo + "'}";
                       
                       $.ajax({
                           type: "POST",
                           url: "RegistroCalidadIngreso.aspx/guardaGrupo",
                           data: actionData,
                           contentType: "application/json; charset=utf-8",
                           dataType: "json",
                           success: function (response) {
                               $('#modalGrupo').modal('hide');
                               //document.getElementById("body_grillaCheck").submit();

                           },
                           failure: function (response) {
                               console.log(response.d);
                           }
                       });





                   });


               
              });







 </script>
    <script src="jquery.countdown.js"     type="text/javascript" charset="utf-8"></script>
    <script src="jquery.countdown.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="jquery.countdown360.js"  type="text/javascript" charset="utf-8"></script>


    <script>
            $("#paso1btn").click(function () {
                document.getElementById("datosTop").style.display = "block";
            });

            $("#paso2btn").click(function () {
                document.getElementById("datosTop").style.display = "block";
            });
    </script>

</asp:Content>
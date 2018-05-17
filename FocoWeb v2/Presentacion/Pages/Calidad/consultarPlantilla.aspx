<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="consultarPlantilla.aspx.vb" Inherits="Presentacion.Formulario_web18" %>
<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="../../assets/stylesheets/DragAndDrop.css" rel="stylesheet" />
    <link href="../../CSS/animate.css" rel="stylesheet" />
    <link href="../../assets/stylesheets/pace-theme-flash.css" rel="stylesheet" />
    <script src="../../assets/javascripts/pace.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="../../assets/javascripts/bootstrap-notify.min.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body"  runat="server">
    <div class ="page-profile">
    <div class="profile-full-name">
			<span class="text-semibold">
             <%--  <b><dx:ASPxLabel ID="lblCodigoPlantilla1" runat="server" Text="" Font-Bold="True" Font-Size="Large"></dx:ASPxLabel></b> </span>--%>
               <h3>Creación de registros de calidad </h3>
              </span>
		</div>
	 	<div class="profile-row">
			<div class="left-col">
				<div class="profile-block">
					<div class="panel profile-photo">
						<img src="../../assets/images/logoBeltec2.png" />
					</div><br>
					<%--<a href="#" class="btn btn-success"><i class="fa fa-check"></i>&nbsp;&nbsp;Crear Registro</a>&nbsp;&nbsp;
					<a href="#" class="btn"><i class="fa fa-comment"></i></a>--%>
				</div>
				
				<div class="panel panel-transparent">
					<div class="panel-heading">
						<span class="panel-title">INFO. DE LA PLANTILLA </span>
					</div>
                    <div class="list-group ">
                        <a href="#" class="list-group-item ">
                             <p class="list-group-item-heading text-left text-xs"><i class="far fa-file-powerpoint"></i>&nbsp;&nbsp;<b>Plantilla:</b></p>
                             <p class ="list-group-item-text text-left text-xs" ><b><dx:ASPxLabel ID="lblCodigoPlantilla" runat="server" ></dx:ASPxLabel></b></p>
                             <p><dx:ASPxLabel ID="lblNombrePLantilla" runat="server" Text="ASPxLabel" Font-Size="small"></dx:ASPxLabel></p></a>
                                
                        <a href="#" class="list-group-item ">
                             <p class="list-group-item-heading text-left text-xs"><i class="far fa-building "></i>&nbsp;&nbsp;<b>Proyecto:</b></p>
                             <p class ="list-group-item-text text-left text-xs" ><asp:Label ID="lblNombreObra" runat="server" Text=""></asp:Label></p></a>
                            
                        <a href="#" class="list-group-item">
                              <p class="list-group-item-heading text-left text-xs"><i class="far fa-calendar-check"></i>&nbsp;&nbsp;<b>Actividad:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblActividad" runat="server" Text=""></asp:Label></p>
                            </a>
                        <a href="#" class="list-group-item">
                               <p class="list-group-item-heading text-left text-xs"><i class="fas fa-angle-right"></i>&nbsp;&nbsp;<b>Etapa:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblEtapa" runat="server" Text=""></asp:Label></p>
                            </a>
                            <a href="#" class="list-group-item ">
                              <p class="list-group-item-heading text-left text-xs"><i class="far fa-comments"></i>&nbsp;&nbsp;<b>obs.:</b></p>
                              <p class="list-group-item-text text-left text-xs"><asp:Label ID="lblObs" runat="server" Text=""></asp:Label></p>
                            </a>
                          </div>


					
				</div>

				<div class="panel panel-transparent">
					<div class="panel-heading">
						<span class="panel-title">Estadisticas</span>
					</div>
					<ul class="list-group ">
                        <li class="list-group-item">Generadas <span class="badge">3</span></li>
                        <li class="list-group-item">Aprobadas <span class="badge">12</span></li>
                        <li class="list-group-item">Pendientes <span class="badge">5</span></li>
                        <li class="list-group-item">Con fallos <span class="badge">3</span></li>
                        
                      </ul>
				</div>

			<%--	<div class="panel panel-transparent profile-skills">
					<div class="panel-heading">
						<span class="panel-title">Skills</span>
					</div>
					<div class="panel-body">
						<span class="label label-primary">UI/UX</span>
						<span class="label label-primary">Web design</span>
						<span class="label label-primary">Photoshop</span>
						<span class="label label-primary">HTML</span>
						<span class="label label-primary">CSS</span>
					</div>
				</div>

				<div class="panel panel-transparent">
					<div class="panel-heading">
						<span class="panel-title">Social</span>
					</div>
					<div class="list-group">
						<a href="#" class="list-group-item"><i class="profile-list-icon fa fa-twitter" style="color: #4ab6d5"></i> @dsteiner</a>
						<a href="#" class="list-group-item"><i class="profile-list-icon fa fa-facebook-square" style="color: #1a7ab9"></i> Denise Steiner</a>
						<a href="#" class="list-group-item"><i class="profile-list-icon fa fa-envelope" style="color: #888"></i> dsteiner@example.com</a>
					</div>
				</div>--%>

			</div>
			<div class="right-col">

				<hr class="profile-content-hr no-grid-gutter-h">
				
				<div class="profile-content">

					<ul id="profile-tabs" class="nav nav-tabs">
						<li class="active">
							<a href="#profile-tabs-board" data-toggle="tab"><i class ="fas fa-map-marker-alt"></i>&nbsp;&nbsp;Selecciona tus usuarios responsables y los recintos asociados</a>
						</li>
					</ul>

					<div class="tab-content tab-content-bordered panel-padding">
						<div class="tab-pane panel no-padding no-border fade in active" id="profile-tabs-board">

                             <div class="panel ">
                                       <div class="panel-heading panel-dark">
                                            <span class="panel-title"><i class="far fa-check-square fa-2x"></i>&nbsp;&nbsp;Selecciona tus recintos </span>
                                       </div>
                                       <div class="panel-body ">
                                       <%--     <script type="text/javascript">
                                                function OnCheckedChanged(s, e) {
                                                    alert(parent.GetNode(0).GetChecked());
                                                            label.SetText("Checked nodes:");
                                                            ListCheckedNodes(s);
                                                        }
    
                                                        function ListCheckedNodes(parent){    
                                                            for (var i=0; i < parent.GetNodeCount(); i++){
                                                                if (parent.GetNode(i).GetChecked()){
                                                                   label.SetText(label.GetText() + " " + parent.GetNode(i).GetText());    
                                                                }
                                                                if (parent.GetNode(i).GetNodeCount() != 0){
                                                                   ListCheckedNodes(parent.GetNode(i));
                                                                }
                                                            }
                                                }
                                                </script>--%>
                                            <script type="text/javascript">
                                                        function treeUcos_CustomDataCallback(s, e) {
                                                            document.getElementById('treeListCountCell').innerHTML = e.result;
                                                        }
                                                        function treeUcos_SelectionChanged(s, e) {

                                                            window.setTimeout(function () { s.PerformCustomDataCallback(''); }, 0)

                                                            
                                                        }
                                                        
                                                            function OnSelectedIndexChanged(s, e) {
                                                                lista.PerformCallback(s.GetValue());
                                                           }
    </script>
 
                                           
                                           
                                           <dx:ASPxTreeList ClientInstanceName="lista"   SettingsExport-ExpandAllNodes ="true"  ID="treeUcos" runat="server" AutoGenerateColumns="False" 
                                                   EnablePagingCallbackAnimation="True" EnableTheming="True" KeyFieldName="ID_UCO" 
                                                  ParentFieldName="UCO_SUP" PreviewFieldName="NOMBRE_UCO" Theme="MaterialCompact" Width="100%" SummaryText="Elementos Selecionados :" DataCacheMode="Disabled">
                                                        <ClientSideEvents SelectionChanged="treeUcos_SelectionChanged" CustomDataCallback="treeUcos_CustomDataCallback" />
                                                    <Summary>
                                                        <dx:TreeListSummaryItem FieldName="Budget" ShowInColumn="RECINTOS" SummaryType="Custom" />
                                                    </Summary>
                                                  <Columns>
                                                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="ID_UCO" ReadOnly="True" ShowInCustomizationForm="True" ShowInFilterControl="Default" VisibleIndex="1">
                                                    </dx:TreeListTextColumn>
                                                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="NIVEL" ReadOnly="True" ShowInCustomizationForm="True" ShowInFilterControl="Default" Visible="False" VisibleIndex="3">
                                                    </dx:TreeListTextColumn>
                                                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="NOMBRE_UCO" ReadOnly="True" ShowInCustomizationForm="True" ShowInFilterControl="Default" VisibleIndex="0" Caption="RECINTOS" Width="70%">
                                                    </dx:TreeListTextColumn>
                                                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="UCO_SUP" ReadOnly="True" ShowInCustomizationForm="True" ShowInFilterControl="Default" Visible="False" VisibleIndex="4">
                                                    </dx:TreeListTextColumn>
                                                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="ID_TIP" ReadOnly="True" ShowInCustomizationForm="True" ShowInFilterControl="Default" Visible="False" VisibleIndex="5">
                                                    </dx:TreeListTextColumn>
                                                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="ID_TUC" ReadOnly="True" ShowInCustomizationForm="True" ShowInFilterControl="Default" Visible="False" VisibleIndex="6">
                                                    </dx:TreeListTextColumn>
                                                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="JERARQUIA" ReadOnly="True" ShowInCustomizationForm="True" ShowInFilterControl="Default" Visible="False" VisibleIndex="7">
                                                    </dx:TreeListTextColumn>
                                                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="SECUENCIA" ReadOnly="True" ShowInCustomizationForm="True" ShowInFilterControl="Default" Visible="False" VisibleIndex="8">
                                                    </dx:TreeListTextColumn>
                                                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="NOMBRE_TIP" ReadOnly="True" ShowInCustomizationForm="True" ShowInFilterControl="Default" VisibleIndex="2" Caption="TIPOLOGIAS" Width="30%">
                                                    </dx:TreeListTextColumn>
                                                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="PLANO" ReadOnly="True" ShowInCustomizationForm="True" ShowInFilterControl="Default" Visible="False" VisibleIndex="9">
                                                    </dx:TreeListTextColumn>
                                                    <dx:TreeListTextColumn AutoFilterCondition="Default" FieldName="TIPOUCO" ReadOnly="True" ShowInCustomizationForm="True" ShowInFilterControl="Default" Visible="False" VisibleIndex="10">
                                                    </dx:TreeListTextColumn>
                                                   
                                                       <dx:TreeListDataColumn FieldName="Location" >
                                                            <GroupFooterCellTemplate>
                                                                Seleccionados:
                                                            </GroupFooterCellTemplate>
                                                            <FooterCellTemplate>
                                                                total Seleccionados:
                                                            </FooterCellTemplate>
                                                        </dx:TreeListDataColumn>
                                                        <dx:TreeListDataColumn FieldName="Budget"  />
                                                </Columns>
                                                        <Settings ShowFilterRowMenu="True" ShowGroupFooter="True" ShowHeaderFilterButton="True" ScrollableHeight="300" VerticalScrollBarMode="Auto" EnableFilterControlPopupMenuScrolling="True" GridLines="Both" ShowFilterRow="True" />
                                                        <SettingsBehavior AllowAutoFilter="False" SortMode="DisplayText" enablecustomizationwindow="True"></SettingsBehavior>

                                                        <SettingsCustomizationWindow PopupHorizontalAlign="RightSides" PopupVerticalAlign="BottomSides"></SettingsCustomizationWindow>

                                                                <SettingsSelection Enabled="True" />
                                                                <SettingsEditing AllowNodeDragDrop="True" />

                                                        <SettingsPopupEditForm VerticalOffset="-1"></SettingsPopupEditForm>

                                                                <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                                                                <SettingsSearchPanel ColumnNames="NOMBRE_UCO" EditorNullTextDisplayMode="UnfocusedAndFocused" HighlightResults="False" ShowClearButton="True" Visible="True" />

                                                        <SettingsPopup>
                                                        <EditForm VerticalOffset="-1"></EditForm>
                                                        </SettingsPopup>

                                                    <SettingsExport ExpandAllNodes="True"></SettingsExport>
                                                   <Styles>
                                                        <AlternatingNode Enabled="True" /> 
                                                        <GroupFooterCell HorizontalAlign="Right" Font-Bold="true" />
                                                        <FooterCell HorizontalAlign="Right" Font-Bold="true" />
                                                    </Styles>
                                                 
                                                            </dx:ASPxTreeList>

                                        </div>
                                </div>
                            
                            <div class="note note-success">
					                <h4 class="note-title">Recintos seleccionados</h4>
					                <table class="OptionsTable">
                                                    <tr>
                                                        <td>
                                                            <i class="fas fa-check-square" style="color:cadetblue "></i>&nbsp;&nbsp;<dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="cant. Recintos :" />
                                                        </td>
                                                        <td id="treeListCountCell">
                                                            <asp:Literal ID="countLiteral" runat="server" />
                                                        </td>
                                                    </tr>
                                                </table>
				                </div>








                             <script type="text/javascript">
                                                            function OnBatchEditEndEditing(s, e) {
                                                                window.setTimeout(function () {

                                                                    var index = e.visibleIndex;
                                                                    var userAdd = '<%= myUsuarios.ClientID %>';
                                                                   // var col = listavertical.GetColumnByField("USUARIOS");
                                                                    //var res = listavertical.batchEditApi.GetCellValue(index, "USUARIOS", false);
                                                                    var str1 = document.getElementById(userAdd).value;
                                                                    var str2 = listavertical.batchEditApi.GetCellValue(index, "USUARIOS", false) + "-";
                                                                    var res = str1.concat(str2);

                                                                    
                                                                    document.getElementById(userAdd).value = res;

                                                                  //  document.getElementById("myUsuarios").val = res
                                                                     
                                                                //    alert(document.getElementById(userAdd).value);

                                                                }, 10);
                                                               
                                                               
                                                            }
                                                         
                            </script>
                        <div class="panel ">
                                       <div class="panel-heading">
                                            <span class="panel-title"><i class="fas fa-users fa-2x"></i>&nbsp;&nbsp;Selecciona los revisores </span>
                                       </div>
                                       <div class="panel-body">
                                        
                                             <dx:ASPxVerticalGrid  ClientInstanceName ="listavertical"  ID="ASPxVerticalGrid1" runat="server" AutoGenerateRows="False" DataSourceID=""   EnableTheming="True" KeyFieldName="ID_PLT_VB" Theme="MaterialCompact" Width="100%">
                                                <ClientSideEvents  BatchEditEndEditing="OnBatchEditEndEditing" />
                                                 
                                                 <Rows>
                                        <dx:VerticalGridCommandRow Fixed="True" VisibleIndex="0" Visible="False">
                                            <RecordStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True">
                                            </RecordStyle>
                                        </dx:VerticalGridCommandRow>
                                        <dx:VerticalGridTextRow FieldName="ID_PLT_VB" Visible="False" VisibleIndex="6">
                                        </dx:VerticalGridTextRow>
                                        <dx:VerticalGridTextRow FieldName="ID_ACC_PLT" VisibleIndex="7" Visible="False">
                                        </dx:VerticalGridTextRow>
                                        <dx:VerticalGridTextRow FieldName="ESTADO_VB" VisibleIndex="8" Visible="False">
                                        </dx:VerticalGridTextRow>
                                        <dx:VerticalGridTextRow FieldName="VB_PAPEL" Visible="False" VisibleIndex="9">
                                        </dx:VerticalGridTextRow>
                                        <dx:VerticalGridTextRow FieldName="VB_DIGITAL" Visible="False" VisibleIndex="10">
                                        </dx:VerticalGridTextRow>
                                        <dx:VerticalGridTextRow FieldName="ORDEN_VB" Visible="False" VisibleIndex="11">
                                        </dx:VerticalGridTextRow>
                                        <dx:VerticalGridTextRow FieldName="CORREOS_VB" VisibleIndex="12" Visible="False" Caption="MAIL DE AVISO">
                                        </dx:VerticalGridTextRow>
                                        <dx:VerticalGridCategoryRow Caption="DEFINICIÓN DE REVISIÓN" Fixed="True" VisibleIndex="1">
                                            <CategoryStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                            </CategoryStyle>
                                            <Rows>
                                                <dx:VerticalGridTextRow Caption="ORDEN DE REVISIÓN" FieldName="ORDEN_STR" ReadOnly="True" VisibleIndex="0">
                                                    <Settings ShowEditorInBatchEditMode="False" />
                                                    <BatchEditModifiedCellStyle Wrap="False">
                                                    </BatchEditModifiedCellStyle>
                                                    <HeaderStyle VerticalAlign="Middle" Wrap="True" HorizontalAlign="Left" />
                                                    <RecordStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True">
                                                    </RecordStyle>
                                                </dx:VerticalGridTextRow>
                                                <dx:VerticalGridTextRow Caption="REVISOR" FieldName="CARGO_VB" ReadOnly="True" VisibleIndex="1">
                                                    <Settings ShowEditorInBatchEditMode="False" />
                                                    <HeaderStyle VerticalAlign="Middle" Wrap="True" HorizontalAlign="Left" />
                                                    <RecordStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True">
                                                    </RecordStyle>
                                                </dx:VerticalGridTextRow>
                                                <dx:VerticalGridTextRow Caption="ROLES" FieldName="ROL" ReadOnly="True" VisibleIndex="2">
                                                    <Settings ShowEditorInBatchEditMode="False" />
                                                    <HeaderStyle VerticalAlign="Middle" Wrap="True" HorizontalAlign="Left" />
                                                    <RecordStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True">
                                                    </RecordStyle>
                                                </dx:VerticalGridTextRow>
                                            </Rows>
                                        </dx:VerticalGridCategoryRow>
                                        <dx:VerticalGridTokenBoxRow FieldName="USUARIOS" VisibleIndex="5" Height="100">
                                            <PropertiesTokenBox ClientInstanceName ="editorClientId" AllowMouseWheel="True"  DataSourceID="sqlUsuarios" Height="100%" TextField="nombre_Usu" Tokens="" ValueField="nombre_Usu" ValueSeparator=";" AnimationType="Slide">
                                                <Items>
                                                    <dx:ListEditItem Text="TODOS" Value="-1" />
                                                </Items>
                                                <Style HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True">
                                                </Style>
                                            </PropertiesTokenBox>
                                            <HeaderStyle VerticalAlign="Middle" Wrap="True" HorizontalAlign="Left" />
                                            <RecordStyle ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True">
                                            </RecordStyle>
                                        </dx:VerticalGridTokenBoxRow>
                                    </Rows>
                                    <SettingsPager Mode="ShowPager" Visible="False"></SettingsPager>
                                    <SettingsEditing Mode="Batch">
                                        <BatchEditSettings AllowRegularDataItemTemplate="True" StartEditAction="Click" ShowConfirmOnLosingChanges="False" />
                                    </SettingsEditing>
                                          <SettingsCommandButton>
                                                            <NewButton Text=" " Image-IconID="actions_add_16x16gray"  >
                                                                <%--<Styles>
                                                                            <Style CssClass="fas fa-angle-double-right fa-2x"></Style>
                                                                   </Styles>--%>
                                                                 <Image  ToolTip="nuevo" ></Image>
                                                           </NewButton>
                                                             <EditButton    Text =" " Image-IconID ="edit_edit_32x32gray">   
                                                                    <Image  ToolTip="Editar" ></Image>
                                                             </EditButton>
                                                          <UpdateButton  Text =" "    >
                                                                    <Image  ToolTip="Guardar" ></Image>
                                                          </UpdateButton>
                                                          <CancelButton Text =" "   >
                                                                  <Image  ToolTip="cancelar" ></Image>
                                                          </CancelButton>
                                                           <DeleteButton Text =" " Image-IconID ="actions_delete_16x16gray"  >
                                                                <Image  ToolTip="eliminar" ></Image>
                                                           </DeleteButton>
                                       </SettingsCommandButton>
                                    <SettingsDataSecurity AllowDelete="False" AllowInsert="False" />
                                    <Settings RecordWidth="300"  ShowCategoryIndents ="false"/>
                                    <SettingsPager EnableAdaptivity="true" />
                                </dx:ASPxVerticalGrid>
                                      </div>
                              
                        </div>
                            <div class="col-md-12" style="text-align:center">
                                      <div class="form-group">
                                          
                                                        <dx:BootstrapButton      ID="btnGuardarRecintos" runat="server" AutoPostBack="false" Text="Guardar registros" CssClasses-Icon="fas fa-save" CssClasses-Control ="btn btn-primary"   ></dx:BootstrapButton> 
                                          
                                      </div>       
                                </div>

                                          <%--  <div class="panel">
					                                
					                                <div class="panel-body buttons-with-margins" id="page-alerts-dark-demo">
						                                      <button data-type="success" data-text="<strong>Bien hecho!</strong>Tus registros fueron creados" class="btn btn-small btn-primary auto-close-alert">Guardar Registros</button>
						                               
					                                </div>

				                                 </div>--%>





                                                    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>"--%> 
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                                        SelectCommand="SP_QA_ACC_PLT_LISTADO_SECTORES" SelectCommandType="StoredProcedure">
                                                        <SelectParameters>
                                                             <asp:SessionParameter SessionField="ID_ACC_PLT" Name="ID_ACC_PLT" Type="Int32"  ></asp:SessionParameter>
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>


						
						 
                            <%--<asp:SqlDataSource ID="sqlRol_vb" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>"--%>
                            <asp:SqlDataSource ID="sqlRol_vb" runat="server"
                                  SelectCommand="SP_WS_TRAER_VB" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="342" Name="ID_ACC_PLT" QueryStringField ="idPlantilla" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                         <%--   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" --%>
<%--                             <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                SelectCommand="SP_WS_TRAER_ROL_USU" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="68" Name="ID_OBR" SessionField="idObra" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>--%>

                             <asp:SqlDataSource ID="sqlUsuarios" runat="server" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [USUARIOS] WHERE [id_Usu] = @original_id_Usu AND [nombre_Usu] = @original_nombre_Usu" InsertCommand="INSERT INTO [USUARIOS] ([nombre_Usu]) VALUES (@nombre_Usu)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id_Usu], [nombre_Usu] FROM [USUARIOS] where estado_usu=1" UpdateCommand="UPDATE [USUARIOS] SET [nombre_Usu] = @nombre_Usu WHERE [id_Usu] = @original_id_Usu AND [nombre_Usu] = @original_nombre_Usu">                            
                                 <DeleteParameters>
                                     <asp:Parameter Name="original_id_Usu" Type="Int64" />
                                     <asp:Parameter Name="original_nombre_Usu" Type="String" />
                                 </DeleteParameters>
                                 <InsertParameters>
                                     <asp:Parameter Name="nombre_Usu" Type="String" />
                                 </InsertParameters>
                                 <UpdateParameters>
                                     <asp:Parameter Name="nombre_Usu" Type="String" />
                                     <asp:Parameter Name="original_id_Usu" Type="Int64" />
                                     <asp:Parameter Name="original_nombre_Usu" Type="String" />
                                 </UpdateParameters>
                             </asp:SqlDataSource>
                            <br />

						
						</div> <!-- / .tab-pane -->
					
					</div> <!-- / .tab-content -->
				</div>
			</div>
		</div>
      
                             <div class="panel ">
                                       <div class="panel-body ">
                                  
                                           <div id="modalrecintos" class="modal animated  pulse" tabindex="-1" role="dialog" style="display: none;">
					                                <div class="modal-dialog">
						                                <div class="modal-content">
							                                <div class="modal-header">
								                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								                                <h4 class="modal-title" id="myModalLabel">Recintos selecionados</h4>
							                                </div>
							                                <div class="modal-body">
							                                             <ul class="list-group">
										                                <li class="list-group-item">
											                                <span class="badge badge-primary">
                                                                                <asp:Label ID="lblcantseleccionados" runat="server" Text=""></asp:Label></span>
											                                Recintos selecionados
										                                </li>
										                                <li class="list-group-item">
											                                <span class="badge badge-info">14</span>
											                                Dapibus ac facilisis in
										                                </li>
										                                <li class="list-group-item">
											                                <span class="badge badge-danger">11</span>
											                                Morbi leo risus
										                                </li>
										                                <li class="list-group-item">
											                                <span class="badge badge-success">3</span>
											                                Porta ac consectetur ac
										                                </li>
										                                <li class="list-group-item">
											                                <span class="badge badge-warning">7</span>
											                                Vestibulum at eros
										                                </li>
									                                </ul>


							                                </div> <!-- / .modal-body -->
							                                <div class="modal-footer">
								                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
								                                
							                                </div>
						                                </div> <!-- / .modal-content -->
					                                </div> <!-- / .modal-dialog -->
				                           </div> <!-- /.modal -->
				                                <!-- / Modal -->


                                      <%--   <button data-toggle="modal" data-target="#modalrecintos" data-original-title="recintos selecionados" class="btn btn-primary" type="button"> <i class="fas fa-plus-circle rounded"></i></button>--%>


                                           

                                       </div>
                                 
                             
                             </div>
		                      
      
      </div>
    <input type="hidden" id="myUsuarios" value=""  runat="server"/>


         <script>
                                                      function ListaTemplate() {
                                                                myVar = setTimeout(function () { window.open('RegistrosCalidadListado.aspx', '_self'); }, 4000);
                                                            }

                                                            function myFuncionAlerta() {
                                                                var notify = $.notify('<strong>Guardando..</strong> no cierre esta pagina...', {
                                                                    allow_dismiss: false,
                                                                    showProgressbar: true,
                                                                    allow_dismiss: false
                                                                });

                                                                setTimeout(function () {
                                                                    notify.update({ 'type': 'success', 'message': '<strong>Listo...</strong> Su registro de calidad ha sido creado..!', 'progress': 25 });
                                                                }, 2500);
                                                                ListaTemplate();
                                                      }
                                                            $(document).ready(function () {
                                                                $("#body_GuardarPaso").click(function () {
                                                                    var res = document.getElementById("myUsuarios").value
                                                                    console.log(myUsuarios);
                                                                    var datos = "{'usuarios':'" + res + "' }";
                                                                    alert(datos);
                                                                    $.ajax({
                                                                        type: "POST",
                                                                        url: "ConsultarPlantilla.aspx/guardarRegistros",
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
                                                            });
 </script>
</asp:Content>

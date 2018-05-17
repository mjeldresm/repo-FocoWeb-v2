<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="RegistrosCalidadListado.aspx.vb" Inherits="Presentacion.Formulario_web110" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>

<%--      <style>
        /*.dropzone-box .fa.fa-cloud-upload{margin-left:350px;}
        .form-horizontal .has-feedback .form-control-feedback{right:0px;}
        .has-feedback:not(.form-group) .form-control-feedback {top: 5px;}
        .claseTest {background-color: #008c9e !important;font-weight: normal;font-size:10px;text-transform:uppercase;}
        .dxgvHeader, .dxgvHeader table{color:#F1F1F1;}
          .auto-style1 {
              height: 10px;
          }*/
          /*.auto-style1 {*/
           /*   height:20px;
          }+/
      </style>--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
     <script type="text/javascript">
         

            //if(IsCustomExportToolbarCommand(e.item.name)) {
            //    e.processOnServer=true;
            //    e.usePostBack=true;
            //}
       
        function IsCustomExportToolbarCommand(command) {
            return command == "CustomExportToXLS" || command == "CustomExportToXLSX";
        }
    </script><!-- Javascript -->
    <div class="navbar " id="filtros">
        <%--<div class="panel-heading" >
            <span>Filtros de Resgistro de calidad</span>
        </div>
          <div class="panel-body" >--%>
                 <div class="col-sm-3">
                            <div class="input-group input-group-sm ">
                                    <div class="input-group">
									    <span class="label label-success"><i class="fas fa-clone"></i>&nbsp;&nbsp;Etapa&nbsp;&nbsp;</span>
                                    </div>
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                   <ContentTemplate>
                                      <div class="drop-down">

                                          <dx:ASPxTokenBox ID="tknEtapa" runat="server" AutoPostBack="true"
                                              AllowMouseWheel="True" DataSourceID="sqlEtapa"
                                              Tokens="" Theme="Moderno" ValueSeparator=";"
                                              TextField="Nombre" ValueField="Id" Width="100%"
                                              AnimationType="Auto" AutoResizeWithContainer="True"
                                              ShowShadow="False" HorizontalAlign="Justify"
                                              ListBoxStyle-HorizontalAlign="Justify" ListBoxStyle-VerticalAlign="Middle"
                                              ListBoxStyle-Wrap="True" LoadingPanelStyle-HorizontalAlign="Center"
                                              RightToLeft="Default" BorderLeft-BorderStyle="None" BorderRight-BorderStyle="None"
                                              BorderTop-BorderStyle="None" BorderBottom-BorderStyle="Solid">
                                                    </dx:ASPxTokenBox>
                                                                <asp:SqlDataSource runat="server" ID="sqlEtapa" SelectCommand="SP_WS_TRAER_ETAPA" SelectCommandType="StoredProcedure" >
                                                                <SelectParameters>
                                                                           <asp:SessionParameter Name="ID_OBR" SessionField="idObra" Type="Int64" DefaultValue ="68" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                          </div>
                                       </ContentTemplate>
                                    </asp:UpdatePanel>
                            </div>
                        </div>
                 <div class="col-sm-3">
                            <div class="input-group input-group-sm ">
                                    <div class="input-group">
									    <span class="label label-success"><i class="fas  fa-tasks"></i>&nbsp;&nbsp;Actividad&nbsp;&nbsp;</span>
                                    </div>
                                       <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                   <ContentTemplate>
                                        <div class="drop-down"> 
                                                <dx:ASPxTokenBox ID="tknActividad" runat="server" AutoPostBack ="true"
                                                                 AllowMouseWheel="True" DataSourceID="sqlActividad"
                                                                 Tokens="" Theme="Moderno" ValueSeparator=";" 
                                                                 textField="NOMBRE_ACT" ValueField="ID_QA_ACT" Width="100%" 
                                                                 AnimationType="Auto" AutoResizeWithContainer="True"
                                                                 ShowShadow="False" HorizontalAlign="Justify"
                                                                 ListBoxStyle-HorizontalAlign="Justify" ListBoxStyle-VerticalAlign="Middle"
                                                                 ListBoxStyle-Wrap="True" LoadingPanelStyle-HorizontalAlign="Center"
                                                                 RightToLeft="Default" BorderLeft-BorderStyle="None" BorderRight-BorderStyle="None"
                                                                 BorderTop-BorderStyle="None" BorderBottom-BorderStyle="Solid" >
                                                       </dx:ASPxTokenBox>
                                                <asp:SqlDataSource runat="server" ID="sqlActividad"  
                                                    SelectCommand="SP_WS_BUSCA_ACTIVIDAD" SelectCommandType="StoredProcedure" >
                                                    <SelectParameters>
                                                        <asp:SessionParameter Name="ID_OBR" SessionField="idObra" Type="Int64" DefaultValue ="68" />
                                                        <asp:ControlParameter ControlID="tknEtapa" Name="ETAPAS" PropertyName="Value" Type="String" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                        </div>  

                                                   </ContentTemplate>

                                    </asp:UpdatePanel>


                            </div>
                        </div>


                 <div class="col-sm-2">
                            <div class="input-group input-group-sm ">
                                    <div class="input-group">
									    <span class="label label-success"><i class="fas  fa-tasks"></i>&nbsp;&nbsp;Estado&nbsp;&nbsp;</span>
                                    </div>
                                             
                                       <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                   <ContentTemplate>
                                
                                 <div class="drop-down">
                                       <dx:ASPxTokenBox ID="tknEstado" runat="server" AutoPostBack="True"
                                           AllowMouseWheel="True" Width="100%"
                                           Tokens="" Theme="Moderno" ValueSeparator=";"
                                           TextField="ESTADO" ValueField="VALOR" AutoResizeWithContainer="True"
                                           ShowShadow="False" HorizontalAlign="Justify"
                                           ListBoxStyle-HorizontalAlign="Justify" ListBoxStyle-VerticalAlign="Middle"
                                           ListBoxStyle-Wrap="True" LoadingPanelStyle-HorizontalAlign="Center" BorderLeft-BorderStyle="None" BorderRight-BorderStyle="None"
                                           BorderTop-BorderStyle="None" BorderBottom-BorderStyle="Solid" DataSourceID="sqlEstados">
                                           <ListBoxStyle HorizontalAlign="Justify" VerticalAlign="Middle" Wrap="True">
                                           </ListBoxStyle>
                                           <LoadingPanelStyle HorizontalAlign="Center">
                                           </LoadingPanelStyle>
                                           <BorderLeft BorderStyle="None" />
                                           <BorderTop BorderStyle="None" />
                                           <BorderRight BorderStyle="None" />
                                           <BorderBottom BorderStyle="Solid" />
                                       </dx:ASPxTokenBox>
                                                        <asp:SqlDataSource ID="sqlEstados" runat="server"  SelectCommand="SP_WS_TRAE_ESTADOS_PROTOCOLOS" SelectCommandType="StoredProcedure"></asp:SqlDataSource>                                                       
                                     </div>
                                              </ContentTemplate>

                        

                                    </asp:UpdatePanel>



                            </div>
                        </div>
                 <div class="input-group input-group-sm ">
                                <dx:BootstrapButton ID="btn_Filtrar"  CssClasses-Control ="btn-info" CssClasses-Icon ="fas fa-filter"   runat="server" AutoPostBack="false" Text="filtrar registros" ></dx:BootstrapButton>
                   </div>
         <%-- </div>--%>

   </div>
     <div class="panel">  
                <div class="panel-heading">
					<span class="panel-title" style="color:#17649A"><b>LISTADO DE PROTOCOLOS ACTIVADOS.</b></span>
                     <div class="panel-heading-controls">
                  
                      <%--  <span class="panel-heading-text"><em>Activar Filtros de Busqueda </em>&nbsp;&nbsp;<span style="color: #ccc">|</span>&nbsp;&nbsp;</span>
                        <input type="checkbox" id="switcher-example-2" data-toggle="collapse" data-target="#collapseExample" aria-expanded="true" aria-controls="collapseExample" >&nbsp;&nbsp;
                      --%>
                     </div> <!-- / .panel-heading-controls -->
                </div>
				<div class="stat-panel">
					<div class="stat-row">
						<div class="col-sm-12">
                                      <div class="col-md-12">
                                          <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                                <dx:ASPxGridView 
                                                    ID="gridActividades" 
                                                    ClientInstanceName="grid" 
                                                    runat="server" 
                                                    AutoGenerateColumns="False" 
                                                    DataSourceID="sqlCalidad"
                                                    EnableTheming="True" 
                                                    KeyFieldName="ID_ACC_REG" 
                                                    Theme="Office365" 
                                                    Width="100%">
                                                    <Settings 
                                                        GridLines="Horizontal" 
                                                        VerticalScrollableHeight="500" />
                                                  <SettingsDataSecurity 
                                                      AllowDelete="False" 
                                                      AllowEdit="False" 
                                                      AllowInsert="False" />
                                                 <SettingsPager 
                                                     EnableAdaptivity="true" 
                                                     Position="Top" 
                                                     AlwaysShowPager="True" 
                                                     NumericButtonCount="25" />
                                                
                                              <SettingsBehavior />
                                                                 <ClientSideEvents CustomButtonClick="function(s, e) {
	                                                                 if(e.buttonID == 'editar'){
                                                                            
                                                                                                var rowVisibleIndex = e.visibleIndex;
                                                                                                var rowKeyValue = s.GetRowKey(rowVisibleIndex);
                                                                                               window.open('RegistroCalidadTrabajo.aspx?idRegistro='+ rowKeyValue , '_self');
                                                                                   }
                                                                                if(e.buttonID == 'imprimir'){
                                                                                                var rowVisibleIndex = e.visibleIndex;
                                                                                                var rowKeyValue = s.GetRowKey(rowVisibleIndex);
                                                                                               window.open('../Reportes/Reporte.aspx?idRegistro='+ rowKeyValue , '_blanck');
                                                                                   }
                                                                                if(e.buttonID == 'calidad'){
                                                                                                var rowVisibleIndex = e.visibleIndex;
                                                                                                var rowKeyValue = s.GetRowKey(rowVisibleIndex);
                                                                                               window.open('consultarplantilla.aspx?idPLantilla='+ rowKeyValue , '_self');
                                                                                   }
                                                                    


                                                                                    }"
                                                                     />
                                                                <Columns>
                                                                    <dx:GridViewCommandColumn VisibleIndex="0" Width="10%">
                                                                            <CustomButtons>
                                                                                   <dx:GridViewCommandColumnCustomButton ID ="editar" Text =" "  >
                                                                                   <%-- <Styles>
                                                                                        <Style CssClass="btn fas fa-pencil-alt"></Style>
                                                                                    </Styles>--%>
                                                                                       <Image IconID="edit_edit_32x32gray">
                                                                                       </Image>
                                                                                </dx:GridViewCommandColumnCustomButton>
                                                                                <dx:GridViewCommandColumnCustomButton id="imprimir" Text=" ">
                                                                                    <%--<Styles>
                                                                                        <Style CssClass="btn fas fa-print"></Style>
                                                                                    </Styles>--%>
                                                                                    <Image IconID="print_print_32x32gray" >
                                                                                    </Image>
                                                                                </dx:GridViewCommandColumnCustomButton>
                                                                            </CustomButtons>
                                                                    </dx:GridViewCommandColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="ID_ACC_REG" ReadOnly="True" VisibleIndex="1" Caption="ID" Width="5%">
                                                                        <EditFormSettings Visible="False" />
                                                                        <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                        <CellStyle BackColor="#FFFFCC" HorizontalAlign="Center" VerticalAlign="Middle">
                                                                        </CellStyle>
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="ESTADO_VB" Visible="False" VisibleIndex="6" ShowInCustomizationForm="True" Caption="ESTADO">
                                                                        <DataItemTemplate>
                                                                            <button class="btn btn-xs btn-warning"><span class="fas fa-asterisk"></span></button>
                                                                        </DataItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                                                                        <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                        </CellStyle>
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataDateColumn FieldName="FECHA_CREA" ShowInCustomizationForm="True" Visible="False" VisibleIndex="4">
                                                                    </dx:GridViewDataDateColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="NOMBRE_ETA" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="RECINTO / UBICACIÓN RECINTO" FieldName="NOMBRE_UCO" ShowInCustomizationForm="True" VisibleIndex="8" Width="25%">
                                                                        <DataItemTemplate>
                                                                            <table class="nav-justified">
                                                                                <tr>
                                                                                    <td class="auto-style1">
                                                                                        <asp:Label ID="lblEtapa" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text='<%# Eval("NOMBRE_UCO") %>'></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="auto-style1">
                                                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("RAIZ") %>'></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </DataItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                        <CellStyle HorizontalAlign="Left" VerticalAlign="Middle">
                                                                        </CellStyle>
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="NOMBRE_ACT" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="ETAPA / ACTIVIDAD" FieldName="ETAPA" ShowInCustomizationForm="True" VisibleIndex="7" Width="25%">
                                                                        <DataItemTemplate>
                                                                            <table class="nav-justified">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Label ID="lblEtapa" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text='<%# Eval("NOMBRE_ETA") %>'></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="auto-style1">
                                                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("NOMBRE_ACT") %>'></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </DataItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                        <CellStyle HorizontalAlign="Left" VerticalAlign="Middle">
                                                                        </CellStyle>
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn VisibleIndex="9" Caption="CREACIÓN  /  ULT. V°B°" ShowInCustomizationForm="True" Width="10%">
                                                                        <EditCellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                        </EditCellStyle>
                                                                        <DataItemTemplate>
                                                                            <table class="nav-justified">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("FECHA_CREA", "{0:d}") %>'></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("FECHA_ULT_VB", "{0:d}") %>'></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </DataItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                        <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                        </CellStyle>
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="DIAS EN iNV." FieldName="DIAS_DIF" ShowInCustomizationForm="True" VisibleIndex="10" Width="10%">
                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                        <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                        </CellStyle>
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="NIVEL DE V°B°" FieldName="AVANCE_VB" ShowInCustomizationForm="True" VisibleIndex="11" Width="10%">
                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                        <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                        </CellStyle>
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption=" " FieldName="ESTADO_VB" ShowInCustomizationForm="True" VisibleIndex="5" Width="10%">
                                                                        <PropertiesTextEdit DisplayFormatString="{0}">
                                                                        </PropertiesTextEdit>
                                                                        <DataItemTemplate>
                                                                            <table>
                                                                                <tr><td><div class="btn-toolbar" role="toolbar">
							                                                        <div class="btn-group">
								                                                        <asp:Image ID="nuevoReg" runat="server" ImageUrl="~/assets/images/new.png" />
                                                                                       <dx:ASPxImage ID="adjunto" runat="server" ShowLoadingImage="true"  EmptyImage-IconID="avigation_up_16x16" ></dx:ASPxImage>
								                                                        </div>
								                                                    </div>
                                                                                 </div></td></tr>
                                                                                <tr><td><div class="btn-toolbar" role="toolbar">   
                                                                                <div class="btn-group">
                                                                                   
                                                                                    </div>
                                                                                 </div></td></tr>
                                                                                
                                                                           </table>


                                                                        </DataItemTemplate>
                                                                        <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                                                                        </CellStyle>
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="REVISOR" VisibleIndex="12" Visible="False">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="NUM_ADJ" VisibleIndex="13" Visible="False">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="TOTAL_RB" Name="TOTAL_RB" VisibleIndex="14" Visible="False">
                                                                    </dx:GridViewDataTextColumn>
                                                                </Columns>
                                                                <Styles Header-Wrap="True">
                                                                    <Header Wrap="True">
                                                                    </Header>
                                                                     <AlternatingRow Enabled="true" />
                                                                    <SelectedRow BackColor="#FFFFCC">
                                                                    </SelectedRow>
                                                                </Styles>
                                                                  
                                                            </dx:ASPxGridView>
                                                            <asp:SqlDataSource ID="sqlCalidad" runat="server"  
                                                                SelectCommand="SP_WS_BUSCA_REGISTRO" 
                                                                SelectCommandType="StoredProcedure">
                                                                <SelectParameters>
                                                                    <asp:SessionParameter SessionField="idObra" Name="ID_OBR" Type="string"  ></asp:SessionParameter>
                                                                     <asp:ControlParameter ControlID="tknEtapa" Name="ETAPAS" PropertyName="Value" Type="String" DefaultValue=" " />
                                                                    <asp:ControlParameter ControlID="tknActividad" Name="PARTIDAS" PropertyName="Value"  Type="String" DefaultValue=" " />
                                                                    <asp:ControlParameter ControlID="tknEstado" Name="ESTADOS" PropertyName="Value" Type="String" DefaultValue=" " />
                                                  
                                                                    <asp:SessionParameter DefaultValue="" Name="ID_USU" SessionField="xUser" Type="Int32" />
                                                  
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                </ContentTemplate>

                                              <Triggers>
                                                     <asp:AsyncPostBackTrigger ControlID ="btn_Filtrar" /> 
                                              </Triggers>
                                          </asp:UpdatePanel>
                                        </div>
				    </div>
			    </div>
		    </div> 
	</div> 
    <asp:HiddenField ID="hEtapa" runat="server" />

 </asp:Content>

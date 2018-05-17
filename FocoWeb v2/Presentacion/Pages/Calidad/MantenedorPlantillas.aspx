<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="MantenedorPlantillas.aspx.vb" Inherits="Presentacion.Formulario_web17" %>
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
						<span class="panel-title" style="color:#17649A"><b>Mantenedor de Protocolos</b></span>
                        <div  class="panel-heading-controls"  >
							 <span class="panel-heading-text" ></span> 
						</div>
			        </div>
       
				<div class="panel-body">
                    <dx:ASPxGridView ID="grillaPlantilla" runat="server" Theme="MaterialCompact" Width="100%" DataSourceID="sqlPLantillas"></dx:ASPxGridView>
                    <asp:SqlDataSource runat="server" ID="sqlPLantillas"></asp:SqlDataSource>
                </div>
  </div>


</asp:Content>

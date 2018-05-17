﻿<%@ page language="vb" autoeventwireup="false" codebehind="initConfig2.aspx.vb" masterpagefile="~/Master/Main.Master" inherits="Presentacion.initConfig" %>

<%@ register assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="MainHeader" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content id="MainBody" contentplaceholderid="body" runat="server">
    <!-- .
    Bienvenido. 
    Configuración Inicial Foco en Obra
    File:initConfig.
-->
    

	
<div class="row">
			<div class="col-lg-12">
<script>
					init.push(function () {
						$('.ui-wizard-example').pixelWizard({
							onChange: function () {
								console.log('Current step: ' + this.currentStep());
							},
							onFinish: function () {
								// Disable changing step. To enable changing step just call this.unfreeze()
								this.freeze();
								console.log('Wizard is freezed');
								console.log('Finished!');
							}
						});

						$('.wizard-next-step-btn').click(function () {
							$(this).parents('.ui-wizard-example').pixelWizard('nextStep');
						});

						$('.wizard-prev-step-btn').click(function () {
							$(this).parents('.ui-wizard-example').pixelWizard('prevStep');
						});

						$('.wizard-go-to-step-btn').click(function () {
							$(this).parents('.ui-wizard-example').pixelWizard('setCurrentStep', 2);
						});

						$('#ui-wizard-modal').on('show.bs.modal', function (e) {
							var $modal = $(this),
							    $wizard = $modal.find('.ui-wizard-example'),
							    timer = null,
							    callback = function() {
							    	if (timer) clearTimeout(timer);
							    	if ($modal.hasClass('in')) {
							    		$wizard.pixelWizard('resizeSteps');
							    	} else {
							    		timer = setTimeout(callback, 10);
							    	}
							    };
							callback();
						});
					});
				</script>
				<!-- / Javascript -->
               
				<div class="panel">
					<div class="panel-heading">
						<h4 style="color:#17649A"><strong>CONFIGURACIÓN INICIAL</strong></h4>
					</div>
					<div class="panel-body">
						<div class="wizard ui-wizard-example">
							<div class="wizard-wrapper">
								<ul class="wizard-steps">
									<li data-target="#wizard-example-step1" >
										<span class="wizard-step-number">1</span>
										<span class="wizard-step-caption">
											BIENVENIDO!
											<span class="wizard-step-description">Hola! te agradecemos el preferir nuestro sistema de control.</span>
										</span>
									</li>
                                   
								</ul> <!-- / .wizard-steps -->
							</div> <!-- / .wizard-wrapper -->
							<div class="wizard-content panel">
								<div class="wizard-pane" id="wizard-example-step1">
									<%--This is step 1--%>
                                    <h1>Enhorabuena!</h1>
                                    <hr />
                                    
                                    <div class="row">
                                    <div class="col-md-3">
                                        <h4>Manos a la Obra</h4>
Has adquirido el mejor sistema de control de gestión de obras civiles, que de manera intuitiva te apoya usando haciendo uso de las mejores prácticas tanto de control de proyectos como informáticas.
      <br /><br /><h4>Con Foco en Obra podrás...</h4>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="stat-panel">
					<div class="stat-row">
						<!-- Info background, without padding, horizontally centered text, super large text -->
						<div class="stat-cell bg-info no-padding text-center text-slg">
							<i class="fas fa-chart-line"></i>
						</div>
					</div> <!-- /.stat-row -->
					<div class="stat-row">
						<!-- Bordered, without top border, horizontally centered text, large text -->
						<div class="stat-cell bordered no-border-t text-center text-sm">
							<strong>CONTROLAR COSTOS Y PLAZOS</strong>
							<br />CON CERTEZA
						</div>
					</div> <!-- /.stat-row -->
				</div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="stat-panel">
					<div class="stat-row">
						<!-- Info background, without padding, horizontally centered text, super large text -->
						<div class="stat-cell bg-info no-padding text-center text-slg">
							<i class="far fa-money-bill-alt"></i>
						</div>
					</div> <!-- /.stat-row -->
					<div class="stat-row">
						<!-- Bordered, without top border, horizontally centered text, large text -->
						<div class="stat-cell bordered no-border-t text-center text-sm">
							<strong>AHORRAR TIEMPO ADMINISTRATIVO</strong> <br />Y DINERO!
							
						</div>
					</div> <!-- /.stat-row -->
				</div>
                                    </div>
                                    <div class="col-md-3">
                                        <!-- Javascript -->
				<script>
                    init.push(function () {
                        $("#stats-sparklines-3").pixelSparkline([275, 490, 397, 487, 339, 403, 402, 312, 300], {
                            type: 'line',
                            width: '100%',
                            height: '50px',
                            fillColor: '',
                            lineColor: '#fff',
                            lineWidth: 2,
                            spotColor: '#ffffff',
                            minSpotColor: '#ffffff',
                            maxSpotColor: '#ffffff',
                            highlightSpotColor: '#ffffff',
                            highlightLineColor: '#ffffff',
                            spotRadius: 4,
                            highlightLineColor: '#ffffff'
                        });
                    });
				</script>
				<!-- / Javascript -->

				<div class="stat-panel">
					<div class="stat-row">
						<!-- Info background, small padding -->
						<div class="stat-cell bg-info padding-sm">
							<!-- Extra small text -->
							<div class="text-xs" style="margin-bottom: 5px;"><strong> REVISAR ESTADÍSTICAS</strong></div>
							<div class="stats-sparklines" id="stats-sparklines-3" style="width: 100%"></div>
						</div>
					</div> <!-- /.stat-row -->
					<div class="stat-row">
						<!-- Bordered, without top border, horizontally centered text -->
						<div class="stat-counters bordered no-border-t text-center">
							<!-- Small padding, without horizontal padding -->
							<div class="stat-cell col-xs-4 padding-sm no-padding-hr">
								<!-- Big text -->
								<span class="text-bg"><strong>10%</strong></span><br>
								<!-- Extra small text -->
								<span class="text-xs">UTILIDAD</span>
							</div>
							<!-- Small padding, without horizontal padding -->
							<div class="stat-cell col-xs-4 padding-sm no-padding-hr">
								<!-- Big text -->
								<span class="text-bg"><strong>110%</strong></span><br>
								<!-- Extra small text -->
								<span class="text-xs">PLAZO</span>
							</div>
							<!-- Small padding, without horizontal padding -->
							<div class="stat-cell col-xs-4 padding-sm no-padding-hr">
								<!-- Big text -->
								<span class="text-bg"><strong>95%</strong></span><br>
								<!-- Extra small text -->
								<span class="text-xs">PRODUC.</span>
							</div>
						</div> <!-- /.stat-counters -->
					</div> <!-- /.stat-row -->
				</div> <!-- /.stat-panel -->
<!-- /9. $EXAMPLE_RETWEETS_GRAPH -->
                                    </div>
                                    </div>
                                    <br>
								
								</div> <!-- / .wizard-pane -->
								<div class="wizard-pane" id="wizard-example-step2" style="display: none;">
									<div class="row">
			                            <div class="col-lg-12">
                <div class="row">
                    <div class="col-md-8">
                        <!-- 9. $BLOCK_STYLED_FORM =============================================================================

				Block styled form
-->
				<form action="#" class="panel form-horizontal">
					<div class="panel-heading">
						<h5><strong>INGRESA LA INFO EMPRESA</strong></h5>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">Nombre Empresa</label>
									<input type="text" name="nombre" class="form-control">
								</div>
							</div><!-- col-sm-6 -->
							<div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">Giro</label>
									<input type="text" name="giro" class="form-control">
								</div>
							</div><!-- col-sm-6 -->
						</div><!-- row -->
						
						<div class="row">
							
							<div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">RUT</label>
									<input type="text" name="rut" class="form-control">
								</div>
							</div><!-- col-sm-6 -->
                            <div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">Correo Electrónico</label>
									<input type="email" name="email" class="form-control">
								</div>
							</div><!-- col-sm-6 -->
						</div><!-- row -->
                        <div class="row">
							<div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">Dirección</label>
									<input type="text" name="adress" class="form-control">
								</div>
							</div><!-- col-sm-6 -->
							<div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">Teléfono</label>
									<input type="text" name="phone" class="form-control">
								</div>
							</div><!-- col-sm-6 -->
						</div><!-- row -->
					</div>
					<%--<div class="panel-footer text-right">
						<button class="btn btn-primary">Send</button>
					</div>--%>
				</form>
<!-- /9. $BLOCK_STYLED_FORM -->
                    </div>
                   
                    <div class="col-md-4">
<!-- 14. $DROPZONEJS_FILE_UPLOADS ==================================================================

				Dropzone.js file uploads
-->
				<!-- Javascript -->
				<script>
                    init.push(function () {
                        $("#dropzonejs-example").dropzone({
                            url: "//dummy.html",
                            paramName: "file", // The name that will be used to transfer the file
                            maxFilesize: 0.5, // MB

                            addRemoveLinks: true,
                            dictResponseError: "Can't upload file!",
                            autoProcessQueue: false,
                            thumbnailWidth: 138,
                            thumbnailHeight: 120,

                            previewTemplate: '<div class="dz-preview dz-file-preview"><div class="dz-details"><div class="dz-filename"><span data-dz-name></span></div><div class="dz-size">File size: <span data-dz-size></span></div><div class="dz-thumbnail-wrapper"><div class="dz-thumbnail"><img data-dz-thumbnail><span class="dz-nopreview">No preview</span><div class="dz-success-mark"><i class="fa fa-check-circle-o"></i></div><div class="dz-error-mark"><i class="fa fa-times-circle-o"></i></div><div class="dz-error-message"><span data-dz-errormessage></span></div></div></div></div><div class="progress progress-striped active"><div class="progress-bar progress-bar-success" data-dz-uploadprogress></div></div></div>',

                            resize: function (file) {
                                var info = { srcX: 0, srcY: 0, srcWidth: file.width, srcHeight: file.height },
                                    srcRatio = file.width / file.height;
                                if (file.height > this.options.thumbnailHeight || file.width > this.options.thumbnailWidth) {
                                    info.trgHeight = this.options.thumbnailHeight;
                                    info.trgWidth = info.trgHeight * srcRatio;
                                    if (info.trgWidth > this.options.thumbnailWidth) {
                                        info.trgWidth = this.options.thumbnailWidth;
                                        info.trgHeight = info.trgWidth / srcRatio;
                                    }
                                } else {
                                    info.trgHeight = file.height;
                                    info.trgWidth = file.width;
                                }
                                return info;
                            }
                        });
                    });
				</script>
				<!-- / Javascript -->

				<div class="panel">
					<div class="panel-heading">
<%--						<span class="panel-title">Dropzone.js file uploads</span>--%>
                       <h5><strong>SUBE TU LOGO</strong></h5> 
					</div>
					<div class="panel-body">
<%--						<div class="note note-info">More info and examples at <a href="http://www.dropzonejs.com" target="_blank">http://www.dropzonejs.com</a></div>--%>

						<div id="dropzonejs-example" class="dropzone-box">
                            <i class="fa fa-cloud-upload"></i>
							<div class="dz-default dz-message" >
								
								Arrastra el logo<br><span class="dz-text-small">o presiona acá para seleccionar</span>
							</div>
							<form action="//dummy.html">
								<div class="fallback">
									<input name="file" type="file" multiple="" />
								</div>
							</form>
						</div>
					</div>
				</div>
<!-- /14. $DROPZONEJS_FILE_UPLOADS -->

                    </div>

                </div>


                                        </div>
									</div>
                                    
                                    
                                    
                                    
									<button class="btn wizard-prev-step-btn">Anterior</button>
									<button class="btn btn-primary wizard-next-step-btn">Siguiente</button>
								</div> <!-- / .wizard-pane -->
								<div class="wizard-pane" id="wizard-example-step3" style="display: none;">
<!-- 9. $BLOCK_STYLED_FORM =============================================================================

				Block styled form
-->
                                    	<div class="col-sm-3">
				<form action="#" class="panel form-horizontal">
					<div class="panel-heading">
						<h5><strong>INFORMACIÓN</strong></h5>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group no-margin-hr">
									<label class="control-label">Nombre Proyecto</label>
									<input type="text" name="nombreProyecto" class="form-control">
								</div>
							</div><!-- col-sm-6 -->
							<div class="col-sm-12">
								<div class="form-group no-margin-hr">
									<label class="control-label">Ítem de Gestión (Código)</label>
									<input type="text" name="lastname" class="form-control">
								</div>
							</div><!-- col-sm-6 -->
						</div><!-- row -->
						
						
					</div>
					
				</form>
                                            </div>

                                    <div class="col-sm-3">
				<form action="#" class="panel form-horizontal">
					<div class="panel-heading">
						<h5><strong>DETALLE</strong></h5>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group no-margin-hr">
									<label class="control-label">N° Unidades Habitacionales</label>
									<input type="text" name="nombreProyecto" class="form-control">
								</div>
							</div><!-- col-sm-6 -->
							<div class="col-sm-12">
								<div class="form-group no-margin-hr">
									<label class="control-label">M² Construcción</label>
									<input type="text" name="lastname" class="form-control">
								</div>
							</div><!-- col-sm-6 -->
						</div><!-- row -->
						
						
					</div>
					
				</form>
                                            </div>

                                    <div class="col-sm-3">
				<form action="#" class="panel form-horizontal">
					<div class="panel-heading">
						<h5><strong>UBICACIÓN</strong></h5>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group no-margin-hr">
									<label class="control-label">Región</label>
									<input type="text" name="nombreProyecto" class="form-control">
								</div>
							</div><!-- col-sm-6 -->
							<div class="col-sm-12">
								<div class="form-group no-margin-hr">
									<label class="control-label">Ciudad</label>
									<input type="text" name="lastname" class="form-control">
								</div>
							</div><!-- col-sm-6 -->
						</div><!-- row -->
						
						
					</div>
					
				</form>
                                            </div>

                                    <div class="col-sm-3">
				<form action="#" class="panel form-horizontal">
					<div class="panel-heading">
						<h5><strong>ADMINISTRACIÓN</strong></h5>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group no-margin-hr">
									<label class="control-label">Gerente Proyecto</label>
									<input type="text" name="nombreProyecto" class="form-control">
								</div>
							</div><!-- col-sm-6 -->
							<div class="col-sm-12">
								<div class="form-group no-margin-hr">
									<label class="control-label">Administrador Proyecto</label>
									<input type="text" name="lastname" class="form-control">
								</div>
							</div><!-- col-sm-6 -->
						</div><!-- row -->
						
						
					</div>
					
				</form>
               </div>
<!-- /9. $BLOCK_STYLED_FORM -->
                                    <!-- Javascript -->
				<script>
                    init.push(function () {
                        var options = {
                            todayBtn: "linked",
                            orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
                        }
                        $('#bs-datepicker-example').datepicker(options);

                        $('#bs-datepicker-component').datepicker();

                        var options2 = {
                            orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
                        }
                        $('#bs-datepicker-range').datepicker(options2);

                        $('#bs-datepicker-inline').datepicker();
                    });
				</script>
				<!-- / Javascript -->
                                     
						<div class="row">
							<div class="col-sm-12">
								
                                <div class="input-daterange input-group" id="bs-datepicker-range">
							<input type="text" class="input-sm form-control" name="start" placeholder="Inicio Proyecto">
							<span class="input-group-addon">Hasta</span>
							<input type="text" class="input-sm form-control" name="end" placeholder="Fin Proyecto">
						</div>

							</div><!-- col-sm-6 -->
				</div>
				
                                    
                                    <br><br>
									<button class="btn wizard-prev-step-btn">Anterior</button>
									<button class="btn btn-primary wizard-next-step-btn">Siguiente</button>
								</div> <!-- / .wizard-pane -->
								<div class="wizard-pane" id="wizard-example-step4" style="display: none;">
									<div class="col-md-12">
                                    <h1>Excelente!</h1>
                                    <hr />
                                    
                                    <div class="row">
                                    <div class="col-md-3">
                                        <h4>Está todo en orden :D</h4>
Muy bien. Ya cuentas con todo lo necesario para comenzar a utilizar nuestro sistema. Te recordamos que puedes editar posteriormente la información que acabas de ingresar en la sección "Editar Proyecto". <b>Buen trabajo!</b>
    </div>
                                    </div><br><br>
									<button class="btn wizard-prev-step-btn">Anterior</button>
									<button class="btn btn-primary wizard-go-to-step-btn">Volver a Paso 1: Configuración</button>
									<button class="btn btn-primary wizard-next-step-btn">Finalizar</button>
								</div> <!-- / .wizard-pane -->
							</div> <!-- / .wizard-content -->


                                
						</div> <!-- / .wizard -->
					</div>
				</div>


			</div>
</div>
    
  </asp:Content>

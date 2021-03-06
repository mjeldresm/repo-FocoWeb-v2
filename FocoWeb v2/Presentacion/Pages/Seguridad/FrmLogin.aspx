﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" CodeBehind="FrmLogin.aspx.vb" Inherits="Presentacion.FrmLogin" %>
<%@ register assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class="gt-ie8 gt-ie9 not-ie">
<head id="Head1" runat="server">
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<title>Foco En Obra | Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin" rel="stylesheet" type="text/css"/>
	<link href="../../assets/stylesheets/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/pages.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/pages.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/pixel-admin.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/pixel-admin.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/stylesheets/themes.css" rel="stylesheet" type="text/css"/>
<%--    <link href="../../assets/javascripts/pixel-admin.min.js" rel="stylesheet" type="text/css">
    <link href="../../assets/javascripts/bootstrap.min.js" rel="stylesheet" type="text/css">--%>


<%--	<style>
		#signin-demo {
			position: fixed;
			right: 0;
			bottom: 0;
			z-index: 10000;
			background: rgba(0,0,0,.6);
			padding: 6px;
			border-radius: 3px;
		}
		#signin-demo img { cursor: pointer; height: 40px; }
		#signin-demo img:hover { opacity: .5; }
		#signin-demo div {
			color: #fff;
			font-size: 10px;
			font-weight: 600;
			padding-bottom: 6px;
		}
	</style>--%>


</head>

<body class="theme-default page-signin">

<script>
	var init = [];
	//init.push(function () {
	//	var $div = $('<div id="signin-demo" class="hidden-xs"><div>PAGE BACKGROUND</div></div>'),
 //           bgs = ['~/assets/demo/signin-bg-1.jpg', '~/assets/demo/signin-bg-2.jpg', '~/assets/demo/signin-bg-3.jpg',
 //               '~/assets/demo/signin-bg-4.jpg', '~/assets/demo/signin-bg-5.jpg', '~/assets/demo/signin-bg-6.jpg',
 //               '~/assets/demo/signin-bg-7.jpg', '~/assets/demo/signin-bg-8.jpg', '~/assets/demo/signin-bg-9.jpg' ];
	//	for (var i=0, l=bgs.length; i < l; i++) $div.append($('<img src="' + bgs[i] + '">'));
	//	$div.find('img').click(function () {
	//		var img = new Image();
	//		img.onload = function () {
	//			$('#page-signin-bg > img').attr('src', img.src);
	//			$(window).resize();
	//		}
	//		img.src = $(this).attr('src');
	//	});
	//	$('body').append($div);
	//});
</script>

	<div id="page-signin-bg" style="background-image: url('../../../assets/images/fondo.png'); width: 100%; height: 100%;">
		<div class="overlay"></div>
	</div>

	<div class="signin-container">

		<div class="signin-info">
			<a href="index.html" class="logo">
		<%--		<img src="assets/demo/logo-big.png" alt="" style="margin-top: -5px;">&nbsp;--%>
			</a> 

			<asp:Image ID="Image1" runat="server" ImageUrl="~/assets/images/focoVerde.png" />
            <br />

			<div class="slogan">Gestión Por Compromiso</div> 

			<ul><li>Nuestro compromiso es entregar certeza en los resultados y plazos de ejecución</li></ul>

		</div>

		<div class="signin-form">
			<div class="row" id="signin-form_id">
				<div class="signin-text">
					<span>Ingrese sus datos</span>
				</div>
                <form id="myform" runat="server">
				<div class="form-group w-icon">
					<input id="fname" runat="server" type="text" name="first" class="form-control input-lg" placeholder="Nombre de usuario">
					<span class="fa fa-user signin-form-icon"></span>
				</div>
				<div class="form-group w-icon">
					<input id="fpass" runat="server" type="password" name="last" class="form-control input-lg" placeholder="Contraseña">
					<span class="fa fa-lock signin-form-icon"></span>
				</div> 
				<div class="form-actions">
				<%--	<input type="submit" value="INGRESAR" class="signin-btn bg-primary">--%>
                    
                    <asp:Button ID="Button1" runat="server" class="signin-btn bg-primary" OnClick="Ingresar_Click"  Text="Ingresar" />
<%--                    <asp:Button id="btnIngresar3" type="submit" runat="server" class="signin-btn bg-primary" OnClick="Ingresar_Click" value="INGRESAR" />--%>  
					<a href="RecuperarContrasena.aspx" class="forgot-password" id="forgot-password-link">¿Olvidó su Contraseña?</a>
				</div> 
                </form>  
			</div>
</div>
			<div class="password-reset-form" id="password-reset-form">
				<div class="header">
					<div class="signin-text">
						<span>Reestablecer Contraseña</span>
						<div class="close">&times;</div>
					</div>
				</div>
				
				
				<form action="index.html" id="password-reset-form_id">
					<div class="form-group w-icon">
						<input type="text" name="password_reset_email" id="p_email_id" class="form-control input-lg" placeholder="Ingresa tu Correo">
						<span class="fa fa-envelope signin-form-icon"></span>
					</div> 

					<div class="form-actions">

<%--						<input id="btnIngresar3" OnClick="Ingresar_Click" OnClientClick="muestraLoader()" runat="server" type="submit" value="Enviar Solicitud de Contraseña" class="signin-btn bg-primary">--%>
					</div> 
				</form>
		
			</div>
		</div>
	</div>

	<div class="not-a-member">
		¿Aún no estás en Foco en Obra? <br /><a href="#">Conócenos</a>
	</div>

<%--
<script type="text/javascript"> window.jQuery || document.write
('<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js">'+"<"+"/script>"); 
</script>
--%>

<script src="../../assets/javascripts/bootstrap.min.js"></script>
<script src="../../assets/javascripts/pixel-admin.min.js"></script>

    <!-- para validar revisar el tema "form" -->
<script type="text/javascript">
	//init.push(function () {
	//	var $ph  = $('#page-signin-bg'),
	//	    $img = $ph.find('> img');
        
	//	$(window).on('resize', function () {
	//		$img.attr('style', '');
	//		if ($img.height() < $ph.height()) {
	//			$img.css({
	//				height: '100%',
	//				width: 'auto'
	//			});
	//		}
	//	});
	//});

	//init.push(function () {
 //       $('#forgot-password-link').click(function () {
 //           console.log("click");
	//		$('#password-reset-form').fadeIn(400);
	//		return false;
	//	});
	//	$('#password-reset-form .close').click(function () {
	//		$('#password-reset-form').fadeOut(400);
	//		return false;
	//	});
	//});

	//init.push(function () {
	//	$("#signin-form_id").validate({ focusInvalid: true, errorPlacement: function () {} });
		
	//	$("#username_id").rules("add", {
	//		required: true,
	//		minlength: 3
	//	});

	//	$("#password_id").rules("add", {
	//		required: true,
	//		minlength: 6
	//	});
	//});

	//init.push(function () {
	//	$("#password-reset-form_id").validate({ focusInvalid: true, errorPlacement: function () {} });
	//	$("#p_email_id").rules("add", {
	//		required: true,
	//		email: true
	//	});
	//});

	window.PixelAdmin.start(init);
</script>

</body>
</html>

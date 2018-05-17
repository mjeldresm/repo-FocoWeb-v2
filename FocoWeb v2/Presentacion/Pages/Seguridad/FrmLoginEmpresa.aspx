<%@ Page Title="" Language="vb" AutoEventWireup="false" CodeBehind="FrmLoginEmpresa.aspx.vb" Inherits="Presentacion.FrmLoginEmpresa" %>
<%@ register assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class="gt-ie8 gt-ie9 not-ie">
<head id="Head1" runat="server">
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<title>Foco En Obra | Empresa</title>
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

</head>

<body class="theme-default page-signin">

<script>
	var init = [];
</script>

	<div id="page-signin-bg" style="background-image: url('../../../assets/images/fondo.png'); width: 100%; height: 100%;">
		<div class="overlay"></div>
	</div>

	<div class="signin-container">

		<div class="signin-info">
			<a href="index.html" class="logo">		
			</a> 
			<asp:Image ID="Image1" runat="server" ImageUrl="~/assets/images/focoVerde.png" />
            <br />
			<div class="slogan">Gestión Por Compromiso</div> 
			<ul><li>Nuestro compromiso es entregar certeza en los resultados y plazos de ejecución</li></ul>
		</div>

		<div class="signin-form">
			<div class="row" id="signin-form_id">
				<div class="signin-text">
					<span>Seleccione una empresa</span>
				</div>
                <form id="myform" runat="server">
				    <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Circle" DisplayMode="LinkButton">
                    </asp:BulletedList>

                    <div class="form-actions">
				<%--	<input type="submit" value="INGRESAR" class="signin-btn bg-primary">--%>
                    
                    <asp:Button ID="Button1" runat="server" class="signin-btn bg-primary"  Text="Cancelar" />
<%--                    <asp:Button id="btnIngresar3" type="submit" runat="server" class="signin-btn bg-primary" OnClick="Ingresar_Click" value="INGRESAR" />--%>  
					
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
					</div> 
				</form>
		
			</div>
		</div>

	<div class="not-a-member">
		¿Aún no estás en Foco en Obra? <br /><a href="#">Conócenos</a>
	</div>


<script src="../../assets/javascripts/bootstrap.min.js"></script>
<script src="../../assets/javascripts/pixel-admin.min.js"></script>

<script type="text/javascript">
	window.PixelAdmin.start(init);
</script>

</body>
</html>

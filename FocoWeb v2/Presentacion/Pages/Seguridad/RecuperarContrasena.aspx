<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RecuperarContraseña.aspx.vb" Inherits="Presentacion.RecuperarContraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<title>Foco En Obra | Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin" rel="stylesheet" type="text/css"/>
	<link href="../../assets/stylesheets/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/pages.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/pages.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/pixel-admin.css" rel="stylesheet" type="text/css"/>
    <link href="../../assets/stylesheets/pixel-admin.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/stylesheets/themes.css" rel="stylesheet" type="text/css"/>
    <script src="../../assets/javascripts/bootstrap.min.js"></script>
<script src="../../assets/javascripts/pixel-admin.min.js"></script>
 <script src="../../assets/javascripts/bootstrap-notify.min.js"></script>


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


    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 100%;
            left: 0;
            top: -201px;
            margin-bottom: 0px;
        }
        .notifyfont {
            text-align: center;
           font-size:17px;
          }
    </style>
<script>
    function checkVacioEmail()
{
        
        var textbox5 = document.getElementById("fname");
         if (textbox5.value.length == ""   ) {
             // $.notify("Ingresa un email o usuario.", "error");
             
             $.notify("<center><l class='notifyfont'>Ingresa un email o usuario.</i>",{
                 delay: 1500,
                 timer: 1500,
             });
             document.getElementById("")
             return false;
            } else {
                return true;
            }
}
    function myFuncionAlerta(respuesta) {
         if (respuesta == 0)
         {
            $.notify({
               title: '<strong></strong>',
              message: '<center> <l class="notifyfont">El usuario que ingresaste no existe en nuestro registro,inténtalo nuevamente.</center>'
                 }, {
                   delay: 1500,
                 timer: 1500,
                });

        }
        if (respuesta == 1)
         {
            $.notify({
               title: '<strong></strong>',
              message: '<center><l class="notifyfont">Tu usuario no tiene configurado un correo electrónico contáctate a soporte@focoenobra.cl.</center>'
                 }, {
                  delay: 1500,
                 timer: 1500,
                });

        }
        if (respuesta == 2)
         {
            $.notify({
               title: '<strong></strong>',
              message: '<center><l class="notifyfont">Código incorrecto</center>'
                 }, {
                 delay: 1500,
                 timer: 1500,
                });

        }
         if (respuesta == 3)
         {
            $.notify({
               title: '<strong></strong>',
              message: '<center><l class="notifyfont">Tu còdigo ha expirado.</center>'
                 }, {
                  delay: 1500,
                 timer: 1500,
                });

        }
        if (respuesta == 4)
        {
                    
            setTimeout(function () { window.open('FrmLogin.aspx', '_self'); }, 2500);
        }
    }
    </script>
     
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

	<div id="page-signin-bg" style="background-image: url('../../../assets/images/fondo.png'); " class="auto-style1">
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
				
                <form id="myform" runat="server">
                    <div style="display:normal" runat="server" id="DIV1usuario">
                        <div class="signin-text">
					Para recuperar tu contraseña ingresa tu usuario o email
				</div>
                        <div class="form-group w-icon">
                            <input id="fname" runat="server" type="text" name="first" class="form-control input-lg" placeholder="Email o Usuario">
                            <span class="fa fa-user signin-form-icon center"></span>
                            
                        </div>
                        <asp:Label ID="LBLErrRecPass" runat="server" Text="" style="display:normal"></asp:Label><br />
                    
                   
                     <div class="form-actions" >
				  <asp:Button class="signin-btn bg-primary center-block" OnClientClick="return checkVacioEmail();" OnClick="Ingresar_Click"  Text="Enviar" runat="server" />&nbsp;

                     </div>

                  </div>
             <div style="display:none" runat="server" id="DIVcodigo" > 
                   <div class="signin-text" style="margin:0;">
					
				te enviámos un código de validación al correo</div> 
                 <asp:Label ID="lblTexto" runat="server" Text="" class="signin-text" style="color:#428bca"></asp:Label>
              
				<div class="form-group w-icon">
					<input id="CODValidar" runat="server" type="text" name="first" class="form-control input-lg" placeholder="Ingresar código de validación">
					<span class="fa  fa-asterisk signin-form-icon"></span>
                    
				</div>
                  <asp:Label ID="LBLErrRecPass2" runat="server" Text=""></asp:Label><br />
                  
				<div class="form-actions">
				       <asp:Button class="signin-btn bg-primary center-block" OnClick="Validar_codigo" OnClientClick="return Checkcod()" Text="Aceptar" runat="server"  />&nbsp; 
                           
                       <asp:Label ID="Label1" runat="server" Text="" class="signin-text" style="display:none"></asp:Label>
			    </div>
                 
             </div>
                   
                    
                     <div style="display:none" runat="server" id="DIVCambiar" > 
               <div class="signin-text ">
					Ingresa tu nueva contraseña
				</div>
				<div class="form-group w-icon">
					<input id="txtNuevaPass" runat="server" type="password" name="first" class="form-control input-lg" placeholder="Nueva contraseña"  >
					<span class="fa fa-lock signin-form-icon"></span>
                     <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
				</div>

                        <div class="form-group w-icon">
					<input id="txtConfirmPass" runat="server" type="password" name="first" class="form-control input-lg" placeholder="Confirmar contraseña">
					<span class="fa fa-lock  signin-form-icon"></span>
                </div>
              <asp:Label style="display:normal" ID="labelConfirmPass" runat="server"  class="signin-text" ></asp:Label>

                <div class="form-actions">
<%--                            <Button class="signin-btn bg-primary center-block"   OnClientClick="checkLength()" Text="Guardar"  />&nbsp; --%>
        <asp:Button id="Button1" class="signin-btn bg-primary center-block"  type="button" OnClientClick="return checkLength();" Text="Guardar" runat="server" OnClick="Guardar_Nueva_con" />

			    </div>

             </div>
                     <div style="display:none" runat="server" id="DIV1Confirm" > 
               <div class="" style="font-size:22px;margin-top:10%;color:lightseagreen;font-style:italic;text-align:center;">
					Contraseña actualizada correctamente.
                   <br />
                   <i class="fas fa-check signin-icon fa-3x" ></i>
				</div></div>
                </form>

                </div>
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



    <!-- para validar revisar el tema "form" -->
<script type="text/javascript">
        function Checkcod()
{
        
         var textbox4 = document.getElementById("CODValidar");
         if (textbox4.value.length == ""   ) {
             $.notify("<l class='notifyfont'><center>Ingresa el código de validación.", {
                 delay: 1500,
                 timer: 1500,
                                  });
             document.getElementById("")
             return false;
            } else {
                return true;
            }
}

    
    function checkLength()
{
        var textbox = document.getElementById("txtNuevaPass");
        var textbox2 = document.getElementById("txtConfirmPass");

        if (textbox.value.length < 4 || textbox2.value.length < 4) {
            // alert("Debe tener un mínimo de 4 caracteres");
          
            if (textbox.value.length == ""  || textbox2.value.length == ""  ) {
                $.notify("<l class='notifyfont'><center>Los campos no pueden estar vacíos.", {
                 delay: 1500,
                 timer: 1500,
                                  });
                 return false; 
            } else {
                $.notify({
                              
                 title: "",
                 icon: '',
                 message: "<l class='notifyfont'><center>tu contraseña debe tener un mínimo de 4 caracteres"
                              }, {
                 delay: 1500,
                 timer: 1500,
                                  });    return false; 
            }
        }
        else if (textbox.value == textbox2.value) {
            return true;
             
        }
        else {
            $.notify("<l class='notifyfont'><center>Estas contraseña no coinciden,inténtalo de nuevo.", {
                 delay: 1500,
                 timer: 1500,
                                  });
            return false; 
        }

    }

  
	window.PixelAdmin.start(init);
</script>

</body>
</html>

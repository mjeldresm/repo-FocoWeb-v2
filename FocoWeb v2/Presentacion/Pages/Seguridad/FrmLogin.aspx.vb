Imports System.Net
Imports System.Data.SqlClient
Imports System.Windows.Forms

Public Class FrmLogin
    Inherits System.Web.UI.Page

    Dim ip As String = ""
    Dim hostName As String = ""

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim vRazon As String = Request.QueryString("Raz")
        Response.AppendHeader("Cache-Control", "no-cache, no-store, must-revalidate")
        ' HTTP 1.1.
        Response.AppendHeader("Pragma", "no-cache")
        ' HTTP 1.0.
        Response.AppendHeader("Expires", "0")
        ' Proxies.
        Session.Clear()


        If Not String.IsNullOrWhiteSpace(vRazon) Then
            Select Case vRazon
                Case "1" 'La session caducó o el intento de ingreso no es válido.
                    Alerta("La sesión ha caducado. Ingrese nuevamente.")
                Case "2" 'El usuario no tiene empresas.
                    Alerta("La cuenta del usuario no tiene empresas asociadas.")
                Case "3"
                    Mensaje("Su sesión se ha cerrado correctamente.")
            End Select
        End If
    End Sub

    Private Function Validar() As Boolean
        'Validar = True
        'Dim vStr As String = String.Empty

        'litError.Text = String.Empty
        'If String.IsNullOrWhiteSpace(txtUser.Text) Then
        '    txtUser.CssClass = ControlError
        '    vStr = "El campo Usuario no puede estar vacío.<br/>"
        '    Validar = False
        'Else
        '    txtUser.CssClass = ControlNormal
        'End If

        'If String.IsNullOrWhiteSpace(txtPass.Text) Then
        '    txtPass.CssClass = ControlError
        '    vStr &= "El campo Contraseña no puede estar vacío.<br/>"
        '    Validar = False
        'Else
        '    txtPass.CssClass = ControlNormal
        'End If

        'If Not Validar Then
        '    Alerta(vStr)
        'End If
    End Function

    Private Sub Ingresar()
        ' Dim vUser As wsLogin_.UsuarioSistema
        Dim vUser As DAL.Seguridad.UsuarioSistema

        ' ObtenerHost()
        Try
            ' conexion de prueba del wsLogin ---- Dim ws As wsLogin.Service1SoapClient = New wsLogin.Service1SoapClient
            'Dim ws As wsLogin_.Service1SoapClient = New wsLogin_.Service1SoapClient
            Dim dtEmpresas As DataTable = New DataTable
            ' pendiente..
            'vUser = DAL.Seguridad.Usuario.Ingresar(fname.Value.ToLower, fpass.Value.ToLower, "Data Source=192.168.1.52;Initial Catalog=Foco_WebMaster;Integrated Security=False;Connect Timeout=200;USER ID=foco_webmaster;password=Foco38Web1835", "192.168.0.102", "")
            vUser = DAL.Seguridad.Usuario.Ingresar(fname.Value.ToLower, fpass.Value.ToLower, ConfigurationManager.ConnectionStrings("Maestro").ConnectionString, "192.168.0.102", "")
            'vUser = DAL.Seguridad.Usuario.Ingresar(fname.Value.ToLower, fpass.Value.ToLower, "Data Source=MAURO-MORENO;Initial Catalog=Foco_WebMaster;Integrated Security=False;Connect Timeout=200;USER ID=foco_webmaster;password=Foco38Web1835", "192.168.0.102", "")
            dtEmpresas = vUser.Empresas
            Session.Add("xEMPRESA", dtEmpresas)

        Catch sqlEx As SqlException
            'Alerta(sqlEx.Message)
            Exit Sub
        Catch ex As Exception
            ' MostrarError(ex.Message, , ex)
            Exit Sub
        End Try

        If vUser IsNot Nothing Then

            If vUser.Empresas.Rows.Count = 0 Then
                Alerta("La cuenta del usuario no tiene empresas asociadas.")
            Else
                If vUser.Empresas.Rows.Count = 1 Then
                    'Solo tiene una empresa
                    DAL.Seguridad.Usuario.CargarParticular(vUser)
                End If

                'Podemos redireccionar
                Session.Add("xSSN_USUARIO", vUser)
                'Session(SSN_USUARIO) = vUser
                vUser.LoggedIn = True
                vUser.ID_PARTICULAR.ToString()
                Session.Add("xUser", vUser.ID_PARTICULAR.ToString())

                If vUser.Empresas.Rows.Count = 1 Then
                    Response.Redirect(ConfigurationManager.AppSettings("PaginaInicio"))
                Else
                    Response.Redirect("../Seguridad/FrmLoginEmpresa.aspx")
                End If

            End If
        Else
            Alerta("El nombre de usuario o contraseña no es válido.")
        End If
    End Sub

    Private Sub Alerta(vMensaje As String)
        'litError.Text = vMensaje
        'pError.CssClass = CajaError
        'pError.Visible = True
        'div_msj.Attributes.Add("style", "visibility:visible")
        'msg.InnerText = vMensaje
    End Sub

    Private Sub Mensaje(vMensaje As String)
        'litError.Text = vMensaje
        'pError.CssClass = CajaInfo
        'pError.Visible = True
        'div_msj.Attributes.Add("style", "visibility:visible")
        'icoMsj.Attributes.Add("class", "fa fa-info-circle fa-2x")
        'msg.InnerText = vMensaje
    End Sub


    Private Sub ObtenerHost()
        Dim strHostName As String = Dns.GetHostName()
        Dim ipEntry As IPHostEntry = Dns.GetHostEntry(strHostName)

        ip = Convert.ToString(ipEntry.AddressList(ipEntry.AddressList.Length - 1))
        hostName = Convert.ToString(ipEntry.HostName)

        'IP detras de Proxy O Client Machine en ASP.NET  
        Dim IPAdd As String = String.Empty
        IPAdd = Request.ServerVariables("HTTP_X_FORWARDED_FOR")

        If String.IsNullOrEmpty(IPAdd) Then
            IPAdd = Request.ServerVariables("REMOTE_ADDR")
            ip = IPAdd
        End If
        ' strHostName = System.Net.Dns.GetHostEntry(ip).HostName
    End Sub

    Sub Ingresar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Ingresar()
    End Sub
End Class
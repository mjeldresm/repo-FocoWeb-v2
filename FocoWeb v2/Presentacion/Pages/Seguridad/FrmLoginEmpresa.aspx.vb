Imports System.Net
Imports System.Data.SqlClient
Imports System.Windows.Forms

Public Class FrmLoginEmpresa
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim vUser As DAL.Seguridad.UsuarioSistema
        vUser = Session("xSSN_USUARIO")

        If vUser IsNot Nothing Then
            If vUser.Empresas.Rows.Count > 0 Then

                'cargar empresas
                Me.BulletedList1.DataTextField = "NOMBRE_EMP"
                Me.BulletedList1.DataValueField = "ID_EMP"
                Me.BulletedList1.DataSource = vUser.Empresas

                Me.BulletedList1.DataBind()

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

    Protected Sub BulletedList1_Click(sender As Object, e As BulletedListEventArgs) Handles BulletedList1.Click
        Dim m As Integer
        Dim list As ListItem
        'item seleccionado del listado
        list = Me.BulletedList1.Items.Item(e.Index)
        'ID empresa
        m = CInt(list.Value)
        'set values
        Dim vUser As DAL.Seguridad.UsuarioSistema
        vUser = Session("xSSN_USUARIO")

        DAL.Seguridad.Usuario.CargarParticular(vUser, m)
        DAL.Seguridad.Usuario.CargarParticular(vUser)

        'Podemos redireccionar
        Session.Add("xSSN_USUARIO", vUser)
        'Session(SSN_USUARIO) = vUser
        vUser.LoggedIn = True
        vUser.ID_PARTICULAR.ToString()
        Session.Add("xUser", vUser.ID_PARTICULAR.ToString())

        Response.Redirect(ConfigurationManager.AppSettings("PaginaInicio"))

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Response.Redirect("../Seguridad/FrmLogin.aspx")
    End Sub
End Class
Public Class Formulario_web114
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
            Dim datos As New DAL.Calidad.Historial()
            grillaHistorial.DataSource = datos.getHistorial(ssUsuario, 612)
            grillaHistorial.DataBind()



        End If
    End Sub

End Class
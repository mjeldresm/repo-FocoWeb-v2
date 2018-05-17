Public Class Formulario_web13
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BootstrapButton1_Click(sender As Object, e As EventArgs) Handles BootstrapButton1.Click
        Session.Clear()
        Response.Redirect("~/pages/seguridad/frmLogin.aspx", False)

    End Sub
End Class
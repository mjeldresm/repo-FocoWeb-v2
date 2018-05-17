Imports System.Drawing
Imports System.IO
Imports DevExpress.Web
Imports DevExpress.Web.Internal
Imports DevExpress.Web.Demos
Imports SUL



Public Class PlantillaACC
    Inherits System.Web.UI.Page



    Protected Sub ddlProyectos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlProyectos.SelectedIndexChanged
        Session.Add("idObra", ddlProyectos.SelectedItem.Value)
        lblProyecto.Text = " - " & ddlProyectos.SelectedItem.Text
        ' lblId_Proyecto.Text = ddlProyectos.SelectedItem.Value



    End Sub

    Protected Sub btnNuevaActividad_Click(sender As Object, e As EventArgs) Handles btnNuevaActividad.Click
        Dim newAct As Boolean
        'newAct = 






    End Sub
End Class
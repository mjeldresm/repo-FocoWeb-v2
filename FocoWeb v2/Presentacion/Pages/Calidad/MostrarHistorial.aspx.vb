Public Class MostrarHistorial
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Dim datos As New DAL.Calidad.Historial()

        'ASPxGridView1.DataSource = datos.getHistorial(612)
        'ASPxGridView1.DataBind()

    End Sub

    Protected Sub ASPxGridView1_HtmlCommandCellPrepared(sender As Object, e As DevExpress.Web.ASPxGridViewTableCommandCellEventArgs) Handles ASPxGridView1.HtmlCommandCellPrepared



    End Sub

    Protected Sub ASPxGridView1_CustomColumnDisplayText(sender As Object, e As DevExpress.Web.ASPxGridViewColumnDisplayTextEventArgs) Handles ASPxGridView1.CustomColumnDisplayText

        If e.Column.FieldName = "FECHA_HORA" Then

            e.Column.PropertiesEdit.DisplayFormatString = "dd/MM/yyyy HH:mm:ss"


        End If

    End Sub

    Protected Sub ASPxGridView1_HtmlRowPrepared(sender As Object, e As DevExpress.Web.ASPxGridViewTableRowEventArgs) Handles ASPxGridView1.HtmlRowPrepared



    End Sub

    Protected Sub ASPxGridView1_HtmlDataCellPrepared(sender As Object, e As DevExpress.Web.ASPxGridViewTableDataCellEventArgs) Handles ASPxGridView1.HtmlDataCellPrepared


    End Sub
End Class
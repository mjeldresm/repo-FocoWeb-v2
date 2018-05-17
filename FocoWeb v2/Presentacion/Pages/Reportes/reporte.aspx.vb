Imports System.IO
Imports DevExpress.XtraReports.UI

Public Class reporte
    Inherits System.Web.UI.Page
    Private rptMaster As DataTable
    Private rptDetalle As DataTable
    Private COUNT As Integer = 0
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



    End Sub



    Public Sub ExportReport(ByVal report As XtraReport, ByVal fileName As String, ByVal fileType As String, ByVal inline As Boolean)
        Dim stream As New MemoryStream()
        Response.Clear()
        If fileType = "xls" Then
            report.ExportToXls(stream)
        End If
        If fileType = "pdf" Then
            report.ExportToPdf(stream)
        End If
        If fileType = "rtf" Then
            report.ExportToRtf(stream)
        End If
        If fileType = "csv" Then
            report.ExportToCsv(stream)
        End If
        Response.ContentType = "application/" & fileType
        Response.AddHeader("Accept-Header", stream.Length.ToString())
        If inline Then
            Response.AddHeader("Content-Disposition", ("Inline") & "; filename=" & fileName & "." & fileType)
        Else
            Response.AddHeader("Content-Disposition", ("Attachment") & "; filename=" & fileName & "." & fileType)
        End If
        Response.AddHeader("Content-Length", stream.Length.ToString())
        Response.BinaryWrite(stream.ToArray())
        Response.End()
    End Sub

    Protected Sub vistareporte_Load(sender As Object, e As EventArgs) Handles vistareporte.Load



        Dim idRegistro As String = Request.Params("idRegistro")
            Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
            Dim dsregistro As DataSet = DAL.registro.registro.traerRegistro(ssUsuario, idRegistro)

            Dim _dsReporteProtocolo As New dsReporteProtocolo()
            Dim MaestroTA As New dsReporteProtocoloTableAdapters.SPU_MaestroProtocoloTableAdapter
            Dim DetalleTA As New dsReporteProtocoloTableAdapters.SPU_DetalleProtocoloTableAdapter
            Dim detalleGrupoTA As New dsReporteProtocoloTableAdapters.SPU_GrupoTableAdapter


            MaestroTA.Fill(_dsReporteProtocolo.SPU_MaestroProtocolo, idRegistro)
            DetalleTA.Fill(_dsReporteProtocolo.SPU_DetalleProtocolo, idRegistro)
            detalleGrupoTA.Fill(_dsReporteProtocolo.SPU_Grupo, idRegistro)

        Dim report As New rptProtocolo
        report.DataSource = _dsReporteProtocolo
            vistareporte.Report = report



        'If report IsNot Nothing Then
        '    ExportReport(report, "protocolo", "pdf", False)
        'Else
        'End If




    End Sub
End Class
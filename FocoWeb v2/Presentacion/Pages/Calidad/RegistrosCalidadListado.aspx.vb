Imports System.IO
Imports DAL.Seguridad
Imports DevExpress.Web

Public Class Formulario_web110
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Page.IsPostBack = False Then
            btn_Filtrar.Visible = False

            gridActividades.DataBind()

        Else
            gridActividades.DataBind()

        End If

    End Sub

    <System.Web.Services.WebMethod()>
    Public Shared Sub setProyecto(ByVal hObraid As String, ByVal hObraNombre As String)

        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = HttpContext.Current.Session.Contents("xSSN_USUARIO")
        ssUsuario.EmpresaSelected.ObraNombreSelected = hObraNombre
        ssUsuario.EmpresaSelected.ObraIDSelected = hObraid
        HttpContext.Current.Session.Add("idObra", hObraid)
        HttpContext.Current.Session.Add("xSSN_USUARIO", ssUsuario)

    End Sub
    Protected Sub btn_Filtrar_Click(sender As Object, e As EventArgs) Handles btn_Filtrar.Click
        'Dim ssUsuario As DAL.Seguridad.UsuarioSistema = HttpContext.Current.Session.Contents("xSSN_USUARIO")
        'Dim proyecto As Integer = ssUsuario.EmpresaSelected.ObraIDSelected
        'Dim etapa As String = tknEtapa.Value
        'Dim actividad As String = tknActividad.Value
        'Dim estado As String = tknEstado.Value
        ''Session("etapa") = etapa
        'Session("actividad") = actividad
        'Session("estado") = estado

        'gridActividades.DataBind()


    End Sub

    Protected Sub gridActividades_HtmlDataCellPrepared(sender As Object, e As ASPxGridViewTableDataCellEventArgs) Handles gridActividades.HtmlDataCellPrepared
        Dim carpeta As String = "/archivos/" & e.KeyValue & "/"
        If (e.DataColumn.FieldName = "ESTADO_VB") Then
            Dim image As Image = TryCast(gridActividades.FindRowCellTemplateControl(e.VisibleIndex, e.DataColumn, "nuevoReg"), Image)
            Dim lblRevisor As ASPxLabel = TryCast(gridActividades.FindRowCellTemplateControl(e.VisibleIndex, e.DataColumn, "lblRevisor"), ASPxLabel)
            Dim adjunto As ASPxImage = TryCast(gridActividades.FindRowCellTemplateControl(e.VisibleIndex, e.DataColumn, "adjunto"), ASPxImage)
            Dim cantidadAdj As Integer = CType((TryCast(sender, ASPxGridView)).GetRowValues(e.VisibleIndex, "NUM_ADJ"), Integer)
            Dim estapasOK As Integer = CType((TryCast(sender, ASPxGridView)).GetRowValues(e.VisibleIndex, "TOTAL_RB"), Integer)
            If CType(e.CellValue.ToString, Integer) > 1 Then
                image.ImageUrl = "~/assets/images/okr.png"
                image.ToolTip = ""
            End If
            If CType(e.CellValue.ToString, Integer) = estapasOK And estapasOK <> 0 Then
                image.ImageUrl = "~/assets/images/finOk.png"
                image.ToolTip = ""
            End If
            If e.CellValue.ToString = Trim("1") Then
                image.ImageUrl = "~/assets/images/okr.png"
                image.ToolTip = ""
            End If
            If e.CellValue.ToString = Trim("-1") Then
                image.ImageUrl = "~/assets/images/fallas.png"
            End If
            If CType(cantidadAdj, Integer) > 0 Then
                adjunto.EmptyImage.IconID = "navigation_up_16x16"
                adjunto.ToolTip = "El registro posee (" & CType(cantidadAdj, Integer) & ") archivo(s) adjunto"

            End If
        End If
    End Sub

    Private Sub Formulario_web110_Init(sender As Object, e As EventArgs) Handles Me.Init

        Dim str As String
        Dim sUsuario As DAL.Seguridad.UsuarioSistema
        sUsuario = Session.Contents("xSSN_USUARIO")
        str = sUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion

        Me.sqlActividad.ConnectionString = str
        Me.sqlEstados.ConnectionString = str
        Me.sqlEtapa.ConnectionString = str
        Me.sqlCalidad.ConnectionString = str

    End Sub
End Class
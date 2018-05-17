Imports DevExpress.Web.Data
Imports System.IO
Imports DevExpress.Web
Imports DevExpress.Web.Bootstrap

Imports DevExpress.Web.Demos
Public Class Formulario_web19
    Inherits System.Web.UI.Page
    Private Const UploadDirectory As String = "~/archivos/"



    Protected Sub btnNuevaActividad_Click(sender As Object, e As EventArgs) Handles btnNuevaActividad.Click
        Dim newAct As Boolean
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        newAct = DAL.Calidad.Actividad.insertarActividades(ssUsuario, ssUsuario.ID_MAESTRO, Session.Contents("idObra"), ddlEtapa.SelectedItem.Value, "1", txtAct_Nombre.Value)
        If newAct = True Then
            dllActividad.DataBind()
            dllActividad.Text = txtAct_Nombre.Value
            txtEtapa.Text = ddlEtapa.Text

            'ssUsuario.EmpresaSelected.ObraIDSelected = 71 'vTablas.Tables(0).Rows(0).Item("ID_OBR_PRED")


            lblObra.Text = ssUsuario.EmpresaSelected.ObraNombreSelected  'txtProyectos.Text
            lblPlnNom.Text = txtnombre.Text
            lblAct.Text = dllActividad.Text
        Else

        End If

    End Sub

    Protected Sub dllActividad_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dllActividad.SelectedIndexChanged
        Dim nombreEtapa As String
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        nombreEtapa = DAL.Calidad.Actividad.buscarEtapa(ssUsuario, dllActividad.Value)
        lblObra.Text = ssUsuario.EmpresaSelected.ObraNombreSelected
        lblPlnNom.Text = txtnombre.Text
        lblAct.Text = dllActividad.Text
        txtEtapa.Text = nombreEtapa


    End Sub

#Region "Web method"
    <System.Web.Services.WebMethod()>
    Public Shared Sub guardaGrupo(ByVal nombreGrupo As String)
        Dim newGrupo As Boolean
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = HttpContext.Current.Session.Contents("xSSN_USUARIO")
        newGrupo = DAL.Calidad.Actividad.insertarGrupoActividad(ssUsuario, nombreGrupo)

    End Sub
#End Region
    Protected Sub Grid_CellEditorInitialize(ByVal sender As Object, ByVal e As ASPxGridViewEditorEventArgs)
        If e.Column.FieldName = "ID_TIP" Then
            Dim combo = CType(e.Editor, ASPxComboBox)
            AddHandler combo.Callback, AddressOf combo_Callback
            Dim grid = e.Column.Grid
            If (Not combo.IsCallback) Then
                Dim ID_TUC = -1
                If (Not grid.IsNewRowEditing) Then
                    ID_TUC = CInt(Fix(grid.GetRowValues(e.VisibleIndex, "ID_TUC")))
                End If
                FillTipologiaComboBox(combo, ID_TUC)
            End If
        End If
    End Sub

    Private Sub combo_Callback(ByVal sender As Object, ByVal e As CallbackEventArgsBase)
        Dim ID_TUC = -1
        Int32.TryParse(e.Parameter, ID_TUC)
        FillTipologiaComboBox(TryCast(sender, ASPxComboBox), ID_TUC)
    End Sub

    Protected Sub FillTipologiaComboBox(ByVal combo As ASPxComboBox, ByVal ID_TUC As Integer)
        combo.DataSourceID = "sqlTipologias"
        sqlTipologias.SelectParameters("ID_TUC").DefaultValue = ID_TUC.ToString()
        combo.DataBindItems()

        combo.Items.Insert(0, New ListEditItem("", Nothing)) ' Null Item
    End Sub

    Private Sub Formulario_web16_Load(sender As Object, e As EventArgs) Handles Me.Load


        If Request.Params("idPlantilla") <> "" Then
            Dim idPlantilla As String = Request.Params("idPlantilla")
            Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
            Dim xPlantilla As DataSet = DAL.Calidad.Plantilla.traerPlantilla(ssUsuario, Session.Contents("idObra"), idPlantilla)

            Session("ID_ACC_PLT") = xPlantilla.Tables(0).Rows(0).Item("ID_ACC_PLT").ToString
            Session("xCodigo") = xPlantilla.Tables(0).Rows(0).Item("CODIGO").ToString

            Session("xActividad") = xPlantilla.Tables(0).Rows(0).Item("ACTIVIDAD").ToString
            Session("xtxtNombre") = xPlantilla.Tables(0).Rows(0).Item("NOMBRE_ACC").ToString
            Session("xObs") = xPlantilla.Tables(0).Rows(0).Item("OBS_ACC").ToString

            If Page.IsPostBack = False Then
                ssUsuario.EmpresaSelected.ObraIDSelected = Session.Contents("idObra")
                ssUsuario.EmpresaSelected.ObraNombreSelected = Session.Contents("nombreObra")
                'txtProyectos.Text =
                'txtObraNombre.Text = 
                codigotexto.Value = Session("xCodigo")
                txtnombre.Text = Session("xtxtNombre")
                dllActividad.Value = Session("xActividad")
                txtMemPbservaciones.Text = Session("xObs")

            End If


            Grid.DataBind()
            grillaCheck.DataBind()
            GridVb.DataBind()
            gridMensajes.DataBind()




            Grid.StartEdit(0)
            '  lblFecha.Text = Date.Today.ToLongDateString
            ' limpiarVariables()
        End If







    End Sub

    Protected Sub GridVb_CellEditorInitialize(sender As Object, e As ASPxGridViewEditorEventArgs) Handles GridVb.CellEditorInitialize
        e.Editor.ReadOnly = False
        If e.Column.FieldName = "ORDEN_VB" Then
            Dim combo = CType(e.Editor, ASPxComboBox)
            If combo.Items.Count = 0 Then

            Else
                combo.SelectedIndex = combo.Items.Count - 1
            End If


        End If







    End Sub



    Protected Sub UploadControl_FileUploadComplete(ByVal sender As Object, ByVal e As FileUploadCompleteEventArgs)
        Dim resultExtension As String = Path.GetExtension(e.UploadedFile.FileName)
        Dim resultFileName As String = Path.ChangeExtension(Path.GetRandomFileName(), resultExtension)
        Dim resultFileUrl As String = UploadDirectory & resultFileName
        Dim resultFilePath As String = MapPath(resultFileUrl)
        e.UploadedFile.SaveAs(resultFilePath)
        UploadingUtils.RemoveFileWithDelay(resultFileName, resultFilePath, 5)
        Dim name As String = e.UploadedFile.FileName
        Dim url As String = ResolveClientUrl(resultFileUrl)
        Dim sizeInKilobytes As Long = e.UploadedFile.ContentLength / 1024
        Dim sizeText As String = sizeInKilobytes.ToString() & " KB"
        e.CallbackData = name & "|" & url & "|" & sizeText

    End Sub

    Private Sub btnNuevoGrupo_Click(sender As Object, e As EventArgs) Handles btnNuevoGrupo.Click
        Dim newGrupo As Boolean
        Dim grupo As String
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        grupo = txtNuevoGrupo.Value
        newGrupo = DAL.Calidad.Actividad.insertarGrupoActividad(ssUsuario, grupo)
        If newGrupo = True Then



        End If
    End Sub

    Protected Sub txtMemPbservaciones_TextChanged(sender As Object, e As EventArgs) Handles txtMemPbservaciones.TextChanged
        Session.Add("xObs", txtMemPbservaciones.Text)
    End Sub

    Protected Sub Grid_InitNewRow(sender As Object, e As ASPxDataInitNewRowEventArgs) Handles Grid.InitNewRow

        If Session("ID_ACC_PLT") Is Nothing Then
            Dim newPlantilla As Boolean
            Dim ssUsuario As DAL.Seguridad.UsuarioSistema = HttpContext.Current.Session.Contents("xSSN_USUARIO")
            newPlantilla = DAL.Calidad.Plantilla.insertarPlantilla(ssUsuario, ssUsuario.ID_MAESTRO, HttpContext.Current.Session.Contents("xCodigo"), HttpContext.Current.Session.Contents("idObra"), 1, HttpContext.Current.Session.Contents("xActividad"), HttpContext.Current.Session.Contents("xtxtNombre"), HttpContext.Current.Session.Contents("xObs"))
            Dim ID_ACC_PLT As Integer = DAL.Calidad.Plantilla.traeUltimoFolio(ssUsuario, "qa_acc_plt")
            e.NewValues("ID_ACC_PLT") = ID_ACC_PLT
            Session.Add("ID_ACC_PLT", ID_ACC_PLT)



        End If

    End Sub

    Protected Sub Grid_DataBound(sender As Object, e As EventArgs) Handles Grid.DataBound
        ' Grid.Columns("ID_ACC_PLT").Visible = False
    End Sub


    Private Sub limpiarVariables()
        Session.Remove("ID_ACC_PLT")
        Session.Remove("xCodigo")
        Session.Remove("idObra")
        Session.Remove("xActividad")
        Session.Remove("xtxtNombre")
        Session.Remove("xObs")

    End Sub

    Protected Sub GridVb_RowInserting(sender As Object, e As ASPxDataInsertingEventArgs) Handles GridVb.RowInserting
        Dim ultimoValor As String


        If e.NewValues("ORDEN_VB") Is Nothing Then
            ultimoValor = -1
        Else
            ultimoValor = e.NewValues("ORDEN_VB").ToString
        End If
        e.NewValues("ID_PLT_VB_PRED") = ultimoValor
        Session.Add("ID_PLT_VB_PRED", ultimoValor)


    End Sub

    Protected Sub grillaCheck_InitNewRow(sender As Object, e As ASPxDataInitNewRowEventArgs) Handles grillaCheck.InitNewRow
        'Session.Contents("ID_ACC_PLT")
    End Sub

    Protected Sub grillaCheck_CellEditorInitialize(sender As Object, e As ASPxGridViewEditorEventArgs) Handles grillaCheck.CellEditorInitialize

        e.Editor.ReadOnly = False


    End Sub

    Protected Sub gridMensajes_CellEditorInitialize(sender As Object, e As ASPxGridViewEditorEventArgs) Handles gridMensajes.CellEditorInitialize
        e.Editor.ReadOnly = False
    End Sub



    Protected Sub GridVb_DataBound(sender As Object, e As EventArgs) Handles GridVb.DataBound
        ' GridVb.Columns("ORDEN_VB").Visible = False
    End Sub

    Private Sub Formulario_web19_Init(sender As Object, e As EventArgs) Handles Me.Init

        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Dim str As String = ssUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion

        Me.sqlEtapa.ConnectionString = str
        Me.sqlActividad.ConnectionString = str
        Me.sqlCat_Tip.ConnectionString = str
        Me.sqlCategorias.ConnectionString = str
        Me.sqlTodasTipologias.ConnectionString = str
        Me.sqlTipologias.ConnectionString = str
        Me.sqlGrupos.ConnectionString = str
        Me.sqlListaCheck.ConnectionString = str
        Me.sql_vb.ConnectionString = str
        Me.SqlUsuarios.ConnectionString = str
        Me.SqlDataSource1.ConnectionString = str
        Me.sqlRol.ConnectionString = str
        Me.sqlAnterior.ConnectionString = str
        Me.SqlDataSource2.ConnectionString = str

    End Sub
End Class
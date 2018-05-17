Imports System.IO
Imports DevExpress.Web
Imports DevExpress.Web.Bootstrap
Imports DevExpress.Web.Data
Imports DevExpress.Web.Demos

Public Class Formulario_web16
    Inherits System.Web.UI.Page
    Private Const UploadDirectory As String = "~/archivos/"
    Protected Sub btnNuevaActividad_Click(sender As Object, e As EventArgs) Handles btnNuevaActividad.Click
        Dim newAct As Boolean
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        newAct = DAL.Calidad.Actividad.insertarActividades(ssUsuario, ssUsuario.ID_PARTICULAR, Session.Contents("idObra"), ddlEtapa.SelectedItem.Value, "1", txtAct_Nombre.Value)
        If newAct = True Then
            dllActividad.Text = txtAct_Nombre.Value
            txtEtapa.Text = ddlEtapa.Text

        Else
        End If
    End Sub
    Protected Sub ddlProyectos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlProyectos.SelectedIndexChanged
        Dim codigo As String
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Session.Add("idObra", ddlProyectos.SelectedItem.Value)
        codigo = DAL.Calidad.Actividad.GeneraCodigoActividad(ssUsuario, ddlProyectos.Value)
        codigotexto.Value = codigo
        Session.Add("xCodigo", codigo)
    End Sub
    Protected Sub dllActividad_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dllActividad.SelectedIndexChanged
        Dim nombreEtapa As String
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Session.Add("xActividad", dllActividad.Value)
        nombreEtapa = DAL.Calidad.Actividad.buscarEtapa(ssUsuario, dllActividad.Value)
        'lblObra.Text = ddlProyectos.Text
        'lblPlnNom.Text = txtnombre.Text
        'lblAct.Text = dllActividad.Text
        txtEtapa.Text = nombreEtapa
    End Sub
    Private Sub Formulario_web16_Load(sender As Object, e As EventArgs) Handles Me.Load

        If (Not IsPostBack) Then



            Grid.StartEdit(0)
            '  lblFecha.Text = Date.Today.ToLongDateString
            limpiarVariables()
        End If
    End Sub

#Region "Web method"
    <System.Web.Services.WebMethod()>
    Public Shared Sub guardaPaso_1(idObra As Integer, codPlt As String, nomPlt As String, idAct As Integer, obs As String)
        Try
            Dim newPlantilla As Boolean
            Dim ssUsuario As DAL.Seguridad.UsuarioSistema = HttpContext.Current.Session.Contents("xSSN_USUARIO")
            'newPlantilla = DAL.Calidad.Plantilla.insertarPlantilla(ssUsuario, ssUsuario.ID_MAESTRO, codigotexto.Text, HttpContext.Current.Session.Contents("idObra"), dllActividad.Value, 1, txtnombre.Text, txtMemPbservaciones.Text)
            Dim ID_ACC_PLT As Integer
            If HttpContext.Current.Session("ID_ACC_PLT") Is Nothing Then
                newPlantilla = DAL.Calidad.Plantilla.insertarPlantilla(ssUsuario, ssUsuario.ID_MAESTRO, codPlt, idObra, 1, idAct, nomPlt, obs)
                ID_ACC_PLT = DAL.Calidad.Plantilla.traeUltimoFolio(ssUsuario, "qa_acc_plt")
                HttpContext.Current.Session.Add("ID_ACC_PLT", ID_ACC_PLT)
            Else
                newPlantilla = DAL.Calidad.Plantilla.modificarrPlantilla(ssUsuario, ssUsuario.ID_MAESTRO, HttpContext.Current.Session.Contents("ID_ACC_PLT"), codPlt, idObra, idAct, 1, nomPlt, obs)
            End If
        Catch ex As Exception

        End Try




    End Sub





    'Protected Sub txtnombre_ValueChanged(sender As Object, e As EventArgs) Handles txtnombre.ValueChanged
    '    Session.Add("xtxtNombre", txtnombre.Value)
    'End Sub

    'Protected Sub txtMemPbservaciones_ValueChanged(sender As Object, e As EventArgs) Handles txtMemPbservaciones.ValueChanged
    '    Session.Add("xObs", txtMemPbservaciones.Text)
    'End Sub

    'Protected Sub codigotexto_TextChanged(sender As Object, e As EventArgs) Handles codigotexto.TextChanged
    '    Session.Add("xCodigo", codigotexto.Text)
    'End Sub

    'Protected Sub txtMemPbservaciones_TextChanged(sender As Object, e As EventArgs) Handles txtMemPbservaciones.TextChanged
    '    Session.Add("xObs", txtMemPbservaciones.Text)
    'End Sub
#End Region
    Protected Sub Grid_CellEditorInitialize(ByVal sender As Object, ByVal e As ASPxGridViewEditorEventArgs) Handles Grid.CellEditorInitialize
        CType(e.Editor, ASPxEdit).ValidationSettings.Display = Display.Dynamic
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


    Protected Sub GridVb_CellEditorInitialize(sender As Object, e As ASPxGridViewEditorEventArgs) Handles GridVb.CellEditorInitialize
        e.Editor.ReadOnly = False
        Dim s As ASPxGridView = sender

        If e.Column.FieldName = "ORDEN_VB" And s.IsNewRowEditing Then
            Dim combo = CType(e.Editor, ASPxComboBox)
            combo.SelectedIndex = combo.Items.Count
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


    Protected Sub Grid_InitNewRow(sender As Object, e As ASPxDataInitNewRowEventArgs) Handles Grid.InitNewRow

        If Session("ID_ACC_PLT") Is Nothing Then
            Dim newPlantilla As Boolean
            Dim ssUsuario As DAL.Seguridad.UsuarioSistema = HttpContext.Current.Session.Contents("xSSN_USUARIO")
            newPlantilla = DAL.Calidad.Plantilla.insertarPlantilla(ssUsuario, ssUsuario.ID_PARTICULAR, codigotexto.Text, ddlProyectos.Value, dllActividad.Value, 1, txtnombre.Value, txtMemPbservaciones.Text)
            'newPlantilla = DAL.Calidad.Plantilla.insertarPlantilla(ssUsuario, ssUsuario.ID_MAESTRO, HttpContext.Current.Session.Contents("xCodigo"), HttpContext.Current.Session.Contents("idObra"), HttpContext.Current.Session.Contents("xActividad"), 1, HttpContext.Current.Session.Contents("xtxtNombre"), HttpContext.Current.Session.Contents("xObs"))
            Dim ID_ACC_PLT As Integer = DAL.Calidad.Plantilla.traeUltimoFolio(ssUsuario, "qa_acc_plt")
            e.NewValues("ID_ACC_PLT") = ID_ACC_PLT
            Session.Add("ID_ACC_PLT", ID_ACC_PLT)
        Else
            e.NewValues("ID_ACC_PLT") = Session("ID_ACC_PLT")
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
        'Dim ultimoValor As String
        'If e.NewValues("ORDEN_VB") Is Nothing Then
        '    ultimoValor = -1
        'Else
        '    ultimoValor = e.NewValues("ORDEN_VB").ToString
        'End If
        'e.NewValues("NUEVO_ORDEN") = ultimoValor
        'Session.Add("NUEVO_ORDEN", ultimoValor)
        Session.Add("NUEVO_ORDEN", e.NewValues("NUEVO_ORDEN"))
    End Sub
    Protected Sub grillaCheck_InitNewRow(sender As Object, e As ASPxDataInitNewRowEventArgs) Handles grillaCheck.InitNewRow
        'Session.Contents("ID_ACC_PLT")
    End Sub

    Protected Sub grillaCheck_CellEditorInitialize(sender As Object, e As ASPxGridViewEditorEventArgs) Handles grillaCheck.CellEditorInitialize
        e.Editor.ReadOnly = False
        CType(e.Editor, ASPxEdit).ValidationSettings.Display = Display.Dynamic
    End Sub

    Protected Sub gridMensajes_CellEditorInitialize(sender As Object, e As ASPxGridViewEditorEventArgs) Handles gridMensajes.CellEditorInitialize
        e.Editor.ReadOnly = False
    End Sub


    Protected Sub dllActividad_Validation(sender As Object, e As ValidationEventArgs) Handles dllActividad.Validation
        If IsNothing(e) Then
            e.IsValid = False
        End If
    End Sub
    Protected Sub ddlProyectos_Validation(sender As Object, e As ValidationEventArgs) Handles ddlProyectos.Validation
        If IsNothing(e) Then
            e.IsValid = False
        End If
    End Sub
    Protected Sub grillaCheck_RowValidating(sender As Object, e As ASPxDataValidationEventArgs) Handles grillaCheck.RowValidating
        For Each column As GridViewColumn In grillaCheck.Columns
            Dim dataColumn As GridViewDataColumn = TryCast(column, GridViewDataColumn)
            If dataColumn Is Nothing Then
                Continue For
            End If
            If dataColumn.Index > 5 Then
                If e.NewValues(dataColumn.FieldName) Is Nothing Then
                    e.Errors(dataColumn) = "no puedes, tener campos nulos."
                End If
            End If

        Next column
        Dim contaerror = e.Errors.Count
        If contaerror > 0 Then
            e.RowError = "ingresa todos los campos."
        End If

        If e.NewValues("ID_GRP_CHK") Is Nothing Then
            AddError(e.Errors, grillaCheck.Columns("NOMBRE_GRUPO_CHK"), "debes ingresar o selecionar un grupo.")
        End If

        If e.NewValues("NOMBRE_CHK") IsNot Nothing AndAlso e.NewValues("NOMBRE_CHK").ToString().Length < 2 Then
            AddError(e.Errors, grillaCheck.Columns("NOMBRE_CHK"), "debes ingresar o selecionar un grupo.")
        End If

        If e.NewValues("ESPECIFICACION_CHK") IsNot Nothing AndAlso e.NewValues("ESPECIFICACION_CHK").ToString().Length < 2 Then
            AddError(e.Errors, grillaCheck.Columns("ESPECIFICACION_CHK"), "debes ingresar una especificación del registro.")
        End If

        If e.NewValues("CRITERIO_CONTROL") IsNot Nothing AndAlso e.NewValues("CRITERIO_CONTROL").ToString().Length < 2 Then
            AddError(e.Errors, grillaCheck.Columns("CRITERIO_CONTROL"), "debes ingresar un criterio de validación")
        End If

        If e.NewValues("SOLICITA_ENT") IsNot Nothing AndAlso e.NewValues("SOLICITA_ENT").ToString().Length < 1 Then
            AddError(e.Errors, grillaCheck.Columns("SOLICITA_ENT"), "debes definir si es requerido algun tipo de registro.")
        End If

        If e.NewValues("TIPO_DATO_ENT") IsNot Nothing AndAlso e.NewValues("TIPO_DATO_ENT").ToString().Length < 1 Then
            AddError(e.Errors, grillaCheck.Columns("TIPO_DATO_ENT"), "debes definir el tipo de datos de entrada.")
        End If


        If String.IsNullOrEmpty(e.RowError) AndAlso contaerror > 0 Then
            e.RowError = "ingresa valores correctos."
        End If

    End Sub

    Protected Sub grillaCheck_HtmlRowPrepared(sender As Object, e As ASPxGridViewTableRowEventArgs) Handles grillaCheck.HtmlRowPrepared
        If (Not Object.Equals(e.RowType, GridViewRowType.Data)) Then
            Return
        End If
        Dim hasError As Boolean = String.IsNullOrEmpty(e.GetValue("NOMBRE_CHK").ToString())
        hasError = hasError OrElse String.IsNullOrEmpty(e.GetValue("ID_GRP_CHK").ToString())
        hasError = hasError OrElse String.IsNullOrEmpty(e.GetValue("SOLICITA_ENT").ToString())
        hasError = hasError OrElse String.IsNullOrEmpty(e.GetValue("TIPO_DATO_ENT").ToString())
        hasError = hasError OrElse String.IsNullOrEmpty(e.GetValue("CRITERIO_CONTROL").ToString())
        hasError = hasError OrElse String.IsNullOrEmpty(e.GetValue("ESPECIFICACION_CHK").ToString())
        If hasError Then
            e.Row.ForeColor = System.Drawing.Color.Red
        End If
    End Sub

    Protected Sub grillaCheck_StartRowEditing(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxStartRowEditingEventArgs)
        If (Not grillaCheck.IsNewRowEditing) Then
            grillaCheck.DoRowValidation()
        End If
    End Sub

    Private Sub AddError(ByVal errors As Dictionary(Of GridViewColumn, String), ByVal column As GridViewColumn, ByVal errorText As String)
        If errors.ContainsKey(column) Then
            Return
        End If
        errors(column) = errorText
    End Sub

    Private Sub ddlProyectos_DataBinding(sender As Object, e As EventArgs) Handles ddlProyectos.DataBinding

        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Me.sqlObra.ConnectionString = ssUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion
        Me.ddlProyectos.DataSource = sqlObra

    End Sub

    Private Sub dllActividad_DataBinding(sender As Object, e As EventArgs) Handles dllActividad.DataBinding

        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Me.sqlActividad.ConnectionString = ssUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion
        Me.dllActividad.DataSource = sqlActividad

    End Sub

    Private Sub ddlEtapa_DataBinding(sender As Object, e As EventArgs) Handles ddlEtapa.DataBinding

        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Me.sqlEtapa.ConnectionString = ssUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion
        Me.ddlEtapa.DataSource = sqlEtapa

    End Sub

    Private Sub dllActividad_Init(sender As Object, e As EventArgs) Handles dllActividad.Init



    End Sub

    Private Sub Formulario_web16_Init(sender As Object, e As EventArgs) Handles Me.Init

        Me.ddlProyectos.DataBind()
        Me.dllActividad.DataBind()
        Me.ddlEtapa.DataBind()

        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Dim str As String = ssUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion

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
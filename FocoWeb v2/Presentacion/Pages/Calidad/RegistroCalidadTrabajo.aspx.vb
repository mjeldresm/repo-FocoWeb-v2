Imports System.ComponentModel
Imports System.Drawing
Imports System.IO
Imports DevExpress.Export
Imports DevExpress.Web
Imports DevExpress.Web.Data
Imports DevExpress.Web.Demos
Imports DevExpress.Web.Internal
Imports EL

Public Class Formulario_web112
    Inherits System.Web.UI.Page

#Region "grilla check"
    Public ReadOnly Property ListSource() As List(Of Calidad.Checklist)
        Get
            Dim idRegistro As String = Request.Params("idRegistro")

            Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
            If Session("DataSourceCheckList") Is Nothing Then
                Session("DataSourceCheckList") = DAL.Calidad.Checklist.traerRegistro(ssUsuario, idRegistro)
            End If
            Return TryCast(Session("DataSourceCheckList"), List(Of Calidad.Checklist))
        End Get
    End Property
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        grilla_check.SettingsEditing.BatchEditSettings.EditMode = GridViewBatchEditMode.Cell

        'grilla_check.Settings.ShowStatusBar = GridViewStatusBarMode.Hidden

        manejaArchivos.SettingsFileList.View = CurrentView
        Dim isDetailsView As Boolean = CurrentView.Equals(FileListView.Details)
        SetFileManagerToolbarItemCheckedState("ChangeView-Thumbnails", (Not isDetailsView))
        SetFileManagerToolbarItemCheckedState("ChangeView-Details", isDetailsView)
        If Page.IsPostBack = False Then

            Session.Add("historial", False)
            Dim idRegistro As String = Request.Params("idRegistro")
            Session.Add("idregistro", idRegistro)

            'Dim carpeta As String = "/archivos/" & idRegistro & "/"
            Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
            Dim dsregistro As DataSet = DAL.registro.registro.traerRegistro(ssUsuario, idRegistro)
            Session.Remove("DataSourceCheckList")
            grilla_check.DataBind()

            Dim carpetaRoot As String
            Dim carpetaThumbnailFolder As String
            'lblNombreObra.Text = dsRegistro.Tables(0).Rows(0).Item("NOM_PROYECTO").ToString
            lblActividad.Text = dsregistro.Tables(0).Rows(0).Item("NOMBRE_ACT").ToString
            lblEtapa.Text = dsregistro.Tables(0).Rows(0).Item("NOMBRE_ETA").ToString
            lblRecinto.Text = dsregistro.Tables(0).Rows(0).Item("NOMBRE_UCO").ToString
            lblRaiz.Text = dsregistro.Tables(0).Rows(0).Item("RAIZ").ToString
            lblFechaCrea.Text = dsregistro.Tables(0).Rows(0).Item("FECHA_CREA").ToString
            lblvb.Text = dsregistro.Tables(0).Rows(0).Item("FECHA_ULT_VB").ToString
            lblNivel.Text = dsregistro.Tables(0).Rows(0).Item("NIVEL_VB").ToString
            lblDias.Text = dsregistro.Tables(0).Rows(0).Item("DIAS_DIF").ToString

            If ssUsuario.NickName.ToUpper = "DEMOADMIN" Or ssUsuario.NickName.ToUpper = "ADMIN" Then
                carpetaRoot = "/Archivos/DEMO CALIDAD/" & Trim(idRegistro) & "/"
                carpetaThumbnailFolder = "/Archivos/TEMP/DEMO CALIDAD/" & idRegistro & "/"

            Else
                carpetaRoot = "/Archivos/" & ssUsuario.EmpresaSelected.Nombre & "/" & idRegistro & "/" & CType(dsregistro.Tables(0).Rows(0).Item("ESTADO_VB"), Integer) + 1 & "/"
                carpetaThumbnailFolder = "/archivos/TEMP/" & ssUsuario.EmpresaSelected.Nombre & "/" & idRegistro & "/" & CType(dsregistro.Tables(0).Rows(0).Item("ESTADO_VB"), Integer) + 1 & "/"
            End If

            If Not Directory.Exists(Server.MapPath(carpetaRoot)) Then
                Directory.CreateDirectory(Server.MapPath(carpetaRoot))
                Session.Add("xCarpeta", Directory.CreateDirectory(Server.MapPath(carpetaRoot)))
            End If

            manejaArchivos.Settings.RootFolder = carpetaRoot
            manejaArchivos.Settings.ThumbnailFolder = carpetaThumbnailFolder
            'Else
            '    ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta();", True)
        End If
    End Sub
    Protected Sub grilla_check_DataBinding(sender As Object, e As EventArgs) Handles grilla_check.DataBinding
        grilla_check.DataSource = ListSource
    End Sub
    Protected Sub grilla_check_CellEditorInitialize(sender As Object, e As DevExpress.Web.ASPxGridViewEditorEventArgs) Handles grilla_check.CellEditorInitialize
        If TypeOf e.Editor Is ASPxCheckBox Then
            Dim editor As ASPxCheckBox = CType(e.Editor, ASPxCheckBox)
            editor.ClientSideEvents.CheckedChanged = "checkedChanged"
        End If
    End Sub



#Region "Web method"
    <System.Web.Services.WebMethod()>
    Public Shared Sub finalizar()
        Try
            Dim ssUsuario As DAL.Seguridad.UsuarioSistema = HttpContext.Current.Session.Contents("xSSN_USUARIO")
            Dim idRegistro As String = HttpContext.Current.Session.Contents("idRegistro")
            Dim dsRespuesta As DataSet = DAL.registro.registro.actualizaEstado(ssUsuario, idRegistro)
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

    Protected Sub grilla_check_BatchUpdate(sender As Object, e As ASPxDataBatchUpdateEventArgs) Handles grilla_check.BatchUpdate




        Try
            For Each args In e.UpdateValues
                UpdateItemList(args.Keys, args.NewValues)
            Next args
            e.Handled = True
        Catch ex As Exception
        End Try
        'If Session.Contents("Finalizar") Then btnCerrarProtocolo_Click(Nothing, Nothing)
    End Sub
    Protected Sub grilla_check_ToolbarItemClick(source As Object, e As Data.ASPxGridViewToolbarItemClickEventArgs) Handles grilla_check.ToolbarItemClick
        Dim grid As ASPxGridView = CType(source, ASPxGridView)
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Dim idRegistro As String = Request.Params("idRegistro")
        Session.Add("Finalizar", False)
        Select Case e.Item.Name
            Case "CustomExportToXLS"
                grid.ExportXlsToResponse(New DevExpress.XtraPrinting.XlsExportOptionsEx With {.ExportType = ExportType.WYSIWYG})
            Case "CustomExportToXLSX"
                grid.ExportXlsxToResponse(New DevExpress.XtraPrinting.XlsxExportOptionsEx With {.ExportType = ExportType.WYSIWYG})
            Case "historial"
                If Session.Contents("historial") = False Then
                    grid.DetailRows.ExpandAllRows()
                    Session.Add("historial", True)
                Else
                    grid.DetailRows.CollapseAllRows()
                    Session.Add("historial", False)
                End If
            Case "finalizar"
                Session.Add("Finalizar", True)
            Case "finalizaP"
                'grilla_check.UpdateEdit()
                btnCerrarProtocolo_Click(Nothing, Nothing)
            Case Else
        End Select
    End Sub

    Protected Sub btnCerrarProtocolo_Click(sender As Object, e As EventArgs) Handles btnCerrarProtocolo.Click
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Dim idRegistro As String = Request.Params("idRegistro")
        Dim dsRespuesta As DataSet = DAL.registro.registro.actualizaEstado(ssUsuario, idRegistro)
        'grilla_check.DataBind()
        If CType(dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB"), Integer) = 0 Then
            ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=0);", True)
            Exit Sub
        End If
        If dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB") = -1 Then
            ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=-1);", True)
            Exit Sub
        End If
        If dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB") = -3 Then
            ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=-3);", True)
            Exit Sub
        End If
        If dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB") = 1 Then
            ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=1);", True)
            'ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=1);")

        End If
        If dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB") = 2 Then
            ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=2);", True)

        End If
        If dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB") = 3 Then
            ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=3);", True)
            'ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=1);")

        End If

        'Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        'Dim idRegistro As String = Request.Params("idRegistro")
        'Dim dsRespuesta As DataSet = DAL.registro.registro.actualizaEstado(ssUsuario, idRegistro)
        'If CType(dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB"), Integer) = 0 Then
        '    ScriptManager.RegisterClientScriptBlock(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=0);", True)
        '    'Exit Sub
        'End If
        'If dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB") = -1 Then
        '    ScriptManager.RegisterClientScriptBlock(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=-1);", True)
        '    'Exit Sub
        'End If
        'If dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB") = -3 Then
        '    ScriptManager.RegisterClientScriptBlock(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=-3);", True)
        '    'Exit Sub
        'End If
        'If dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB") = 1 Then
        '    ScriptManager.RegisterClientScriptBlock(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=1);", True)
        '    'ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=1);")

        'End If
        'If dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB") = 2 Then
        '    ScriptManager.RegisterClientScriptBlock(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=2);", True)

        'End If
        'If dsRespuesta.Tables(0).Rows(0).Item("ESTADO_APROB") = 3 Then
        '    ScriptManager.RegisterClientScriptBlock(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=3);", True)
        '    'ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=1);")

        'End If


        'btnCerrarProtocolo_Click(Nothing, Nothing)



    End Sub
    Protected Sub grillaHistorial_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Dim grid = (TryCast(sender, ASPxGridView))
        Dim idCheck = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
        Dim datos As New DAL.Calidad.Historial()
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        grid.DataSource = datos.getHistorial(ssUsuario, idCheck)



    End Sub

    Protected Sub grilla_check_HtmlRowPrepared(sender As Object, e As ASPxGridViewTableRowEventArgs) Handles grilla_check.HtmlRowPrepared
        Dim grid = (TryCast(sender, ASPxGridView))
        If e.RowType <> GridViewRowType.Data Then
            grid.CancelEdit()
            Return
        End If
        Dim check1 As Boolean = e.GetValue("ESTADO_APROBACION")
        Dim check2 As Boolean = e.GetValue("ESTADO_CON_FALLOS")
        Dim check3 As Boolean = e.GetValue("ESTADO_NA")
        If check1 Then
            e.Row.ForeColor = System.Drawing.Color.Green
        End If
        If check2 Then
            e.Row.ForeColor = System.Drawing.Color.Red
            'ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=-1);", True)

        End If
        If check3 Then
            e.Row.ForeColor = System.Drawing.Color.Silver
            'ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta(resp=-3);", True)
        End If

    End Sub
    Protected Function UpdateItemList(ByVal keys As OrderedDictionary, ByVal newValues As OrderedDictionary) As EL.Calidad.Checklist
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Try
            Dim id_check As Integer = Convert.ToInt32(keys("ID_REG_CHK"))
            Dim rowToUpdate As EL.Calidad.Checklist = ListSource.Find(Function(i) i.ID_REG_CHK = id_check)
            Dim estado_ListaChekeo As Integer
            If newValues("ESTADO_APROBACION") = True Then
                rowToUpdate.ESTADO_APROBACION = True
                rowToUpdate.ESTADO_NO_REVISADO = False
                rowToUpdate.ESTADO_CON_FALLOS = False
                rowToUpdate.ESTADO_NA = False
                estado_ListaChekeo = 1
            End If
            If newValues("ESTADO_CON_FALLOS") = True Then
                rowToUpdate.ESTADO_CON_FALLOS = True
                rowToUpdate.ESTADO_NO_REVISADO = False
                rowToUpdate.ESTADO_NA = False
                rowToUpdate.ESTADO_APROBACION = False
                estado_ListaChekeo = -1

            End If
            If newValues("ESTADO_NA") = True Then
                rowToUpdate.ESTADO_NA = True
                rowToUpdate.ESTADO_NO_REVISADO = False
                rowToUpdate.ESTADO_CON_FALLOS = False
                rowToUpdate.ESTADO_APROBACION = False
                estado_ListaChekeo = -2
            End If
            If newValues("ESTADO_NO_REVISADO") = True Then
                rowToUpdate.ESTADO_NO_REVISADO = True
                rowToUpdate.ESTADO_NA = False
                rowToUpdate.ESTADO_CON_FALLOS = False
                rowToUpdate.ESTADO_APROBACION = False
                estado_ListaChekeo = 0
            End If

            rowToUpdate.OBSERVACION_CHK = Convert.ToString(newValues("OBSERVACION_CHK"))
            rowToUpdate.ID_USU = Convert.ToInt16(ssUsuario.ID_PARTICULAR)
            DAL.Calidad.Checklist.grabarRegistro(ssUsuario, id_check, estado_ListaChekeo, rowToUpdate.OBSERVACION_CHK, ssUsuario.ID_PARTICULAR)
            Return rowToUpdate
        Catch ex As Exception
        End Try
    End Function



#End Region


#Region "MANEJA ARCHIVOS"
    Private extensionsDisplayName_Renamed As Dictionary(Of String, String)
    Private ReadOnly Property ExtensionsDisplayName() As Dictionary(Of String, String)
        Get
            If extensionsDisplayName_Renamed Is Nothing Then
                extensionsDisplayName_Renamed = XDocument.Load(MapPath("~/archivos/ExtensionsDisplayName.xml")).Descendants("Extension").ToDictionary(Function(n) n.Attribute("Extension").Value, Function(n) n.Attribute("DisplayName").Value)
            End If
            Return extensionsDisplayName_Renamed
        End Get
    End Property
    Private Property CurrentView() As FileListView
        Get
            Dim view = Session("View")
            Return If(view Is Nothing, FileListView.Thumbnails, CType(Session("View"), FileListView))
        End Get
        Set(ByVal value As FileListView)
            manejaArchivos.SettingsFileList.View = value
            Session("View") = value
        End Set
    End Property


    Protected Sub manejaArchivos_FileUploading(source As Object, e As FileManagerFileUploadEventArgs) Handles manejaArchivos.FileUploading
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Dim idRegistro As String = Request.Params("idRegistro")
        Dim dsregistro As DataSet = DAL.registro.registro.traerRegistro(ssUsuario, idRegistro)
        Dim result As Boolean = DAL.Calidad.Archivo.insertarArchivo(ssUsuario, e.File.Folder.FullName, e.File.Name.ToUpper, idRegistro, CType(dsregistro.Tables(0).Rows(0).Item("ESTADO_VB"), Integer) + 1)
    End Sub
    Protected Sub manejaArchivos_ItemDeleting(source As Object, e As FileManagerItemDeleteEventArgs) Handles manejaArchivos.ItemDeleting
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Dim idRegistro As String = Request.Params("idRegistro")
        Dim result As Boolean = DAL.Calidad.Archivo.modificarEstadoADJ(ssUsuario, idRegistro, e.Item.Name.ToString)
    End Sub

    Protected Sub manejaArchivos_CustomCallback(ByVal source As Object, ByVal e As CallbackEventArgsBase)
        CurrentView = CType(System.Enum.Parse(GetType(FileListView), e.Parameter.ToString()), FileListView)
    End Sub
    Protected Sub PopupControl_WindowCallback(ByVal source As Object, ByVal e As PopupWindowCallbackArgs)
        Select Case e.Parameter
            Case "Files"
                Dim file = manejaArchivos.SelectedFile
                Dim fileInfo = New FileInfo(MapPath(file.FullName))

                PopupControl.JSProperties("cpHeaderText") = Path.GetFileNameWithoutExtension(fileInfo.FullName)
                Type.Text = ExtensionsDisplayName(file.Extension)
                Size.Text = file.Length.ToString("#,#") & " bytes"
                Created.Text = fileInfo.CreationTime.ToString("U")
                Modified.Text = fileInfo.LastWriteTime.ToString("U")
                Accessed.Text = fileInfo.LastAccessTime.ToString("U")
                FormLayout.FindItemOrGroupByName("Contains").Visible = False
                SetFileManagerItemInfo(file)

        End Select
    End Sub

    Private Sub SetFileManagerItemInfo(ByVal item As FileManagerItem)
        PopupControl.JSProperties("cpHeaderText") &= "Properties"
        Name.Text = item.Name
        Location.Text = item.FullName
        RelativeLocation.Text = item.RelativeName
    End Sub
    Private Sub SetFileManagerToolbarItemCheckedState(ByVal commandName As String, ByVal checkedState As Boolean)
        Dim item = manejaArchivos.SettingsToolbar.Items.FindByCommandName(commandName)
        TryCast(item, FileManagerToolbarCustomButton).Checked = checkedState
    End Sub

    Private Sub ValidateSiteEdit(ByVal e As FileManagerActionEventArgsBase)
        e.Cancel = Utils.IsSiteMode
        e.ErrorText = Utils.GetReadOnlyMessageText()
    End Sub

    Protected Sub grilla_check_RowUpdated(sender As Object, e As ASPxDataUpdatedEventArgs) Handles grilla_check.RowUpdated

    End Sub






#End Region

End Class

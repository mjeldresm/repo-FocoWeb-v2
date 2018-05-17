Imports DevExpress.Data
Imports DevExpress.Data.Filtering
Imports DevExpress.Web
Imports DevExpress.Web.ASPxTreeList
Imports DevExpress.Web.TokenBoxProperties


Public Class Formulario_web18
    Inherits System.Web.UI.Page

    Private Const NodosSelecionados As String = "NodosSelecionados"
    Private Const NodosSelecionadosNombre As String = "NodosSelecionadosNombre"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim idPlantilla As String = Request.Params("idPlantilla")
        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Dim xPlantilla As DataSet = DAL.Calidad.Plantilla.traerPlantilla(ssUsuario, Session.Contents("idObra"), idPlantilla)
        lblCodigoPlantilla.Text = xPlantilla.Tables(0).Rows(0).Item("CODIGO").ToString
        Session.Add("ID_ACC_PLT", idPlantilla)
        lblNombrePLantilla.Text = xPlantilla.Tables(0).Rows(0).Item("NOMBRE_ACC").ToString
        lblActividad.Text = xPlantilla.Tables(0).Rows(0).Item("ACTIVIDAD").ToString
        lblEtapa.Text = xPlantilla.Tables(0).Rows(0).Item("ETAPA").ToString
        lblObs.Text = xPlantilla.Tables(0).Rows(0).Item("OBS_ACC").ToString
        lblNombreObra.Text = Session.Contents("nombreObra")

        treeUcos.DataBind()
        ASPxVerticalGrid1.DataBind()

        If Page.IsPostBack = False Then

            treeUcos.Nodes.Item(0).Expanded = True
            treeUcos.UnselectAll()

        End If
    End Sub

    Private Sub CargarTree()

        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Me.SqlDataSource1.ConnectionString = ssUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion
        Me.treeUcos.DataSource = SqlDataSource1

    End Sub

    Private Sub CargarVerticalGrid()

        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Me.sqlRol_vb.ConnectionString = ssUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion
        Me.ASPxVerticalGrid1.DataSource = sqlRol_vb

    End Sub


    Private Sub SetNodeSelectionSettings()
        Dim iterator As TreeListNodeIterator = treeUcos.CreateNodeIterator()
        Dim node As TreeListNode
        Do
            node = iterator.GetNext()
            If node Is Nothing Then
                Exit Do
            End If
            node.AllowSelect = Not node.HasChildren
        Loop
    End Sub
    Protected Sub treeUcos_DataBound(sender As Object, e As EventArgs) Handles treeUcos.DataBound
        SetNodeSelectionSettings()
    End Sub
    Protected Sub treeUcos_CustomSummaryCalculate(sender As Object, e As TreeListCustomSummaryEventArgs) Handles treeUcos.CustomSummaryCalculate
        Select Case e.SummaryProcess
            Case CustomSummaryProcess.Start
                e.Value = CDec(0)
            Case CustomSummaryProcess.Calculate
                If e.Node.Selected Then
                    e.Value = CDec(e.Value) + 1
                End If
        End Select
    End Sub

    Protected Sub FilterOutNonSelectedRows(ByVal listUco As ASPxTreeList, ByVal selectedRows As Boolean)
        Dim selectionCriteria As CriteriaOperator = New InOperator(listUco.KeyFieldName, listUco.GetSelectedNodes().Select(Function(node) listUco.KeyFieldName))
        If (Not selectedRows) Then
            selectionCriteria = selectionCriteria.Not()
        End If
        listUco.FilterExpression = (GroupOperator.Combine(GroupOperatorType.And, selectionCriteria)).ToString()
    End Sub
    Private Sub SaveSelection()
        Dim chkUcos As String = ""
        Session(NodosSelecionados) = treeUcos.GetSelectedNodes().Select(Function(node) node.Key)
        Session(NodosSelecionadosNombre) = treeUcos.GetSelectedNodes().Select(Function(node) node.Item("NOMBRE_UCO").ToString)

        Dim rowKeys = DirectCast(Session(NodosSelecionados), IEnumerable(Of String))
        Dim rowNombres = DirectCast(Session(NodosSelecionadosNombre), IEnumerable(Of String))

    End Sub
    Protected Sub treeUcos_CustomCallback(sender As Object, e As TreeListCustomCallbackEventArgs) Handles treeUcos.CustomCallback
        Select Case e.Argument
            Case "Save"
                SaveSelection()
        End Select
        Dim listUco As ASPxTreeList = CType(sender, ASPxTreeList)
        Select Case e.Argument
            Case "All"
                listUco.FilterExpression = String.Empty
            Case "Selected"
                FilterOutNonSelectedRows(listUco, True)
            Case "UnSelected"
                FilterOutNonSelectedRows(listUco, False)
        End Select
        listUco.DataBind()

    End Sub
    Protected Sub treeUcos_CustomDataCallback(sender As Object, e As TreeListCustomDataCallbackEventArgs) Handles treeUcos.CustomDataCallback
        e.Result = treeUcos.SelectionCount.ToString()
    End Sub

    Protected Sub btnGuardarRecintos_Click(sender As Object, e As EventArgs) Handles btnGuardarRecintos.Click
        Dim USUARIOS = myUsuarios.Value
        Dim chkUcos As String = ""
        Session(NodosSelecionados) = treeUcos.GetSelectedNodes().Select(Function(node) node.Key)
        Dim rowKeys = DirectCast(Session(NodosSelecionados), IEnumerable(Of String))
        Dim query_ucos As IEnumerable(Of String) = rowKeys.Where(Function(recintos) recintos.Length < 6)
        Dim output As New System.Text.StringBuilder
        For Each recintos As String In query_ucos
            chkUcos = chkUcos & ";" & recintos
        Next
        Dim plantilla As Integer = Request.Params("idPlantilla")
        Dim result As Boolean = DAL.registro.registro.insertarRegistrosCalidad(Session.Contents("xSSN_USUARIO"), plantilla, Trim(chkUcos), Trim(USUARIOS).Remove(USUARIOS.Length - 1))
        If result Then
            ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta", "myFuncionAlerta();", True)
            'Response.Redirect("RegistrosCalidadListado.aspx", True)

        End If
    End Sub

    Private Sub Formulario_web18_LoadComplete(sender As Object, e As EventArgs) Handles Me.LoadComplete


    End Sub

    Private Sub treeUcos_DataBinding(sender As Object, e As EventArgs) Handles treeUcos.DataBinding
        CargarTree()
    End Sub

    Private Sub ASPxVerticalGrid1_DataBinding(sender As Object, e As EventArgs) Handles ASPxVerticalGrid1.DataBinding

        CargarVerticalGrid()
    End Sub

    Private Sub sqlUsuarios_DataBinding(sender As Object, e As EventArgs) Handles sqlUsuarios.DataBinding


        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Me.sqlUsuarios.ConnectionString = ssUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion

    End Sub

    Private Sub Formulario_web18_Error(sender As Object, e As EventArgs) Handles Me.[Error]

    End Sub

    Private Sub Formulario_web18_Init(sender As Object, e As EventArgs) Handles Me.Init

        Dim ssUsuario As DAL.Seguridad.UsuarioSistema = Session.Contents("xSSN_USUARIO")
        Me.sqlUsuarios.ConnectionString = ssUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion

    End Sub
End Class
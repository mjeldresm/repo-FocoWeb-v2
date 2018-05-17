
Imports Microsoft.IdentityModel.Clients.ActiveDirectory
Imports Microsoft.PowerBI.Api.V2
Imports Microsoft.PowerBI.Api.V2.Models
Imports Microsoft.Rest
Imports System.Threading.Tasks
Imports EL
Imports DAL
Imports TSHAK.Components
Imports DAL.Seguridad
Imports EL.Seguridad

Public Class FrmReportBI
    Inherits System.Web.UI.Page

    Private ReadOnly Username As String = ConfigurationManager.AppSettings("pbiUsername")
    Private ReadOnly Password As String = ConfigurationManager.AppSettings("pbiPassword")
    Private ReadOnly AuthorityUrl As String = ConfigurationManager.AppSettings("authorityUrl")
    Private ReadOnly ResourceUrl As String = ConfigurationManager.AppSettings("resourceUrl")
    Private ReadOnly pClientId As String = ConfigurationManager.AppSettings("clientId")
    Private ReadOnly ApiUrl As String = ConfigurationManager.AppSettings("apiUrl")
    'Private ReadOnly GroupId As String = Usuario.EmpresaSelected.groupId 'ConfigurationManager.AppSettings("groupId")
    'Private ReadOnly ReportId As String = ConfigurationManager.AppSettings("reportId")
    Private ReportId As String = ""
    Private GroupId As String = ""


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            If Not Page.IsPostBack Then
                Dim rq As SecureQueryString
                Dim reportBI As New TipoReporte.ReporteBI

                GroupId = UsuarioSistema.

                EmpresaSelected.groupId

                If GroupId = "" Then
                    ' MostrarMensaje("No existe información para mostrar.")
                    Return
                End If

                If Request.QueryString("id") <> "" Then
                    rq = SUL.Utilidades.SecureURL.Desencriptar(Request.QueryString("id"))
                    reportBI = DAL.Seguridad.Opcion.Obtener_Reporte_BI(Usuario, rq("ri"))
                    nomReport.InnerText = reportBI.nombreReport
                    If reportBI.opcDet = 1 Then
                        ReportId = DAL.Seguridad.Opcion.ObtenerReportID_OpcionDetalle(Usuario, rq("ri"), UsuarioSistema.EmpresaSelected.ObraIDSelected)
                    Else
                        ReportId = reportBI.reportID
                        tabFil1.Value = reportBI.tabFil1
                        CampoFil1.Value = reportBI.campoFil1
                        If reportBI.valFil1 = "ID_OBR" Then
                            valFil1.Value = UsuarioSistema.EmpresaSelected.ObraIDSelected
                        End If
                        tabFil2.Value = reportBI.tabFil2
                        CampoFil2.Value = reportBI.campoFil2
                        If reportBI.valFil2 = "FECHA_BAL" Then
                            valFil2.Value = Format(UsuarioSistema.EmpresaSelected.FechaCierreBalance, "yyyy-MM-dd")
                        End If
                    End If

                End If

                If ReportId <> "" Then
                    RegisterAsyncTask(New PageAsyncTask(Function() GetGizmosSvcAsync()))
                Else
                    ' MostrarMensaje("No existe información para mostrar.")
                End If
            End If
        Catch ex As Exception
            'MostrarError("No se puede cargar el reporte", ,

        End Try


    End Sub


    Private Async Function GetGizmosSvcAsync() As Task
        Await Task.Run(Function() EmbedReport("", ""))
    End Function
    Public Async Function EmbedReport(ByVal vusername As String, ByVal vroles As String) As Task(Of EmbedConfig)
        'Public Task(Of Function ActionResult)(ByVal vusername As String, ByVal vroles As String) As async
        'Public Task(Of Function ActionResult)(username As String, roles As String) As async
        Dim result As New EmbedConfig()

        If GroupId = "" Or ReportId = "" Then
            Return result
        End If

        result.Username = vusername
        result.Roles = vroles

        Dim credential As New UserPasswordCredential(Username, Password)

        Dim authenticationContext As New AuthenticationContext(AuthorityUrl)
        Dim authenticationResult As AuthenticationResult = Await authenticationContext.AcquireTokenAsync(ResourceUrl, pClientId, credential)

        If IsDBNull(authenticationResult) = True Then
            Return result
        End If

        Dim tokenCredentials As New TokenCredentials(authenticationResult.AccessToken, "Bearer")
        Using client = New PowerBIClient(New Uri(ApiUrl), tokenCredentials)
            Dim reports = Await client.Reports.GetReportsInGroupAsync(GroupId)

            Dim report As Report
            If String.IsNullOrEmpty(ReportId) Then
                ' Get the first report in the group.
                report = reports.Value.FirstOrDefault()
            Else
                report = reports.Value.FirstOrDefault(Function(r) r.Id = ReportId)
            End If
            If IsDBNull(report) Then
                result.ErrorMessage = "Group has no reports."
                Return result
            End If

            Dim datasets As Dataset = Await client.Datasets.GetDatasetByIdInGroupAsync(GroupId, report.DatasetId)
            result.IsEffectiveIdentityRequired = datasets.IsEffectiveIdentityRequired
            result.IsEffectiveIdentityRolesRequired = datasets.IsEffectiveIdentityRolesRequired
            Dim generateTokenRequestParameters As GenerateTokenRequest

            If Not String.IsNullOrEmpty(vusername) Then
                Dim rls = New EffectiveIdentity(vusername, New List(Of String)(New String() {report.DatasetId}))
                If Not String.IsNullOrWhiteSpace(vroles) Then
                    Dim rolesList = New List(Of String)()
                    rolesList.AddRange(vroles.Split(","c))
                    rls.Roles = rolesList
                End If
                ' Generate Embed Token with effective identities.
                generateTokenRequestParameters = New GenerateTokenRequest(accessLevel:="view", identities:=New List(Of EffectiveIdentity)(New EffectiveIdentity() {rls}))
            Else
                '// Generate Embed Token for reports without effective identities.
                generateTokenRequestParameters = New GenerateTokenRequest(accessLevel:="view")
            End If
            Dim tokenResponse = Await client.Reports.GenerateTokenInGroupAsync(GroupId, report.Id, generateTokenRequestParameters)
            If IsDBNull(tokenResponse) = Nothing Then
                result.ErrorMessage = "Failed to generate embed token."
            End If

            result.EmbedToken = tokenResponse
            result.EmbedUrl = report.EmbedUrl
            result.Id = report.Id
            accesToken.Value = result.EmbedToken.Token
            embedUrl.Value = result.EmbedUrl
            embedReportId.Value = result.Id
            Return result
        End Using
    End Function

    Private Sub btnVolver_Click(sender As Object, e As ImageClickEventArgs) Handles btnVolver.Click
        Response.Redirect(UsuarioSistema.EmpresaSelected.paginaInicio & "?Volver=False", False)
    End Sub
End Class
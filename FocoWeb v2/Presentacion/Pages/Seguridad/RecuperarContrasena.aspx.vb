Imports System.Net
Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Windows.Forms
Public Class RecuperarContraseña
    Inherits System.Web.UI.Page

    Private fpass As Object

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Ingresar_Click(sender As Object, e As EventArgs)

        Try
            Dim dtEmpresas As DataTable = New DataTable
            ' Dim ConeCt As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("casa_Demo_Beltec_DesarrolloConnectionString").ConnectionString)
            Dim clave As DataSet = DAL.Seguridad.Usuario.RecuperarClave(fname.Value.ToLower, ConfigurationManager.ConnectionStrings("Maestro").ConnectionString)
            Session.Add("clave", clave.Tables(0).Rows(0).Item("COD_REC_PASS").ToString)
            Session.Add("id_usu", clave.Tables(0).Rows(0).Item("ID_USU").ToString)
            Session.Add("tiempoCodigo", clave.Tables(0).Rows(0).Item("FECHA_ENV_COD"))

            Dim email As String = clave.Tables(0).Rows(0).Item("EMAIL_USU").ToString
            lblTexto.Text = email

            Dim id_usu = clave.Tables(0).Rows(0).Item("ID_USU").ToString
            If clave.Tables(0).Rows(0).Item("ID_USU").ToString = "0" Then
                Dim scriptKey As String = "UniqueKeyForThisScript"
                Dim scrypt As String = "<script type='text/javascript'>$.notify('Los campos no pueden estar vacíos.', 'error');</script>"
                ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta(resp=0);", "myFuncionAlerta(resp=0);", True)                'LBLErrRecPass.ForeColor = Color.Red

                'LBLErrRecPass.Text = "El usuario que ingresaste no existe en nuestro registro,inténtalo nuevamente."
                'LBLErrRecPass.ForeColor = Color.Red
                'DIV1usuario.Attributes.Add("style", "display:normal")

            ElseIf clave.Tables(0).Rows(0).Item("EMAIL_USU").ToString = "" Then
                ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta(resp=0);", "myFuncionAlerta(resp=1);", True)                'LBLErrRecPass.ForeColor = Color.Red

                'LBLErrRecPass.Text = "Tu usuario no tiene configurado un correo electrónico contáctate a soporte@focoenobra.cl."
                'LBLErrRecPass.ForeColor = Color.Red
                DAL.Seguridad.Usuario.NotificarRecup(id_usu.ToLower, ConfigurationManager.ConnectionStrings("Maestro").ConnectionString)


            Else
                LBLErrRecPass.Text = "Hemos enviado un código a su Correo electrònico."
                LBLErrRecPass.ForeColor = Color.Blue
                DIVcodigo.Attributes.Add("style", "display:normal")
                DIV1usuario.Attributes.Add("style", "display:none")

            End If

        Catch sqlEx As SqlException
            'Alerta(sqlEx.Message)
            Exit Sub
        Catch ex As Exception
            ' MostrarError(ex.Message, , ex)
            Exit Sub
        End Try
    End Sub

    Private Sub Alerta(v As String)
        Throw New NotImplementedException()
    End Sub

    Protected Sub Validar_codigo(sender As Object, e As EventArgs)
        Try
            Dim dtEmpresas As DataTable = New DataTable
            ' Dim ConeCt As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("casa_Demo_Beltec_DesarrolloConnectionString").ConnectionString)
            ' Dim clave As String = DAL.Seguridad.Usuario.Validarcodigo(fname.Value.ToLower, ConfigurationManager.ConnectionStrings("casa_Demo_Beltec_DesarrolloConnectionString").ConnectionString)

            Dim claveparacomparar As String = Session.Contents("clave")
            Dim tiempoparacomparar As DateTime = Session.Contents("tiempoCodigo")
            Dim tiempomas30 As DateTime = tiempoparacomparar.AddMinutes(30)

            If Now > tiempomas30 Then
                ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta(resp=0);", "myFuncionAlerta(resp=3);", True)
                'LBLErrRecPass2.Text = "Su còdigo ha expirado."
                'LBLErrRecPass2.ForeColor = Color.Red

            ElseIf claveparacomparar.ToString = Trim(CODValidar.Value.ToString) Then
                DIVcodigo.Attributes.Add("style", "display:none")
                DIV1usuario.Attributes.Add("style", "display:none")
                DIVCambiar.Attributes.Add("style", "display:normal")
            Else
                ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta(resp=0);", "myFuncionAlerta(resp=2);", True)                'LBLErrRecPass.ForeColor = Color.Red

                'LBLErrRecPass2.Text = "Codigo incorrecto.                                                                                                "
                'LBLErrRecPass2.ForeColor = Color.Red
            End If
        Catch sqlEx As SqlException
            'Alerta(sqlEx.Message)
            Exit Sub
        Catch ex As Exception
            ' MostrarError(ex.Message, , ex)
            Exit Sub
        End Try
    End Sub


    Protected Sub Guardar_Nueva_con(sender As Object, e As EventArgs)

        Try
            Dim idUsu As String = HttpContext.Current.Session.Contents("id_Usu")
            Dim operacion As Boolean = DAL.Seguridad.Usuario.CambiarPass(idUsu.ToString, txtNuevaPass.Value.ToString, Maestro.CadenaConexion)
            ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "myFuncionAlerta(resp=0);", "myFuncionAlerta(resp=4);", True)
            DIVCambiar.Attributes.Add("style", "display:none")
            DIV1Confirm.Attributes.Add("style", "display:normal")



        Catch sqlEx As SqlException
            'Alerta(sqlEx.Message)
            Exit Sub
        Catch ex As Exception
            ' MostrarError(ex.Message, , ex)
            Exit Sub
        End Try
    End Sub
End Class
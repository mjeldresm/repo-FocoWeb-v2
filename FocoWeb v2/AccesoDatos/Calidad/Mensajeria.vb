Imports SUL
Namespace Calidad
    Public Class Mensajeria
        Public Shared Function traerMensajesCriterios(usuario As EL.Seguridad.Usuario, ByVal idObr As Integer) As DataTable
            'Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            'Dim vCon As New Conexion("Data Source=MAURO-MORENO;Initial Catalog=Foco_CVV_Mjeldres;Persist Security Info=True;User ID=foco_cvv;Password=Foco38Web1835")
            Dim vCon As New Conexion("Data Source=192.168.1.52;Initial Catalog=Demo_Calidad_Presentacion;Persist Security Info=True;User ID=foco_cvv;Password=Foco38Web1835")
            Dim vParam As New Dictionary(Of String, Object)

            vParam.Add("@ID_OBR", 68)

            Try
                Return vCon.ExecSP("SP_WS_TRAE_MENSAJES_CRITERIOS", vParam)
            Catch ex As Exception
                Throw New Exception("No se pudo Listar los criterios", ex)
            End Try
        End Function
        Public Shared Function traerCriterios(usuario As EL.Seguridad.Usuario, ByVal idObr As Integer) As DataTable
            'Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            '  Dim vCon As New Conexion("Data Source=MAURO-MORENO;Initial Catalog=Foco_CVV_Mjeldres;Persist Security Info=True;User ID=foco_cvv;Password=Foco38Web1835")
            Dim vCon As New Conexion("Data Source=192.168.1.52;Initial Catalog=Demo_Calidad_Presentacion;Persist Security Info=True;User ID=foco_cvv;Password=Foco38Web1835")
            Dim vParam As New Dictionary(Of String, Object)
            Dim result As DataTable

            vParam.Add("@ID_OBR", 68)

            Try
                result = vCon.ExecSP("SP_WS_TRAER_CRITERIOS", vParam)
                If result.Rows.Count = 0 Then

                    result.Rows.Add(DBNull.Value, DBNull.Value, "AL SOLICITAR PROCESO CALIDAD", 0, "SOLICITAR")
                    result.Rows.Add(DBNull.Value, DBNull.Value, "AL DAR ULTIMO VB DE UN PROCESO CALIDAD", 0, "ULTIMO VB")
                    result.Rows.Add(DBNull.Value, DBNull.Value, "AL RECHAZAR UN PROCESO DE CALIDAD", 0, "RECHAZO")






                End If

                Return result

            Catch ex As Exception
                Throw New Exception("No se pudo Listar los criterios", ex)
            End Try
        End Function

        Public Shared Function insertarMensajeria(ByVal ID_QA_MSG As Integer, usuario As EL.Seguridad.Usuario, idUsuario As Integer, ByVal idObra As Integer, ByVal NOMBRE_MSG As String, ByVal CARGO_MSG As String, ByVal FONO_MSG As String, ByVal MAIL_MSG As String, dsCriterios As DataSet) As Boolean
            'Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            'Dim vParam As New Dictionary(Of String, Object)
            'Dim paramOut As New Dictionary(Of String, SqlDbType)
            'vParam.Add("@ID_OBR", idObra)
            'vParam.Add("@NOMBRE_ACT", nombreActividad)
            'vParam.Add("@ID_ETA", idEta)
            'vParam.Add("@ESTADO_ACT", estAct)
            'vParam.Add("@ID_USU_CREA", idUsuario)
            'Try
            '    vCon.Exec("SP_WS_INS_ACT", vParam)
            '    Return True
            'Catch ex As Exception
            '    Throw New Exception("No se pudo insertar la actividad.", ex)
            'End Try
            'Return False
            Return True
        End Function
        Public Shared Function modificarMensajeria(ByVal ID_QA_MSG As Integer, ByVal usuario As EL.Seguridad.Usuario, idUsuario As Integer, ByVal idObra As Integer, ByVal NOMBRE_MSG As String, ByVal CARGO_MSG As String, ByVal FONO_MSG As String, ByVal MAIL_MSG As String, dsCriterios As DataSet) As Boolean
            'Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            'Dim vParam As New Dictionary(Of String, Object)
            'Dim paramOut As New Dictionary(Of String, SqlDbType)
            'vParam.Add("@ID_OBR", idObra)
            'vParam.Add("@NOMBRE_ACT", nombreActividad)
            'vParam.Add("@ID_ETA", idEta)
            'vParam.Add("@ESTADO_ACT", estAct)
            'vParam.Add("@ID_USU_CREA", idUsuario)
            'Try
            '    vCon.Exec("SP_WS_INS_ACT", vParam)
            '    Return True
            'Catch ex As Exception
            '    Throw New Exception("No se pudo insertar la actividad.", ex)
            'End Try
            'Return False
            Return True
        End Function


        Public Shared Function eliminarMensajeria(ByVal ID_QA_MSG As Integer, usuario As EL.Seguridad.Usuario, idUsuario As Integer, ByVal idObra As Integer, dsCriterios As DataSet) As Boolean
            'Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            'Dim vParam As New Dictionary(Of String, Object)
            'Dim paramOut As New Dictionary(Of String, SqlDbType)
            'vParam.Add("@ID_OBR", idObra)
            'vParam.Add("@NOMBRE_ACT", nombreActividad)
            'vParam.Add("@ID_ETA", idEta)
            'vParam.Add("@ESTADO_ACT", estAct)
            'vParam.Add("@ID_USU_CREA", idUsuario)
            'Try
            '    vCon.Exec("SP_WS_INS_ACT", vParam)
            '    Return True
            'Catch ex As Exception
            '    Throw New Exception("No se pudo insertar la actividad.", ex)
            'End Try
            'Return False
            Return True
        End Function
    End Class



End Namespace


Imports SUL

Namespace registro
    Public Class registro
        Public Shared Function insertarRegistrosCalidad(usuario As EL.Seguridad.Usuario, idPlantilla As Integer, recintos As String, usuarios As String) As Boolean
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim paramOut As New Dictionary(Of String, SqlDbType)
            vParam.Add("@ID_ACC_PLT", idPlantilla)
            vParam.Add("@UCOS", recintos)
            vParam.Add("@NIVEL", usuarios)
            vParam.Add("@ID_USU", usuario.ID_PARTICULAR)
            Try
                vCon.Exec("SP_QA_ACC_REG_GENERA_REGISTROS_SEGUN_PLANTILLA", vParam)
                Return True
            Catch ex As Exception
                Throw New Exception("No se pudo insertar LOS REGISTROS.", ex)
            End Try
            Return False
        End Function

        Public Shared Function traerObras(usuario As EL.Seguridad.Usuario, vigencia As Integer) As DataSet
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vTablas As DataSet = Nothing
            vParam.Add("@Vigente_Obr", vigencia)
            Try
                vTablas = vCon.ExecSP_DS("SP_WS_OBRAS_BUSCAR", vParam)
                Return vTablas
            Catch ex As Exception
                Throw New Exception("No se pudo traer las obras", ex)
            End Try

        End Function

        Public Shared Function traerRegistro(usuario As EL.Seguridad.Usuario, ByVal idReg As Integer) As DataSet
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vTablas As DataSet = Nothing
            vParam.Add("@ID_ACC_REG", idReg)
            Try
                vTablas = vCon.ExecSP_DS("SP_WS_TRAER_REGISTRO", vParam)
                Return vTablas
            Catch ex As Exception
                Throw New Exception("No se pudo TRAER EL REGISTRO", ex)
            End Try
        End Function
        Public Shared Function actualizaEstado(usuario As EL.Seguridad.Usuario, idRegistro As Integer) As DataSet
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vTablas As DataSet = Nothing

            vParam.Add("@ID_ACC_REG", idRegistro)
            Try
                vTablas = vCon.ExecSP_DS("SP_QA_ACC_REG_ACTUALIZA_ESTADO", vParam)
                Return vTablas
            Catch ex As Exception
                Throw New Exception("No se pudo insertar LOS REGISTROS.", ex)
            End Try

        End Function
    End Class



End Namespace

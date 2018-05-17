Imports SUL

Namespace Calidad
    Public Class Archivo

        Public Shared Function insertarArchivo(usuario As EL.Seguridad.Usuario, ruta As String, ByVal nombre As String, ByVal regId As Integer, estadoVb As Integer) As Boolean
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim paramOut As New Dictionary(Of String, SqlDbType)
            vParam.Add("@ID_ACC_REG", regId)
            vParam.Add("@RUTA_REG_ADJ", ruta)
            vParam.Add("@NOMBRE_REG_ADJ", nombre)
            vParam.Add("@ID_USU", usuario.ID_PARTICULAR)
            vParam.Add("@ESTADO_VB", estadoVb)

            Try
                vCon.Exec("SP_QA_ACC_REG_INSERTAR_ADJUNTO", vParam)
                Return True
            Catch ex As Exception
                Throw New Exception("No se pudo insertar el adjunto.", ex)
            End Try
            Return False

        End Function


        Public Shared Function modificarEstadoADJ(usuario As EL.Seguridad.Usuario, ByVal idRegistro As Integer, ByVal nombreAdj As String) As Boolean
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim paramOut As New Dictionary(Of String, SqlDbType)

            vParam.Add("@ID_USU_ELIMINA", usuario.ID_PARTICULAR)
            vParam.Add("@ID_ACC_REG", idRegistro)
            vParam.Add("@NOMBRE_ADJ", nombreAdj)

            Try
                vCon.Exec("SP_QA_ACC_REG_ACTUALIZA_ESTADO_ADJUNTO", vParam)
                Return True
            Catch ex As Exception
                Throw New Exception("No se pudo actulizar el registro.", ex)
            End Try
            Return False
        End Function
    End Class
End Namespace

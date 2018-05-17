
Imports System.Data.SqlClient
Imports SUL
Namespace Calidad
    Public Class Plantilla
        Public Shared Function insertarPlantilla(usuario As EL.Seguridad.Usuario, idUsuario As Integer, codPlantilla As String, ByVal idObra As Integer, ByVal idActividad As Integer, ByVal estAct As Integer, ByVal nombrePlantilla As String, ByVal obsPlantilla As String) As Boolean
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim paramOut As New Dictionary(Of String, SqlDbType)
            vParam.Add("@CODIGO_ACC", codPlantilla)
            vParam.Add("@NOMBRE_ACC", nombrePlantilla)
            vParam.Add("@ID_OBR", idObra)
            vParam.Add("@ID_QA_ACT", idActividad)
            vParam.Add("@OBS_ACC", obsPlantilla)
            vParam.Add("@ESTADO_ACC", estAct)
            vParam.Add("@ID_USU_CREA", idUsuario)
            Try
                vCon.Exec("SP_WS_INS_QA", vParam)
                Return True
            Catch ex As Exception
                Throw New Exception("No se pudo insertar la Plantilla.", ex)
            End Try
            Return False
        End Function
        Public Shared Function modificarrPlantilla(usuario As EL.Seguridad.Usuario, idUsuario As Integer, idPlantilla As Integer, codPlantilla As String, ByVal idObra As Integer, ByVal idActividad As Integer, ByVal estAct As Integer, ByVal nombrePlantilla As String, ByVal obsPlantilla As String) As Boolean
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim paramOut As New Dictionary(Of String, SqlDbType)
            vParam.Add("@ID_ACC_PLT", idPlantilla)
            vParam.Add("@CODIGO_ACC", codPlantilla)
            vParam.Add("@NOMBRE_ACC", nombrePlantilla)
            vParam.Add("@ID_OBR", idObra)
            vParam.Add("@ID_QA_ACT", idActividad)
            vParam.Add("@OBS_ACC", obsPlantilla)
            vParam.Add("@ESTADO_ACC", estAct)
            vParam.Add("@ID_USU_CREA", idUsuario)
            Try
                vCon.Exec("SP_WS_EDIT_QA", vParam)
                Return True
            Catch ex As Exception
                Throw New Exception("No se pudo insertar la Plantilla.", ex)
            End Try
            Return False
        End Function
        Public Shared Function traeUltimoFolio(usuario As EL.Seguridad.Usuario, ByVal tabla As String) As Integer
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vTablas As DataSet = Nothing
            Dim id As Integer
            vParam.Add("@tabla", tabla)
            Try
                vTablas = vCon.ExecSP_DS("SP_WS_TRAER_FOLIO", vParam)
                id = vTablas.Tables(0).Rows(0).Item("last_id")
                Return id
            Catch ex As Exception
                Throw New Exception("No se pudo insertar la actividad.", ex)
            End Try
            Return -1
        End Function
        Public Shared Function traerPlantilla(usuario As EL.Seguridad.Usuario, ByVal idObra As Integer, ByVal idPlantilla As Integer) As DataSet
            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vTablas As DataSet = Nothing
            vParam.Add("@ID_OBR", idObra)
            vParam.Add("@ID_ACC_PLT", idPlantilla)
            Try
                vTablas = vCon.ExecSP_DS("SP_QA_ACC_PLT_BUSCAR", vParam)
                Return vTablas
            Catch ex As Exception
                Throw New Exception("No se pudo TRAER LA PLANTILLA", ex)
            End Try
        End Function
    End Class
End Namespace

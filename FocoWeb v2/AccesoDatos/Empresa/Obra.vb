Imports SUL

Namespace Empresa



    Public Class Obra
        Public Shared Function ListarObrasUsuario(vUsuario As EL.Seguridad.Usuario) As DataTable
            Dim vCon As New Conexion(vUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            vParam.Add("@ID_USU", vUsuario.ID_PARTICULAR)
            Try
                ListarObrasUsuario = vCon.ExecSP("WEB_SP_OBRAS_POR_USUARIO", vParam)
            Catch ex As Exception
                Throw New Exception("No se puede listar las obras de la empresa seleccionada.", ex)
            End Try
        End Function


        Public Function getObras(str As String, vig As Integer) As List(Of EL.Obra)

            Dim vCon As New Conexion(str)

            Dim dt As DataTable
            Dim lstObra As New List(Of EL.Obra)
            Dim vParam As New Dictionary(Of String, Object)
            vParam.Add("@Vigente_Obr", vig)

            Try
                dt = vCon.ExecSP("SP_WS_OBRAS_BUSCAR", vParam)
                For Each dr As DataRow In dt.Rows
                    Dim oObra As New EL.Obra
                    oObra.ID = dr("ID")
                    oObra.NOMBRE = dr("NOMBRE")
                    lstObra.Add(oObra)
                Next
            Catch ex As Exception
                Throw New Exception("No se pudo obtener registros.", ex)
            End Try
            Return lstObra


        End Function

    End Class

End Namespace

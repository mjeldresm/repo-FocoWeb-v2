Imports SUL
Imports EL

Namespace Calidad
    Public Class Historial
        Public Function getHistorial(vUsuario As EL.Seguridad.Usuario, ID_REG_CHK As Integer) As List(Of EL.Historial)
            Dim vCon As New Conexion(vUsuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            vParam.Add("@ID_REG_CHK", ID_REG_CHK)
            Dim dt As DataTable
            Dim lstHistorial As New List(Of EL.Historial)
            Try
                dt = vCon.ExecSP("SP_QA_WS_OBTIENE_CHECKLIST_HIST", vParam)
                For Each dr As DataRow In dt.Rows
                    Dim oHistorial As New EL.Historial
                    oHistorial.ID_REG_CHK_HIST = dr("ID_REG_CHK_HIST")
                    oHistorial.ID_REG_CHK = dr("ID_REG_CHK")
                    oHistorial.NOM_REG_CHK = dr("NOM_REG_CHK")
                    oHistorial.ESTADO_APROBACION = dr("ESTADO_APROBACION")
                    oHistorial.NOM_ESTADO_APROBACION = dr("NOM_ESTADO_APROBACION")
                    oHistorial.OBSERVACION_CHK = dr("OBSERVACION_CHK")
                    oHistorial.FECHA_HORA = dr("FECHA_HORA")
                    oHistorial.ID_USU = dr("ID_USU")
                    oHistorial.NOM_USU = dr("NOM_USU")
                    lstHistorial.Add(oHistorial)
                Next
            Catch ex As Exception
                Throw New Exception("No se pudo obtener registros.", ex)
            End Try
            Return lstHistorial
        End Function
    End Class
End Namespace


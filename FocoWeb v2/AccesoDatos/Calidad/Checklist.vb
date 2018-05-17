Imports SUL
Namespace Calidad
    Public Class Checklist
        Public Shared Function traerRegistro(usuario As EL.Seguridad.Usuario, ByVal idReg As Integer) As List(Of EL.Calidad.Checklist)

            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vTablas As DataTable = Nothing
            Dim ListaCheckList As New List(Of EL.Calidad.Checklist)
            vParam.Add("@ID_ACC_REG", idReg)
            Try
                vTablas = vCon.ExecSP("SP_QA_ACC_REG_LISTA_CHEQUEO", vParam)
                For Each dr As DataRow In vTablas.Rows
                    Dim oLista As New EL.Calidad.Checklist
                    oLista.ID_REG_CHK = dr("ID_REG_CHK")
                    oLista.ITEM = dr("ITEM")
                    oLista.NOMBRE_GRP_CHK = dr("NOMBRE_GRP_CHK")
                    oLista.NOMBRE_CHK = dr("NOMBRE_CHk")
                    oLista.CRITERIO_CONTROL = dr("CRITERIO_CONTROL")
                    oLista.ESPECIFICACION_CHK = dr("ESPECIFICACION_CHK")
                    oLista.ID_ACC_REG = dr("ID_ACC_REG")
                    oLista.OBSERVACION_CHK = dr("OBSERVACION_CHK")
                    oLista.ID_GRP_CHK = dr("ID_GRP_CHK")

                    If dr("ESTADO_APROBACION") = 0 Then
                        oLista.ESTADO_NO_REVISADO = True
                    Else
                        oLista.ESTADO_NO_REVISADO = False
                    End If
                    If dr("ESTADO_APROBACION") = 1 Then
                        oLista.ESTADO_APROBACION = True
                    Else
                        oLista.ESTADO_APROBACION = False
                    End If
                    If dr("ESTADO_APROBACION") = -1 Then
                        oLista.ESTADO_CON_FALLOS = True
                    Else
                        oLista.ESTADO_CON_FALLOS = False
                    End If
                    If dr("ESTADO_APROBACION") = -2 Then
                        oLista.ESTADO_NA = True
                    Else
                        oLista.ESTADO_NA = False
                    End If



                    oLista.ID_USU = dr("ID_USU")
                    ListaCheckList.Add(oLista)
                Next
            Catch ex As Exception
                Throw New Exception("No se pudo TRAER EL REGISTRO", ex)

            Finally


            End Try
            Return ListaCheckList
        End Function

        Public Shared Function grabarRegistro(usuario As EL.Seguridad.Usuario, ByVal idReg As Integer, ByVal estado As String, ByVal obs As String, idUsu As Integer) As Boolean


            Dim vCon As New Conexion(usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vTablas As DataTable = Nothing
            vParam.Add("@ID_REG_CHK", idReg)
            vParam.Add("@ESTADO_APROBACION", estado)
            vParam.Add("@OBS", obs)
            vParam.Add("@ID_USU", idUsu)
            Try
                vTablas = vCon.ExecSP("SP_QA_WS_ACTUALIZA_CHECKLIST", vParam)
            Catch ex As Exception
                Throw New Exception("No se pudo actualizar el Checklist", ex)
                Return False
            End Try
            Return True

        End Function

    End Class
End Namespace

Imports SUL
Imports System.Data.SqlClient

Namespace Seguridad

    Public Class Opcion

        Public Shared Function BuscarPerfil(vPerfID As Long, vStrConexion As String) As DataSet
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(vStrConexion)
            vParam.Add("@PERF_ID", vPerfID)
            Try
                BuscarPerfil = vCon.ExecSP_DS("WEB_SP_SEGU_OPCIONES_PERFIL", vParam)
            Catch ex As Exception
                Throw New Exception("No se pudo obtener la lista de opciones.", ex)
            End Try
        End Function

        Public Shared Sub GuardarPermisos(vOpciID As Long, vPerfID As Long, vPermisos As String, vStrCon As String)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(vStrCon)

            vParam.Add("@OPCI_ID", vOpciID)
            vParam.Add("@PERF_ID", vPerfID)
            vParam.Add("@OPCI_PER", vPermisos)

            Try
                vCon.ExecSP_DS("WEB_SP_SEGU_OPCION_PERFIL_UPDATE", vParam)
            Catch ex As Exception
                Throw New Exception("No se pudo guardar los permisos asociados a la opción.", ex)
            End Try
        End Sub


        Public Shared Function ObtenerOpcionesFoco(Usuario As EL.Seguridad.Usuario, idPerfil As Integer, idModulo As Integer) As List(Of EL.Seguridad.opcion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim datos As DataTable
            Dim listaOpciones As New List(Of EL.Seguridad.opcion)
            vParam.Add("@idPerfil", idPerfil)
            If idModulo = -1 Then
                vParam.Add("@idOpcPadre", DBNull.Value)
            Else
                vParam.Add("@idOpcPadre", idModulo)
            End If
            ''si no es usuario interno, muestra solo las con campo OPCION_FOCO = 0 
            ''de lo contratio muestra todas
            vParam.Add("@opcionFoco", IIf(Usuario.usuarioInterno, DBNull.Value, 0))

            Try
                datos = vCon.ExecSP("SEG_OBT_OPCIONES_PERFIL", vParam)

                If datos.Rows.Count > 0 Then
                    For Each r As DataRow In datos.Rows
                        Dim opcion As New EL.Seguridad.opcion With {.IdOpcion = r("id_Opc"), _
                                                                    .NombreOpcion = r("Nombre_opc"), _
                                                                    .TieneOpcion = CBool(r("TIENE_OPCION")), _
                                                                    .PermisoOpcion = r("opciones_opc"), _
                                                                    .PermisoPerfil = r("PERMISO_PERF"), _
                                                                    .Observacion = r("Observ_Opc"), _
                                                                    .Nivel = r("NIVEL"), _
                                                                    .ProgramaOpc = r("programa_opc")}
                        listaOpciones.Add(opcion)
                    Next
                End If
                Return listaOpciones
            Catch ex As Exception
                Throw New Exception("No se pudo obtener el listado de opciones.", ex)
            End Try
            Return Nothing
        End Function

        Public Shared Function ObtenerOpcionesUsuarioFoco(Usuario As EL.Seguridad.Usuario, idUsuario As Integer, idModulo As Integer) As List(Of EL.Seguridad.opcion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim datos As DataTable
            Dim listaOpciones As New List(Of EL.Seguridad.opcion)
            vParam.Add("@idUsuario", idUsuario)
            If idModulo = -1 Then
                vParam.Add("@idOpcPadre", DBNull.Value)
            Else
                vParam.Add("@idOpcPadre", idModulo)
            End If

            ''si no es usuario interno, muestra solo las con campo OPCION_FOCO = 0 
            ''de lo contratio muestra todas
            vParam.Add("@opcionFoco", IIf(Usuario.usuarioInterno, DBNull.Value, 0))

            Try
                datos = vCon.ExecSP("SEG_OBT_OPCIONES_USUARIO", vParam)

                If datos.Rows.Count > 0 Then
                    For Each r As DataRow In datos.Rows
                        Dim opcion As New EL.Seguridad.opcion With {.IdOpcion = r("id_Opc"), _
                                                                    .NombreOpcion = r("Nombre_opc"), _
                                                                    .TieneOpcion = CBool(r("TIENE_OPCION")), _
                                                                    .PermisoOpcion = r("opciones_opc"), _
                                                                    .PermisoPerfil = r("PERMISO_PERF"), _
                                                                    .Observacion = r("Observ_Opc"), _
                                                                    .Nivel = r("NIVEL"), _
                                                                    .ProgramaOpc = r("programa_opc")}
                        listaOpciones.Add(opcion)
                    Next
                End If
                Return listaOpciones
            Catch ex As Exception
                Throw New Exception("No se pudo obtener el listado de opciones.", ex)
            End Try
            Return Nothing
        End Function


        Public Shared Function ObtenerOpcionesPadreFoco(Usuario As EL.Seguridad.Usuario) As List(Of EL.Seguridad.opcion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim datos As DataTable
            Dim listaOpciones As New List(Of EL.Seguridad.opcion)
           

            Try
                datos = vCon.ExecSP("OBT_OPCIONES_PADRE", vParam)

                If datos.Rows.Count > 0 Then
                    For Each r As DataRow In datos.Rows
                        Dim opcion As New EL.Seguridad.opcion With {.IdOpcion = r("id_Opc"), _
                                                                    .NombreOpcion = r("Nombre_opc")}
                        listaOpciones.Add(opcion)
                    Next
                End If
                Return listaOpciones
            Catch ex As Exception
                Throw New Exception("No se pudo obtener el listado de opciones padre.", ex)
            End Try
            Return Nothing
        End Function


        Public Shared Function GuardarOpcionesPerfilFoco(Usuario As EL.Seguridad.Usuario, idPerfil As Integer, opciones As DataTable) As Boolean
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            vParam.Add("@idPerfil", idPerfil)
            vParam.Add("@opciones", opciones)

            Try
                vCon.ExecSP("SEG_INSERTA_OPCIONES_PERFIL", vParam)


                Return True
            Catch ex As Exception
                Throw New Exception("No se pudo guardar el listado de opciones.", ex)
            End Try
            Return False
        End Function

        Public Shared Function GuardarOpcionesUsuarioFoco(Usuario As EL.Seguridad.Usuario, idUsuario As Integer, opciones As DataTable) As Boolean
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            vParam.Add("@idUsuario", idUsuario)
            vParam.Add("@opciones", opciones)
            'vParam.Add("@filtraModulo", IIf(filtraModulo, 1, 0))
            Try
                vCon.ExecSP("SEG_INSERTA_OPCIONES_USUARIO", vParam)


                Return True
            Catch ex As Exception
                Throw New Exception("No se pudo guardar el listado de opciones.", ex)
            End Try
            Return False
        End Function

        Public Shared Function GuardarOpciones(Usuario As EL.Seguridad.Usuario, opcion As EL.Seguridad.opcion) As Boolean
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            If opcion.IdOpcion = 0 Then
                vParam.Add("@idOpcion", DBNull.Value)
            Else
                vParam.Add("@idOpcion", opcion.IdOpcion)
            End If
            vParam.Add("@nombreOpcion", opcion.NombreOpcion)
            vParam.Add("@categoriaOp", opcion.CategoriaOpc)
            vParam.Add("@estado", opcion.Estado)
            vParam.Add("@funcionesOpc", opcion.FuncionesOpci)
            vParam.Add("@url", opcion.UrlOpc)
            vParam.Add("@rutaIcono", opcion.UrlIcono)
            vParam.Add("@nombreInt", opcion.NombreInt)
            vParam.Add("@orden", opcion.Orden)
            vParam.Add("@opciones", opcion.PermisoOpcion)
            vParam.Add("@opcionFoco", opcion.OpcionFoco)
            vParam.Add("@textoAyuda", opcion.Ayuda)

            Try
                vCon.ExecSP("SP_OPCION_GUARDAR", vParam)


                Return True
            Catch ex As Exception
                Throw New Exception("No se pudo guardar el listado de opciones.", ex)
            End Try
            Return False
        End Function

        ''' <summary>
        ''' Obtienes las opciones de un perfil
        ''' </summary>
        ''' <param name="Usuario"></param>
        ''' <param name="idPerfil"></param>
        ''' <returns></returns>
        ''' <remarks></remarks>
        Public Shared Function ObtenerOpcionesWeb(Usuario As EL.Seguridad.Usuario, idPerfil As Integer) As List(Of EL.Seguridad.opcion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim datos As DataTable
            Dim listaOpciones As New List(Of EL.Seguridad.opcion)
            vParam.Add("@idPerfil", idPerfil)
            vParam.Add("@opcionFoco", IIf(Usuario.usuarioInterno, DBNull.Value, 0))


            Try
                datos = vCon.ExecSP("SP_WEB_OBT_OPCIONES_PERFIL_WEB", vParam)

                If datos.Rows.Count > 0 Then
                    For Each r As DataRow In datos.Rows
                        Dim opcion As New EL.Seguridad.opcion With {.IdOpcion = r("ID_OPCI"), _
                                                                    .NombreOpcion = r("NOMBRE_OPCI"), _
                                                                    .TieneOpcion = CBool(r("TIENE_OPCION")), _
                                                                    .PermisoOpcion = r("PERMISO_OPCION"), _
                                                                    .PermisoPerfil = r("PERMISO_PERFIL"), _
                                                                    .Observacion = r("FUNCIONES_OPCI"), _
                                                                    .Ayuda = IIf(IsDBNull(r("AYUDA_OPCION")), "", r("AYUDA_OPCION"))}
                        listaOpciones.Add(opcion)
                    Next
                End If
                Return listaOpciones
            Catch ex As Exception
                Throw New Exception("No se pudo obtener el listado de opciones web.", ex)
            End Try
            Return Nothing
        End Function

        ''' <summary>
        ''' obtiene todas las opciones web
        ''' </summary>
        ''' <param name="Usuario"></param>
        ''' <returns></returns>
        ''' <remarks></remarks>
        Public Shared Function ObtenerOpcionesWeb(Usuario As EL.Seguridad.Usuario) As List(Of EL.Seguridad.opcion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim datos As DataTable
            Dim listaOpciones As New List(Of EL.Seguridad.opcion)
            


            Try
                datos = vCon.ExecSP("SP_WEB_OBT_OPCIONES_WEB", vParam)

                If datos.Rows.Count > 0 Then
                    For Each r As DataRow In datos.Rows
                        Dim opcion As New EL.Seguridad.opcion With {.IdOpcion = r("ID_OPCI"), _
                                                                    .NombreOpcion = r("NOMBRE_OPCI"), _
                                                                    .CategoriaOpc = r("CATEGORIA_OPCI"), _
                                                                    .Estado = r("ESTADO_OPCI"), _
                                                                    .FuncionesOpci = r("FUNCIONES_OPCI"), _
                                                                    .UrlOpc = r("URL_OPCI"), _
                                                                    .UrlIcono = r("URL_ICONO"), _
                                                                    .NombreInt = r("NOMBRE_INT"), _
                                                                    .Orden = r("ORDEN"), _
                                                                    .PermisoOpcion = r("OPCIONES"), _
                                                                    .OpcionFoco = r("OPCION_FOCO")}

                        opcion.Ayuda = IIf(IsDBNull(r("AYUDA_OPCION")), "", r("AYUDA_OPCION"))
                        listaOpciones.Add(opcion)
                    Next
                End If
                Return listaOpciones
            Catch ex As Exception
                Throw New Exception("No se pudo obtener el listado de opciones web.", ex)
            End Try
            Return Nothing
        End Function

        Public Shared Function ObtenerOpcionesUsuarioWeb(Usuario As EL.Seguridad.Usuario, idUsuario As Integer) As List(Of EL.Seguridad.opcion)
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            Dim datos As DataTable
            Dim listaOpciones As New List(Of EL.Seguridad.opcion)
            vParam.Add("@idUsuario", idUsuario)

            ''si no es usuario interno, muestra solo las con campo OPCION_FOCO = 0 
            ''de lo contratio muestra todas
            vParam.Add("@opcionFoco", IIf(Usuario.usuarioInterno, DBNull.Value, 0))



            Try
                datos = vCon.ExecSP("SP_WEB_OBT_OPCIONES_USUARIO", vParam)

                If datos.Rows.Count > 0 Then
                    For Each r As DataRow In datos.Rows
                        Dim opcion As New EL.Seguridad.opcion With {.IdOpcion = r("ID_OPCI"), _
                                                                    .NombreOpcion = r("NOMBRE_OPCI"), _
                                                                    .TieneOpcion = IIf(r("TIENE_OPCION") = 1, True, False), _
                                                                    .PermisoOpcion = r("PERMISO_OPCION"), _
                                                                    .PermisoPerfil = r("PERMISO_PERFIL"), _
                                                                    .Observacion = r("FUNCIONES_OPCI")}
                        listaOpciones.Add(opcion)
                    Next
                End If
                Return listaOpciones
            Catch ex As Exception
                Throw New Exception("No se pudo obtener el listado de opciones web.", ex)
            End Try
            Return Nothing
        End Function

        Public Shared Function GuardarOpcionesPerfilWeb(Usuario As EL.Seguridad.Usuario, idPerfil As Integer, opciones As DataTable) As Boolean
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            vParam.Add("@idPerfil", idPerfil)
            vParam.Add("@opciones", opciones)

            Try
                vCon.ExecSP("SEG_INSERTA_OPCIONES_PERFIL_WEB", vParam)


                Return True
            Catch ex As Exception
                Throw New Exception("No se pudo guardar el listado de opciones.", ex)
            End Try
            Return False
        End Function

        Public Shared Function ObtenerURL_OpcionDetalle(Usuario As EL.Seguridad.Usuario, ByVal Opc_NombreInt As String, ByVal idObr As Double) As String
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            vParam.Add("@Opc_NombreInt", Opc_NombreInt)
            vParam.Add("@Id_Obr", idObr)
            Dim vTabla As DataTable

            Try

                vTabla = vCon.ExecSP("WEB_SP_SEGU_OPCION_DETALLE", vParam)
                If vTabla IsNot Nothing AndAlso vTabla.Rows.Count = 1 Then
                    ObtenerURL_OpcionDetalle = vTabla.Rows(0).Item("URL_OPC_DET")
                Else
                    ObtenerURL_OpcionDetalle = ""
                End If

                Return ObtenerURL_OpcionDetalle

            Catch ex As Exception
                Throw New Exception("No se pudo guardar el listado de opciones.", ex)
            End Try
            Return False
        End Function

        Public Shared Function ObtenerReportID_OpcionDetalle(Usuario As EL.Seguridad.Usuario, ByVal Opc_NombreInt As String, ByVal idObr As Double) As String
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            vParam.Add("@Opc_NombreInt", Opc_NombreInt)
            vParam.Add("@Id_Obr", idObr)
            Dim vTabla As DataTable

            Try

                vTabla = vCon.ExecSP("WEB_SP_SEGU_OPCION_DETALLE", vParam)
                If vTabla IsNot Nothing AndAlso vTabla.Rows.Count = 1 Then
                    ObtenerReportID_OpcionDetalle = vTabla.Rows(0).Item("BI_REPORT_ID")
                Else
                    ObtenerReportID_OpcionDetalle = ""
                End If

                Return ObtenerReportID_OpcionDetalle

            Catch ex As Exception
                Throw New Exception("No se pudo guardar el listado de opciones.", ex)
            End Try
            Return False
        End Function

        Public Shared Function SSRS_Obtener_Nombre_Reporte(Usuario As EL.Seguridad.Usuario, ByVal Opc_NombreInt As String) As String
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            vParam.Add("@Opc_NombreInt", Opc_NombreInt)
            Dim vTabla As DataTable
            Dim Reporte As String
            Try

                vTabla = vCon.ExecSP("WEB_SP_SEGU_OPCION", vParam)
                If vTabla IsNot Nothing AndAlso vTabla.Rows.Count = 1 Then
                    Reporte = vTabla.Rows(0).Item("REPORTE_SSRS")
                Else
                    Reporte = ""
                End If
                Return Reporte
            Catch ex As Exception
                Throw New Exception("No se pudo guardar el listado de opciones.", ex)
            End Try
            Return False
        End Function

        Public Shared Function Obtener_Reporte_BI(Usuario As EL.Seguridad.Usuario, ByVal Opc_NombreInt As String) As EL.TipoReporte.ReporteBI
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            vParam.Add("@Opc_NombreInt", Opc_NombreInt)
            Dim vTabla As DataTable
            Dim Reporte As New EL.TipoReporte.ReporteBI
            Try

                vTabla = vCon.ExecSP("WEB_SP_SEGU_OPCION", vParam)
                If vTabla IsNot Nothing AndAlso vTabla.Rows.Count = 1 Then
                    Reporte.reportID = vTabla.Rows(0).Item("BI_REPORT_ID")
                    Reporte.opcDet = vTabla.Rows(0).Item("OPC_DET")
                    Reporte.nombreReport = vTabla.Rows(0).Item("NOMBRE_OPCI")
                    Reporte.tabFil1 = vTabla.Rows(0).Item("TAB_FIL1")
                    Reporte.campoFil1 = vTabla.Rows(0).Item("CAMPO_FIL1")
                    Reporte.valFil1 = vTabla.Rows(0).Item("VAL_FIL1")
                    Reporte.tabFil2 = vTabla.Rows(0).Item("TAB_FIL2")
                    Reporte.campoFil2 = vTabla.Rows(0).Item("CAMPO_FIL2")
                    Reporte.valFil2 = vTabla.Rows(0).Item("VAL_FIL2")
                End If
                Return Reporte
            Catch ex As Exception
                Throw New Exception("No se pudo guardar el listado de opciones.", ex)
            End Try
        End Function

        Public Shared Function GuardarOpcionesUsuarioWeb(Usuario As EL.Seguridad.Usuario, idPerfil As Integer, opciones As DataTable) As Boolean
            Dim vParam As New Dictionary(Of String, Object)
            Dim vCon As New Conexion(Usuario.EmpresaSelected.DatosConexion.GenerarStringConexion)
            vParam.Add("@idUsuario", idPerfil)
            vParam.Add("@opciones", opciones)

            Try
                vCon.ExecSP("SEG_INSERTA_OPCIONES_USUARIO_WEB", vParam)


                Return True
            Catch ex As Exception
                Throw New Exception("No se pudo guardar el listado de opciones.", ex)
            End Try
            Return False
        End Function

    End Class

End Namespace

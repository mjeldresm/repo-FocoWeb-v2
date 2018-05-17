Imports EL.Seguridad
Imports SUL
Imports EL

Namespace Seguridad

    Public Class Menu

        Public Function getMenu(str As String) As List(Of EL.Seguridad.Menu)

            Dim vCon As New Conexion(str)

            Dim dt As DataTable
            Dim lstMenu As New List(Of EL.Seguridad.Menu)
            Try
                dt = vCon.ExecSP("SP_OBTIENE_MENU")
                For Each dr As DataRow In dt.Rows
                    Dim oMenu As New EL.Seguridad.Menu
                    oMenu.ID = dr("ID")
                    oMenu.NOMBRE = dr("NOMBRE")
                    oMenu.URL = dr("URL")
                    oMenu.PADREID = dr("PADREID")
                    oMenu.CSS_ICON = dr("CSS_ICON")
                    oMenu.NODOS = dr("NUM_HIJOS")
                    lstMenu.Add(oMenu)
                Next
            Catch ex As Exception
                Throw New Exception("No se pudo obtener registros.", ex)
            End Try
            Return lstMenu


        End Function

        Public Function getMenuList(str As String, PADREID As Integer) As List(Of EL.Seguridad.Menu)

            Dim vCon As New Conexion(str)

            Dim dt As DataTable
            Dim lstMenu As New List(Of EL.Seguridad.Menu)
            Dim vParam As New Dictionary(Of String, Object)
            vParam.Add("@PADREID", PADREID)

            Try
                dt = vCon.ExecSP("SP_OBTIENE_MENU_LIST", vParam)
                For Each dr As DataRow In dt.Rows
                    Dim oMenu As New EL.Seguridad.Menu
                    oMenu.ID = dr("ID")
                    oMenu.NOMBRE = dr("NOMBRE")
                    oMenu.URL = dr("URL")
                    oMenu.PADREID = dr("PADREID")
                    oMenu.CSS_ICON = dr("CSS_ICON")
                    oMenu.NODOS = dr("NUM_HIJOS")
                    lstMenu.Add(oMenu)
                Next
            Catch ex As Exception
                Throw New Exception("No se pudo obtener registros.", ex)
            End Try
            Return lstMenu


        End Function


    End Class


End Namespace
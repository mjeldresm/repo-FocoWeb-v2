Namespace Calidad
    Public Class RegistroCalidad
        Public Sub New(Optional vFila As DataRow = Nothing)
            If vFila IsNot Nothing Then
                Try
                    idRegistro = vFila("")
                    IdRecinto = vFila("")
                    Recinto = vFila("")
                    estado = vFila("")
                    fechaCreacion = vFila("")
                    tiporegistro = vFila("")
                Catch ex As Exception
                    Throw New Exception("No se pudo convertir el registro de calidad.", ex)
                End Try
            End If
        End Sub


        Public Property idRegistro As Long
        Public Property plantilla As DataTable
        Public Property IdRecinto As Integer
        Public Property Recinto As String
        Public Property estado As String
        Public Property fechaCreacion As Date
        Public Property tiporegistro As Integer
        Public Property checkList As DataTable

    End Class
End Namespace


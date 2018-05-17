Namespace Seguridad

    Public Class Menu

        Private _ID As Integer
        Private _NOMBRE As String
        Private _URL As String
        Private _PADREID As Integer
        Private _NODOS As Integer
        Private _CSS_ICON As String

        Public Property ID As Integer
            Set(value As Integer)
                _ID = value
            End Set
            Get
                Return _ID
            End Get
        End Property

        Public Property NOMBRE As String
            Set(value As String)
                _NOMBRE = value
            End Set
            Get
                Return _NOMBRE
            End Get
        End Property

        Public Property URL As String
            Set(value As String)
                _URL = value
            End Set
            Get
                Return _URL
            End Get
        End Property

        Public Property PADREID As Integer
            Set(value As Integer)
                _PADREID = value
            End Set
            Get
                Return _PADREID
            End Get
        End Property

        Public Property NODOS As Integer
            Set(value As Integer)
                _NODOS = value
            End Set
            Get
                Return _NODOS
            End Get
        End Property

        Public Property CSS_ICON As String
            Set(value As String)
                _CSS_ICON = value
            End Set
            Get
                Return _CSS_ICON
            End Get
        End Property


    End Class


End Namespace

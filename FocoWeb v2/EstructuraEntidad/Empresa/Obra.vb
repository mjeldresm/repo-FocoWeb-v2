Public Class Obra

    Private _ID As Integer
    Private _NOMBRE As String

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


End Class

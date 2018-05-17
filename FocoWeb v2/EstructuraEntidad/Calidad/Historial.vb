Public Class Historial

    Public Sub New()

    End Sub

    Private _ID_REG_CHK_HIST As Integer
    Private _ID_REG_CHK As Integer
    Private _NOM_REG_CHK As String
    Private _ESTADO_APROBACION As Integer
    Private _NOM_ESTADO_APROBACION As String
    Private _OBSERVACION_CHK As String
    Private _FECHA_HORA As DateTime
    Private _ID_USU As Integer
    Private _NOM_USU As String

    Public Property ID_REG_CHK_HIST() As Integer
        Get
            Return _ID_REG_CHK_HIST
        End Get
        Set(ByVal value As Integer)
            _ID_REG_CHK_HIST = value
        End Set
    End Property

    Public Property ID_REG_CHK() As Integer
        Get
            Return _ID_REG_CHK
        End Get
        Set(ByVal value As Integer)
            _ID_REG_CHK = value
        End Set
    End Property

    Public Property ESTADO_APROBACION() As Integer
        Get
            Return _ESTADO_APROBACION
        End Get
        Set(ByVal value As Integer)
            _ESTADO_APROBACION = value
        End Set
    End Property

    Public Property OBSERVACION_CHK() As String
        Get
            Return _OBSERVACION_CHK
        End Get
        Set(ByVal value As String)
            _OBSERVACION_CHK = value
        End Set
    End Property
    Public Property FECHA_HORA() As DateTime
        Get
            Return _FECHA_HORA
        End Get
        Set(ByVal value As DateTime)
            _FECHA_HORA = value
        End Set
    End Property
    Public Property ID_USU() As Integer
        Get
            Return _ID_USU
        End Get
        Set(ByVal value As Integer)
            _ID_USU = value
        End Set
    End Property

    Public Property NOM_USU As String
        Get
            Return _NOM_USU
        End Get
        Set(value As String)
            _NOM_USU = value
        End Set
    End Property

    Public Property NOM_REG_CHK As String
        Get
            Return _NOM_REG_CHK
        End Get
        Set(value As String)
            _NOM_REG_CHK = value
        End Set
    End Property

    Public Property NOM_ESTADO_APROBACION As String
        Get
            Return _NOM_ESTADO_APROBACION
        End Get
        Set(value As String)
            _NOM_ESTADO_APROBACION = value
        End Set
    End Property
End Class

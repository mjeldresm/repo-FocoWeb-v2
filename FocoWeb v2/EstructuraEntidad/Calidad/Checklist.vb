
Namespace Calidad
    Public Class Checklist
        Public Sub New()

        End Sub

        Private _ID_REG_CHK As Integer
        Private _ITEM As String
        Private _NOMBRE_GRP_CHK As String
        Private _NOMBRE_CHK As String
        Private _CRITERIO_CONTROL As String
        Private _ESPECIFICACION_CHK As String
        Private _ID_ACC_REG As Integer
        Private _OBSERVACION_CHK As String
        Private _ID_GRP_CHK As Integer
        Private _ESTADO_APROBACION As Boolean
        Private _ESTADO_CON_FALLOS As Boolean
        Private _ESTADO_NA As Boolean
        Private _ESTADO_NO_REVISADO As Boolean

        Private _ID_USU As Integer

        Public Property ID_REG_CHK As Integer
            Get
                Return _ID_REG_CHK
            End Get
            Set(value As Integer)
                _ID_REG_CHK = value
            End Set
        End Property

        Public Property ITEM As String
            Get
                Return _ITEM
            End Get
            Set(value As String)
                _ITEM = value
            End Set
        End Property

        Public Property NOMBRE_GRP_CHK As String
            Get
                Return _NOMBRE_GRP_CHK
            End Get
            Set(value As String)
                _NOMBRE_GRP_CHK = value
            End Set
        End Property

        Public Property NOMBRE_CHK As String
            Get
                Return _NOMBRE_CHK
            End Get
            Set(value As String)
                _NOMBRE_CHK = value
            End Set
        End Property

        Public Property CRITERIO_CONTROL As String
            Get
                Return _CRITERIO_CONTROL
            End Get
            Set(value As String)
                _CRITERIO_CONTROL = value
            End Set
        End Property

        Public Property ESPECIFICACION_CHK As String
            Get
                Return _ESPECIFICACION_CHK
            End Get
            Set(value As String)
                _ESPECIFICACION_CHK = value
            End Set
        End Property

        Public Property ID_ACC_REG As Integer
            Get
                Return _ID_ACC_REG
            End Get
            Set(value As Integer)
                _ID_ACC_REG = value
            End Set
        End Property

        Public Property OBSERVACION_CHK As String
            Get
                Return _OBSERVACION_CHK
            End Get
            Set(value As String)
                _OBSERVACION_CHK = value
            End Set
        End Property

        Public Property ID_GRP_CHK As Integer
            Get
                Return _ID_GRP_CHK
            End Get
            Set(value As Integer)
                _ID_GRP_CHK = value
            End Set
        End Property



        Public Property ID_USU As Integer
            Get
                Return _ID_USU
            End Get
            Set(value As Integer)
                _ID_USU = value
            End Set
        End Property

        Public Property ESTADO_APROBACION As Boolean
            Get
                Return _ESTADO_APROBACION
            End Get
            Set(value As Boolean)
                _ESTADO_APROBACION = value
            End Set
        End Property

        Public Property ESTADO_CON_FALLOS As Boolean
            Get
                Return _ESTADO_CON_FALLOS
            End Get
            Set(value As Boolean)
                _ESTADO_CON_FALLOS = value
            End Set
        End Property

        Public Property ESTADO_NA As Boolean
            Get
                Return _ESTADO_NA
            End Get
            Set(value As Boolean)
                _ESTADO_NA = value
            End Set
        End Property

        Public Property ESTADO_NO_REVISADO As Boolean
            Get
                Return _ESTADO_NO_REVISADO
            End Get
            Set(value As Boolean)
                _ESTADO_NO_REVISADO = value
            End Set
        End Property
    End Class
End Namespace

﻿'------------------------------------------------------------------------------
' <auto-generated>
'     Este código fue generado por una herramienta.
'     Versión de runtime:4.0.30319.42000
'
'     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
'     se vuelve a generar el código.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict On
Option Explicit On

Imports System.Data

Namespace wsLogin
    
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0"),  _
     System.ServiceModel.ServiceContractAttribute(ConfigurationName:="wsLogin.Service1Soap")>  _
    Public Interface Service1Soap
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/Login", ReplyAction:="*"),  _
         System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults:=true),  _
         System.ServiceModel.ServiceKnownTypeAttribute(GetType(Usuario))>  _
        Function Login(ByVal vUsuario As String, ByVal vPassword As String, ByVal vStrConexion As String, ByVal ip As String, ByVal host As String) As wsLogin.UsuarioSistema
    End Interface
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.7.2556.0"),  _
     System.SerializableAttribute(),  _
     System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.ComponentModel.DesignerCategoryAttribute("code"),  _
     System.Xml.Serialization.XmlTypeAttribute([Namespace]:="http://tempuri.org/")>  _
    Partial Public Class UsuarioSistema
        Inherits Usuario
        
        Private lastPageField As String
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=0)>  _
        Public Property LastPage() As String
            Get
                Return Me.lastPageField
            End Get
            Set
                Me.lastPageField = value
                Me.RaisePropertyChanged("LastPage")
            End Set
        End Property
    End Class
    
    '''<remarks/>
    <System.Xml.Serialization.XmlIncludeAttribute(GetType(UsuarioSistema)),  _
     System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.7.2556.0"),  _
     System.SerializableAttribute(),  _
     System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.ComponentModel.DesignerCategoryAttribute("code"),  _
     System.Xml.Serialization.XmlTypeAttribute([Namespace]:="http://tempuri.org/")>  _
    Partial Public Class Usuario
        Inherits Object
        Implements System.ComponentModel.INotifyPropertyChanged
        
        Private iD_MAESTROField As Long
        
        Private nickNameField As String
        
        Private estadoField As EstadoUsuario
        
        Private esAdminField As Boolean
        
        Private empresasField As System.Data.DataTable
        
        Private empresaSelectedField As Empresa
        
        Private iD_PARTICULARField As Long
        
        Private nombreLargoField As String
        
        Private idPerfilField As Long
        
        Private perfilField As String
        
        Private perfilInmobiliarioField As Boolean
        
        Private perfilOperacionalField As Boolean
        
        Private vePrebalanceField As Boolean
        
        Private opcionesField As System.Data.DataTable
        
        Private ipField As String
        
        Private hostNameField As String
        
        Private loggedInField As Boolean
        
        Private usuarioTestField As Integer
        
        Private usuarioInternoField As Boolean
        
        Private vePreAvanceField As Boolean
        
        Private veEfectoAuditoriaField As Boolean
        
        Private paginaInicioField As String
        
        Private block_MO_GGField As Integer
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=0)>  _
        Public Property ID_MAESTRO() As Long
            Get
                Return Me.iD_MAESTROField
            End Get
            Set
                Me.iD_MAESTROField = value
                Me.RaisePropertyChanged("ID_MAESTRO")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=1)>  _
        Public Property NickName() As String
            Get
                Return Me.nickNameField
            End Get
            Set
                Me.nickNameField = value
                Me.RaisePropertyChanged("NickName")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=2)>  _
        Public Property Estado() As EstadoUsuario
            Get
                Return Me.estadoField
            End Get
            Set
                Me.estadoField = value
                Me.RaisePropertyChanged("Estado")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=3)>  _
        Public Property EsAdmin() As Boolean
            Get
                Return Me.esAdminField
            End Get
            Set
                Me.esAdminField = value
                Me.RaisePropertyChanged("EsAdmin")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=4)>  _
        Public Property Empresas() As System.Data.DataTable
            Get
                Return Me.empresasField
            End Get
            Set
                Me.empresasField = value
                Me.RaisePropertyChanged("Empresas")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=5)>  _
        Public Property EmpresaSelected() As Empresa
            Get
                Return Me.empresaSelectedField
            End Get
            Set
                Me.empresaSelectedField = value
                Me.RaisePropertyChanged("EmpresaSelected")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=6)>  _
        Public Property ID_PARTICULAR() As Long
            Get
                Return Me.iD_PARTICULARField
            End Get
            Set
                Me.iD_PARTICULARField = value
                Me.RaisePropertyChanged("ID_PARTICULAR")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=7)>  _
        Public Property NombreLargo() As String
            Get
                Return Me.nombreLargoField
            End Get
            Set
                Me.nombreLargoField = value
                Me.RaisePropertyChanged("NombreLargo")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=8)>  _
        Public Property IdPerfil() As Long
            Get
                Return Me.idPerfilField
            End Get
            Set
                Me.idPerfilField = value
                Me.RaisePropertyChanged("IdPerfil")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=9)>  _
        Public Property Perfil() As String
            Get
                Return Me.perfilField
            End Get
            Set
                Me.perfilField = value
                Me.RaisePropertyChanged("Perfil")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=10)>  _
        Public Property perfilInmobiliario() As Boolean
            Get
                Return Me.perfilInmobiliarioField
            End Get
            Set
                Me.perfilInmobiliarioField = value
                Me.RaisePropertyChanged("perfilInmobiliario")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=11)>  _
        Public Property perfilOperacional() As Boolean
            Get
                Return Me.perfilOperacionalField
            End Get
            Set
                Me.perfilOperacionalField = value
                Me.RaisePropertyChanged("perfilOperacional")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=12)>  _
        Public Property vePrebalance() As Boolean
            Get
                Return Me.vePrebalanceField
            End Get
            Set
                Me.vePrebalanceField = value
                Me.RaisePropertyChanged("vePrebalance")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=13)>  _
        Public Property Opciones() As System.Data.DataTable
            Get
                Return Me.opcionesField
            End Get
            Set
                Me.opcionesField = value
                Me.RaisePropertyChanged("Opciones")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=14)>  _
        Public Property ip() As String
            Get
                Return Me.ipField
            End Get
            Set
                Me.ipField = value
                Me.RaisePropertyChanged("ip")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=15)>  _
        Public Property hostName() As String
            Get
                Return Me.hostNameField
            End Get
            Set
                Me.hostNameField = value
                Me.RaisePropertyChanged("hostName")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=16)>  _
        Public Property LoggedIn() As Boolean
            Get
                Return Me.loggedInField
            End Get
            Set
                Me.loggedInField = value
                Me.RaisePropertyChanged("LoggedIn")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=17)>  _
        Public Property UsuarioTest() As Integer
            Get
                Return Me.usuarioTestField
            End Get
            Set
                Me.usuarioTestField = value
                Me.RaisePropertyChanged("UsuarioTest")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=18)>  _
        Public Property usuarioInterno() As Boolean
            Get
                Return Me.usuarioInternoField
            End Get
            Set
                Me.usuarioInternoField = value
                Me.RaisePropertyChanged("usuarioInterno")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=19)>  _
        Public Property vePreAvance() As Boolean
            Get
                Return Me.vePreAvanceField
            End Get
            Set
                Me.vePreAvanceField = value
                Me.RaisePropertyChanged("vePreAvance")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=20)>  _
        Public Property veEfectoAuditoria() As Boolean
            Get
                Return Me.veEfectoAuditoriaField
            End Get
            Set
                Me.veEfectoAuditoriaField = value
                Me.RaisePropertyChanged("veEfectoAuditoria")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=21)>  _
        Public Property PaginaInicio() As String
            Get
                Return Me.paginaInicioField
            End Get
            Set
                Me.paginaInicioField = value
                Me.RaisePropertyChanged("PaginaInicio")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=22)>  _
        Public Property Block_MO_GG() As Integer
            Get
                Return Me.block_MO_GGField
            End Get
            Set
                Me.block_MO_GGField = value
                Me.RaisePropertyChanged("Block_MO_GG")
            End Set
        End Property
        
        Public Event PropertyChanged As System.ComponentModel.PropertyChangedEventHandler Implements System.ComponentModel.INotifyPropertyChanged.PropertyChanged
        
        Protected Sub RaisePropertyChanged(ByVal propertyName As String)
            Dim propertyChanged As System.ComponentModel.PropertyChangedEventHandler = Me.PropertyChangedEvent
            If (Not (propertyChanged) Is Nothing) Then
                propertyChanged(Me, New System.ComponentModel.PropertyChangedEventArgs(propertyName))
            End If
        End Sub
    End Class
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.7.2556.0"),  _
     System.SerializableAttribute(),  _
     System.Xml.Serialization.XmlTypeAttribute([Namespace]:="http://tempuri.org/")>  _
    Public Enum EstadoUsuario
        
        '''<remarks/>
        Desconocido
        
        '''<remarks/>
        Activo
        
        '''<remarks/>
        Inactivo
    End Enum
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.7.2556.0"),  _
     System.SerializableAttribute(),  _
     System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.ComponentModel.DesignerCategoryAttribute("code"),  _
     System.Xml.Serialization.XmlTypeAttribute([Namespace]:="http://tempuri.org/")>  _
    Partial Public Class Empresa
        Inherits Object
        Implements System.ComponentModel.INotifyPropertyChanged
        
        Private idField As Long
        
        Private nombreField As String
        
        Private tipoMandoField As Integer
        
        Private muestraDescargaInfField As Boolean
        
        Private baseDatosField As String
        
        Private bDServerField As String
        
        Private bDUsuarioField As String
        
        Private bDPasswordField As String
        
        Private estadoField As EstadoEmpresa
        
        Private datosConexionField As DatosConexion
        
        Private obraIDSelectedField As Long
        
        Private obraNombreSelectedField As String
        
        Private obraCodigoSelectedField As String
        
        Private ganttIDSelectedField As Long
        
        Private ganttNombreSelectedField As String
        
        Private fechaEvalSelectedField As Date
        
        Private fechaAvaIDSelectedField As Long
        
        Private porcAvanceSelectedField As Decimal
        
        Private porcDesvSelectedField As Decimal
        
        Private desvProyDiasField As Integer
        
        Private fechaTermProyField As Date
        
        Private utilizaFocoField As Integer
        
        Private cierreManualField As Integer
        
        Private fechaCierreBalanceField As System.Nullable(Of Date)
        
        Private fechaAvaCierreBalanceField As System.Nullable(Of Date)
        
        Private ganttCierreBalanceField As String
        
        Private idGanttCierreBalanceField As System.Nullable(Of Integer)
        
        Private vistoBuenoField As Boolean
        
        Private estadoFlujoField As Boolean
        
        Private cargoGerenteField As String
        
        Private resultadoActualFocoField As System.Nullable(Of Double)
        
        Private calendarioField As String
        
        Private usaInformeCCField As Integer
        
        Private fechaCierreMOField As System.Nullable(Of Date)
        
        Private fechaCierreSCField As System.Nullable(Of Date)
        
        Private porcRealBalField As Double
        
        Private paginaInicioField As String
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=0)>  _
        Public Property ID() As Long
            Get
                Return Me.idField
            End Get
            Set
                Me.idField = value
                Me.RaisePropertyChanged("ID")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=1)>  _
        Public Property Nombre() As String
            Get
                Return Me.nombreField
            End Get
            Set
                Me.nombreField = value
                Me.RaisePropertyChanged("Nombre")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=2)>  _
        Public Property tipoMando() As Integer
            Get
                Return Me.tipoMandoField
            End Get
            Set
                Me.tipoMandoField = value
                Me.RaisePropertyChanged("tipoMando")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=3)>  _
        Public Property muestraDescargaInf() As Boolean
            Get
                Return Me.muestraDescargaInfField
            End Get
            Set
                Me.muestraDescargaInfField = value
                Me.RaisePropertyChanged("muestraDescargaInf")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=4)>  _
        Public Property BaseDatos() As String
            Get
                Return Me.baseDatosField
            End Get
            Set
                Me.baseDatosField = value
                Me.RaisePropertyChanged("BaseDatos")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=5)>  _
        Public Property BDServer() As String
            Get
                Return Me.bDServerField
            End Get
            Set
                Me.bDServerField = value
                Me.RaisePropertyChanged("BDServer")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=6)>  _
        Public Property BDUsuario() As String
            Get
                Return Me.bDUsuarioField
            End Get
            Set
                Me.bDUsuarioField = value
                Me.RaisePropertyChanged("BDUsuario")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=7)>  _
        Public Property BDPassword() As String
            Get
                Return Me.bDPasswordField
            End Get
            Set
                Me.bDPasswordField = value
                Me.RaisePropertyChanged("BDPassword")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=8)>  _
        Public Property Estado() As EstadoEmpresa
            Get
                Return Me.estadoField
            End Get
            Set
                Me.estadoField = value
                Me.RaisePropertyChanged("Estado")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=9)>  _
        Public Property DatosConexion() As DatosConexion
            Get
                Return Me.datosConexionField
            End Get
            Set
                Me.datosConexionField = value
                Me.RaisePropertyChanged("DatosConexion")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=10)>  _
        Public Property ObraIDSelected() As Long
            Get
                Return Me.obraIDSelectedField
            End Get
            Set
                Me.obraIDSelectedField = value
                Me.RaisePropertyChanged("ObraIDSelected")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=11)>  _
        Public Property ObraNombreSelected() As String
            Get
                Return Me.obraNombreSelectedField
            End Get
            Set
                Me.obraNombreSelectedField = value
                Me.RaisePropertyChanged("ObraNombreSelected")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=12)>  _
        Public Property ObraCodigoSelected() As String
            Get
                Return Me.obraCodigoSelectedField
            End Get
            Set
                Me.obraCodigoSelectedField = value
                Me.RaisePropertyChanged("ObraCodigoSelected")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=13)>  _
        Public Property GanttIDSelected() As Long
            Get
                Return Me.ganttIDSelectedField
            End Get
            Set
                Me.ganttIDSelectedField = value
                Me.RaisePropertyChanged("GanttIDSelected")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=14)>  _
        Public Property GanttNombreSelected() As String
            Get
                Return Me.ganttNombreSelectedField
            End Get
            Set
                Me.ganttNombreSelectedField = value
                Me.RaisePropertyChanged("GanttNombreSelected")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=15)>  _
        Public Property FechaEvalSelected() As Date
            Get
                Return Me.fechaEvalSelectedField
            End Get
            Set
                Me.fechaEvalSelectedField = value
                Me.RaisePropertyChanged("FechaEvalSelected")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=16)>  _
        Public Property FechaAvaIDSelected() As Long
            Get
                Return Me.fechaAvaIDSelectedField
            End Get
            Set
                Me.fechaAvaIDSelectedField = value
                Me.RaisePropertyChanged("FechaAvaIDSelected")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=17)>  _
        Public Property PorcAvanceSelected() As Decimal
            Get
                Return Me.porcAvanceSelectedField
            End Get
            Set
                Me.porcAvanceSelectedField = value
                Me.RaisePropertyChanged("PorcAvanceSelected")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=18)>  _
        Public Property PorcDesvSelected() As Decimal
            Get
                Return Me.porcDesvSelectedField
            End Get
            Set
                Me.porcDesvSelectedField = value
                Me.RaisePropertyChanged("PorcDesvSelected")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=19)>  _
        Public Property DesvProyDias() As Integer
            Get
                Return Me.desvProyDiasField
            End Get
            Set
                Me.desvProyDiasField = value
                Me.RaisePropertyChanged("DesvProyDias")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=20)>  _
        Public Property FechaTermProy() As Date
            Get
                Return Me.fechaTermProyField
            End Get
            Set
                Me.fechaTermProyField = value
                Me.RaisePropertyChanged("FechaTermProy")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=21)>  _
        Public Property utilizaFoco() As Integer
            Get
                Return Me.utilizaFocoField
            End Get
            Set
                Me.utilizaFocoField = value
                Me.RaisePropertyChanged("utilizaFoco")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=22)>  _
        Public Property cierreManual() As Integer
            Get
                Return Me.cierreManualField
            End Get
            Set
                Me.cierreManualField = value
                Me.RaisePropertyChanged("cierreManual")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(IsNullable:=true, Order:=23)>  _
        Public Property FechaCierreBalance() As System.Nullable(Of Date)
            Get
                Return Me.fechaCierreBalanceField
            End Get
            Set
                Me.fechaCierreBalanceField = value
                Me.RaisePropertyChanged("FechaCierreBalance")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(IsNullable:=true, Order:=24)>  _
        Public Property FechaAvaCierreBalance() As System.Nullable(Of Date)
            Get
                Return Me.fechaAvaCierreBalanceField
            End Get
            Set
                Me.fechaAvaCierreBalanceField = value
                Me.RaisePropertyChanged("FechaAvaCierreBalance")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=25)>  _
        Public Property ganttCierreBalance() As String
            Get
                Return Me.ganttCierreBalanceField
            End Get
            Set
                Me.ganttCierreBalanceField = value
                Me.RaisePropertyChanged("ganttCierreBalance")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(IsNullable:=true, Order:=26)>  _
        Public Property idGanttCierreBalance() As System.Nullable(Of Integer)
            Get
                Return Me.idGanttCierreBalanceField
            End Get
            Set
                Me.idGanttCierreBalanceField = value
                Me.RaisePropertyChanged("idGanttCierreBalance")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=27)>  _
        Public Property vistoBueno() As Boolean
            Get
                Return Me.vistoBuenoField
            End Get
            Set
                Me.vistoBuenoField = value
                Me.RaisePropertyChanged("vistoBueno")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=28)>  _
        Public Property estadoFlujo() As Boolean
            Get
                Return Me.estadoFlujoField
            End Get
            Set
                Me.estadoFlujoField = value
                Me.RaisePropertyChanged("estadoFlujo")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=29)>  _
        Public Property cargoGerente() As String
            Get
                Return Me.cargoGerenteField
            End Get
            Set
                Me.cargoGerenteField = value
                Me.RaisePropertyChanged("cargoGerente")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(IsNullable:=true, Order:=30)>  _
        Public Property resultadoActualFoco() As System.Nullable(Of Double)
            Get
                Return Me.resultadoActualFocoField
            End Get
            Set
                Me.resultadoActualFocoField = value
                Me.RaisePropertyChanged("resultadoActualFoco")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=31)>  _
        Public Property calendario() As String
            Get
                Return Me.calendarioField
            End Get
            Set
                Me.calendarioField = value
                Me.RaisePropertyChanged("calendario")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=32)>  _
        Public Property usaInformeCC() As Integer
            Get
                Return Me.usaInformeCCField
            End Get
            Set
                Me.usaInformeCCField = value
                Me.RaisePropertyChanged("usaInformeCC")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(IsNullable:=true, Order:=33)>  _
        Public Property fechaCierreMO() As System.Nullable(Of Date)
            Get
                Return Me.fechaCierreMOField
            End Get
            Set
                Me.fechaCierreMOField = value
                Me.RaisePropertyChanged("fechaCierreMO")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(IsNullable:=true, Order:=34)>  _
        Public Property fechaCierreSC() As System.Nullable(Of Date)
            Get
                Return Me.fechaCierreSCField
            End Get
            Set
                Me.fechaCierreSCField = value
                Me.RaisePropertyChanged("fechaCierreSC")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=35)>  _
        Public Property porcRealBal() As Double
            Get
                Return Me.porcRealBalField
            End Get
            Set
                Me.porcRealBalField = value
                Me.RaisePropertyChanged("porcRealBal")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=36)>  _
        Public Property paginaInicio() As String
            Get
                Return Me.paginaInicioField
            End Get
            Set
                Me.paginaInicioField = value
                Me.RaisePropertyChanged("paginaInicio")
            End Set
        End Property
        
        Public Event PropertyChanged As System.ComponentModel.PropertyChangedEventHandler Implements System.ComponentModel.INotifyPropertyChanged.PropertyChanged
        
        Protected Sub RaisePropertyChanged(ByVal propertyName As String)
            Dim propertyChanged As System.ComponentModel.PropertyChangedEventHandler = Me.PropertyChangedEvent
            If (Not (propertyChanged) Is Nothing) Then
                propertyChanged(Me, New System.ComponentModel.PropertyChangedEventArgs(propertyName))
            End If
        End Sub
    End Class
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.7.2556.0"),  _
     System.SerializableAttribute(),  _
     System.Xml.Serialization.XmlTypeAttribute([Namespace]:="http://tempuri.org/")>  _
    Public Enum EstadoEmpresa
        
        '''<remarks/>
        Desconocido
        
        '''<remarks/>
        Activo
        
        '''<remarks/>
        Inactivo
    End Enum
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.7.2556.0"),  _
     System.SerializableAttribute(),  _
     System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.ComponentModel.DesignerCategoryAttribute("code"),  _
     System.Xml.Serialization.XmlTypeAttribute([Namespace]:="http://tempuri.org/")>  _
    Partial Public Class DatosConexion
        Inherits Object
        Implements System.ComponentModel.INotifyPropertyChanged
        
        Private servidorField As String
        
        Private catalogoField As String
        
        Private usuarioField As String
        
        Private claveField As String
        
        Private usarWindowsAutentificationField As Boolean
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=0)>  _
        Public Property Servidor() As String
            Get
                Return Me.servidorField
            End Get
            Set
                Me.servidorField = value
                Me.RaisePropertyChanged("Servidor")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=1)>  _
        Public Property Catalogo() As String
            Get
                Return Me.catalogoField
            End Get
            Set
                Me.catalogoField = value
                Me.RaisePropertyChanged("Catalogo")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=2)>  _
        Public Property Usuario() As String
            Get
                Return Me.usuarioField
            End Get
            Set
                Me.usuarioField = value
                Me.RaisePropertyChanged("UsuarioSistema")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=3)>  _
        Public Property Clave() As String
            Get
                Return Me.claveField
            End Get
            Set
                Me.claveField = value
                Me.RaisePropertyChanged("Clave")
            End Set
        End Property
        
        '''<remarks/>
        <System.Xml.Serialization.XmlElementAttribute(Order:=4)>  _
        Public Property UsarWindowsAutentification() As Boolean
            Get
                Return Me.usarWindowsAutentificationField
            End Get
            Set
                Me.usarWindowsAutentificationField = value
                Me.RaisePropertyChanged("UsarWindowsAutentification")
            End Set
        End Property
        
        Public Event PropertyChanged As System.ComponentModel.PropertyChangedEventHandler Implements System.ComponentModel.INotifyPropertyChanged.PropertyChanged
        
        Protected Sub RaisePropertyChanged(ByVal propertyName As String)
            Dim propertyChanged As System.ComponentModel.PropertyChangedEventHandler = Me.PropertyChangedEvent
            If (Not (propertyChanged) Is Nothing) Then
                propertyChanged(Me, New System.ComponentModel.PropertyChangedEventArgs(propertyName))
            End If
        End Sub
    End Class
    
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")>  _
    Public Interface Service1SoapChannel
        Inherits wsLogin.Service1Soap, System.ServiceModel.IClientChannel
    End Interface
    
    <System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")>  _
    Partial Public Class Service1SoapClient
        Inherits System.ServiceModel.ClientBase(Of wsLogin.Service1Soap)
        Implements wsLogin.Service1Soap
        
        Public Sub New()
            MyBase.New
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String)
            MyBase.New(endpointConfigurationName)
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String, ByVal remoteAddress As String)
            MyBase.New(endpointConfigurationName, remoteAddress)
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String, ByVal remoteAddress As System.ServiceModel.EndpointAddress)
            MyBase.New(endpointConfigurationName, remoteAddress)
        End Sub
        
        Public Sub New(ByVal binding As System.ServiceModel.Channels.Binding, ByVal remoteAddress As System.ServiceModel.EndpointAddress)
            MyBase.New(binding, remoteAddress)
        End Sub
        
        Public Function Login(ByVal vUsuario As String, ByVal vPassword As String, ByVal vStrConexion As String, ByVal ip As String, ByVal host As String) As wsLogin.UsuarioSistema Implements wsLogin.Service1Soap.Login
            Return MyBase.Channel.Login(vUsuario, vPassword, vStrConexion, ip, host)
        End Function
    End Class
End Namespace

Public Class rptProtocolo
    Inherits DevExpress.XtraReports.UI.XtraReport


#Region " Designer generated code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Designer.
        InitializeComponent()

        'Add any initialization after the InitializeComponent() call

    End Sub

    'XtraReport overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

    Friend WithEvents DsReporteProtocolo2 As dsReporteProtocolo

    'Required by the Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Designer
    'It can be modified using the Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Dim XrGroupSortingSummary1 As DevExpress.XtraReports.UI.XRGroupSortingSummary = New DevExpress.XtraReports.UI.XRGroupSortingSummary()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(rptProtocolo))
        Me.Detail = New DevExpress.XtraReports.UI.DetailBand()
        Me.XrTable2 = New DevExpress.XtraReports.UI.XRTable()
        Me.XrTableRow6 = New DevExpress.XtraReports.UI.XRTableRow()
        Me.XrTableCell11 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.SPU_DetalleProtocoloTableAdapter = New Presentacion.dsReporteProtocoloTableAdapters.SPU_DetalleProtocoloTableAdapter()
        Me.TopMargin = New DevExpress.XtraReports.UI.TopMarginBand()
        Me.XrLabel8 = New DevExpress.XtraReports.UI.XRLabel()
        Me.XrLabel7 = New DevExpress.XtraReports.UI.XRLabel()
        Me.XrTable4 = New DevExpress.XtraReports.UI.XRTable()
        Me.XrTableRow8 = New DevExpress.XtraReports.UI.XRTableRow()
        Me.XrTableCell18 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell19 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell20 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell15 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerTable = New DevExpress.XtraReports.UI.XRTable()
        Me.customerNameRow = New DevExpress.XtraReports.UI.XRTableRow()
        Me.billToLabel = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerName = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerContactNameRow = New DevExpress.XtraReports.UI.XRTableRow()
        Me.customerTableCell1 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerContactName = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerAddressRow = New DevExpress.XtraReports.UI.XRTableRow()
        Me.customerTableCell2 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerAddress = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerCityRow = New DevExpress.XtraReports.UI.XRTableRow()
        Me.customerTableCell3 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerCity = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerCountryRow = New DevExpress.XtraReports.UI.XRTableRow()
        Me.customerTableCell4 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.customerCountry = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableRow10 = New DevExpress.XtraReports.UI.XRTableRow()
        Me.XrTableCell21 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell22 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableRow11 = New DevExpress.XtraReports.UI.XRTableRow()
        Me.XrTableCell23 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell24 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableRow12 = New DevExpress.XtraReports.UI.XRTableRow()
        Me.XrTableCell25 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell26 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.BottomMargin = New DevExpress.XtraReports.UI.BottomMarginBand()
        Me.MaestroProtocoloTableAdapter = New Presentacion.dsReporteProtocoloTableAdapters.SPU_MaestroProtocoloTableAdapter()
        Me.GroupHeader1 = New DevExpress.XtraReports.UI.GroupHeaderBand()
        Me.XrTable3 = New DevExpress.XtraReports.UI.XRTable()
        Me.XrTableRow7 = New DevExpress.XtraReports.UI.XRTableRow()
        Me.XrTableCell8 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell10 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.XrTableCell12 = New DevExpress.XtraReports.UI.XRTableCell()
        Me.SPU_GrupoTableAdapter = New Presentacion.dsReporteProtocoloTableAdapters.SPU_GRUPOTableAdapter()
        Me.DetailReport = New DevExpress.XtraReports.UI.DetailReportBand()
        Me.Detail1 = New DevExpress.XtraReports.UI.DetailBand()
        Me.XrLabel5 = New DevExpress.XtraReports.UI.XRLabel()
        Me.XrLabel2 = New DevExpress.XtraReports.UI.XRLabel()
        Me.XrLabel4 = New DevExpress.XtraReports.UI.XRLabel()
        Me.DsReporteProtocolo2 = New Presentacion.dsReporteProtocolo()
        CType(Me.XrTable2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.XrTable4, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.customerTable, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.XrTable3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DsReporteProtocolo2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me, System.ComponentModel.ISupportInitialize).BeginInit()
        '
        'Detail
        '
        Me.Detail.BackColor = System.Drawing.Color.LightGray
        Me.Detail.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrTable2})
        Me.Detail.HeightF = 25.0!
        Me.Detail.KeepTogether = True
        Me.Detail.KeepTogetherWithDetailReports = True
        Me.Detail.MultiColumn.Layout = DevExpress.XtraPrinting.ColumnLayout.AcrossThenDown
        Me.Detail.Name = "Detail"
        Me.Detail.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.Detail.StylePriority.UseBackColor = False
        Me.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'XrTable2
        '
        Me.XrTable2.LocationFloat = New DevExpress.Utils.PointFloat(0!, 0!)
        Me.XrTable2.Name = "XrTable2"
        Me.XrTable2.Rows.AddRange(New DevExpress.XtraReports.UI.XRTableRow() {Me.XrTableRow6})
        Me.XrTable2.SizeF = New System.Drawing.SizeF(650.0!, 25.0!)
        '
        'XrTableRow6
        '
        Me.XrTableRow6.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.XrTableCell11})
        Me.XrTableRow6.Name = "XrTableRow6"
        Me.XrTableRow6.Weight = 1.0R
        '
        'XrTableCell11
        '
        Me.XrTableCell11.BackColor = System.Drawing.Color.Gainsboro
        Me.XrTableCell11.BorderColor = System.Drawing.Color.Silver
        Me.XrTableCell11.Borders = CType((DevExpress.XtraPrinting.BorderSide.Top Or DevExpress.XtraPrinting.BorderSide.Bottom), DevExpress.XtraPrinting.BorderSide)
        Me.XrTableCell11.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[NOMBRE_GRP_CHK]")})
        Me.XrTableCell11.Font = New System.Drawing.Font("Verdana", 6.0!, System.Drawing.FontStyle.Bold)
        Me.XrTableCell11.Name = "XrTableCell11"
        Me.XrTableCell11.Padding = New DevExpress.XtraPrinting.PaddingInfo(15, 0, 0, 0, 100.0!)
        Me.XrTableCell11.StylePriority.UseBackColor = False
        Me.XrTableCell11.StylePriority.UseBorderColor = False
        Me.XrTableCell11.StylePriority.UseBorders = False
        Me.XrTableCell11.StylePriority.UseFont = False
        Me.XrTableCell11.StylePriority.UsePadding = False
        Me.XrTableCell11.StylePriority.UseTextAlignment = False
        Me.XrTableCell11.Text = "XrTableCell11"
        Me.XrTableCell11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.XrTableCell11.Weight = 2.3105767587515023R
        '
        'SPU_DetalleProtocoloTableAdapter
        '
        Me.SPU_DetalleProtocoloTableAdapter.ClearBeforeFill = True
        '
        'TopMargin
        '
        Me.TopMargin.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrLabel8, Me.XrLabel7, Me.XrTable4, Me.customerTable})
        Me.TopMargin.HeightF = 271.5417!
        Me.TopMargin.Name = "TopMargin"
        Me.TopMargin.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.TopMargin.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'XrLabel8
        '
        Me.XrLabel8.Font = New System.Drawing.Font("Verdana", 6.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Underline), System.Drawing.FontStyle))
        Me.XrLabel8.LocationFloat = New DevExpress.Utils.PointFloat(118.6449!, 20.00001!)
        Me.XrLabel8.Name = "XrLabel8"
        Me.XrLabel8.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrLabel8.SizeF = New System.Drawing.SizeF(100.0!, 11.875!)
        Me.XrLabel8.StylePriority.UseFont = False
        Me.XrLabel8.StylePriority.UseTextAlignment = False
        Me.XrLabel8.Text = "PROYECTO"
        Me.XrLabel8.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        '
        'XrLabel7
        '
        Me.XrLabel7.Font = New System.Drawing.Font("Verdana", 6.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Underline), System.Drawing.FontStyle))
        Me.XrLabel7.LocationFloat = New DevExpress.Utils.PointFloat(0!, 20.00001!)
        Me.XrLabel7.Name = "XrLabel7"
        Me.XrLabel7.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrLabel7.SizeF = New System.Drawing.SizeF(100.0!, 11.875!)
        Me.XrLabel7.StylePriority.UseFont = False
        Me.XrLabel7.StylePriority.UseTextAlignment = False
        Me.XrLabel7.Text = "PROTOCOLO"
        Me.XrLabel7.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        '
        'XrTable4
        '
        Me.XrTable4.Font = New System.Drawing.Font("Verdana", 10.0!, System.Drawing.FontStyle.Bold)
        Me.XrTable4.LocationFloat = New DevExpress.Utils.PointFloat(0!, 31.87501!)
        Me.XrTable4.Name = "XrTable4"
        Me.XrTable4.Rows.AddRange(New DevExpress.XtraReports.UI.XRTableRow() {Me.XrTableRow8})
        Me.XrTable4.SizeF = New System.Drawing.SizeF(555.4167!, 25.0!)
        Me.XrTable4.StylePriority.UseFont = False
        Me.XrTable4.StylePriority.UseTextAlignment = False
        Me.XrTable4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter
        '
        'XrTableRow8
        '
        Me.XrTableRow8.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.XrTableCell18, Me.XrTableCell19, Me.XrTableCell20, Me.XrTableCell15})
        Me.XrTableRow8.Name = "XrTableRow8"
        Me.XrTableRow8.Weight = 1.0R
        '
        'XrTableCell18
        '
        Me.XrTableCell18.Name = "XrTableCell18"
        Me.XrTableCell18.StylePriority.UseTextAlignment = False
        Me.XrTableCell18.Text = "["
        Me.XrTableCell18.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.XrTableCell18.Weight = 0.092969969355493R
        '
        'XrTableCell19
        '
        Me.XrTableCell19.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[ID_ACC_REG]")})
        Me.XrTableCell19.Name = "XrTableCell19"
        Me.XrTableCell19.StylePriority.UseTextAlignment = False
        Me.XrTableCell19.Text = "XrTableCell19"
        Me.XrTableCell19.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        Me.XrTableCell19.Weight = 0.36842956513576075R
        '
        'XrTableCell20
        '
        Me.XrTableCell20.Name = "XrTableCell20"
        Me.XrTableCell20.StylePriority.UseTextAlignment = False
        Me.XrTableCell20.Text = "]"
        Me.XrTableCell20.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        Me.XrTableCell20.Weight = 0.15116204774721481R
        '
        'XrTableCell15
        '
        Me.XrTableCell15.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[NOM_PROYECTO]")})
        Me.XrTableCell15.Font = New System.Drawing.Font("Verdana", 10.0!, System.Drawing.FontStyle.Bold)
        Me.XrTableCell15.Name = "XrTableCell15"
        Me.XrTableCell15.StylePriority.UseFont = False
        Me.XrTableCell15.StylePriority.UseTextAlignment = False
        Me.XrTableCell15.Text = "XrTableCell15"
        Me.XrTableCell15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.XrTableCell15.Weight = 2.4705089831093079R
        '
        'customerTable
        '
        Me.customerTable.BackColor = System.Drawing.Color.Transparent
        Me.customerTable.BorderColor = System.Drawing.Color.Silver
        Me.customerTable.Borders = CType((DevExpress.XtraPrinting.BorderSide.Top Or DevExpress.XtraPrinting.BorderSide.Bottom), DevExpress.XtraPrinting.BorderSide)
        Me.customerTable.Font = New System.Drawing.Font("Segoe UI", 8.0!)
        Me.customerTable.LocationFloat = New DevExpress.Utils.PointFloat(0!, 69.33343!)
        Me.customerTable.Name = "customerTable"
        Me.customerTable.Rows.AddRange(New DevExpress.XtraReports.UI.XRTableRow() {Me.customerNameRow, Me.customerContactNameRow, Me.customerAddressRow, Me.customerCityRow, Me.customerCountryRow, Me.XrTableRow10, Me.XrTableRow11, Me.XrTableRow12})
        Me.customerTable.SizeF = New System.Drawing.SizeF(650.0001!, 200.0!)
        Me.customerTable.StylePriority.UseBackColor = False
        Me.customerTable.StylePriority.UseBorderColor = False
        Me.customerTable.StylePriority.UseBorders = False
        Me.customerTable.StylePriority.UseFont = False
        '
        'customerNameRow
        '
        Me.customerNameRow.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.billToLabel, Me.customerName})
        Me.customerNameRow.Name = "customerNameRow"
        Me.customerNameRow.Weight = 1.0R
        '
        'billToLabel
        '
        Me.billToLabel.BackColor = System.Drawing.Color.Transparent
        Me.billToLabel.BorderColor = System.Drawing.Color.Silver
        Me.billToLabel.CanShrink = True
        Me.billToLabel.Font = New System.Drawing.Font("Verdana", 8.0!, System.Drawing.FontStyle.Bold)
        Me.billToLabel.Name = "billToLabel"
        Me.billToLabel.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.billToLabel.StylePriority.UseBackColor = False
        Me.billToLabel.StylePriority.UseBorderColor = False
        Me.billToLabel.StylePriority.UseFont = False
        Me.billToLabel.StylePriority.UsePadding = False
        Me.billToLabel.StylePriority.UseTextAlignment = False
        Me.billToLabel.Text = "Actividad"
        Me.billToLabel.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.billToLabel.Weight = 0.45950162527394045R
        '
        'customerName
        '
        Me.customerName.CanGrow = False
        Me.customerName.CanShrink = True
        Me.customerName.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[NOMBRE_ACT]")})
        Me.customerName.Font = New System.Drawing.Font("Verdana", 8.0!, System.Drawing.FontStyle.Bold)
        Me.customerName.ForeColor = System.Drawing.Color.DimGray
        Me.customerName.Name = "customerName"
        Me.customerName.StylePriority.UseFont = False
        Me.customerName.StylePriority.UseForeColor = False
        Me.customerName.StylePriority.UsePadding = False
        Me.customerName.StylePriority.UseTextAlignment = False
        Me.customerName.Text = "CustomerName"
        Me.customerName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.customerName.Weight = 1.4076211583655875R
        Me.customerName.WordWrap = False
        '
        'customerContactNameRow
        '
        Me.customerContactNameRow.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.customerTableCell1, Me.customerContactName})
        Me.customerContactNameRow.Name = "customerContactNameRow"
        Me.customerContactNameRow.Weight = 1.0R
        '
        'customerTableCell1
        '
        Me.customerTableCell1.BackColor = System.Drawing.Color.Transparent
        Me.customerTableCell1.BorderColor = System.Drawing.Color.Silver
        Me.customerTableCell1.CanShrink = True
        Me.customerTableCell1.Font = New System.Drawing.Font("Verdana", 8.0!, System.Drawing.FontStyle.Bold)
        Me.customerTableCell1.Name = "customerTableCell1"
        Me.customerTableCell1.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.customerTableCell1.StylePriority.UseBackColor = False
        Me.customerTableCell1.StylePriority.UseBorderColor = False
        Me.customerTableCell1.StylePriority.UseFont = False
        Me.customerTableCell1.StylePriority.UsePadding = False
        Me.customerTableCell1.StylePriority.UseTextAlignment = False
        Me.customerTableCell1.Text = "Etapa"
        Me.customerTableCell1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.customerTableCell1.Weight = 0.45950162527394045R
        '
        'customerContactName
        '
        Me.customerContactName.CanShrink = True
        Me.customerContactName.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[NOMBRE_ETA]")})
        Me.customerContactName.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.customerContactName.ForeColor = System.Drawing.Color.DimGray
        Me.customerContactName.Name = "customerContactName"
        Me.customerContactName.StylePriority.UseFont = False
        Me.customerContactName.StylePriority.UseForeColor = False
        Me.customerContactName.StylePriority.UsePadding = False
        Me.customerContactName.StylePriority.UseTextAlignment = False
        Me.customerContactName.Text = "CustomerContactName"
        Me.customerContactName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.customerContactName.Weight = 1.4076211583655875R
        '
        'customerAddressRow
        '
        Me.customerAddressRow.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.customerTableCell2, Me.customerAddress})
        Me.customerAddressRow.Name = "customerAddressRow"
        Me.customerAddressRow.Weight = 1.0R
        '
        'customerTableCell2
        '
        Me.customerTableCell2.BackColor = System.Drawing.Color.Transparent
        Me.customerTableCell2.BorderColor = System.Drawing.Color.Silver
        Me.customerTableCell2.CanShrink = True
        Me.customerTableCell2.Font = New System.Drawing.Font("Verdana", 8.0!, System.Drawing.FontStyle.Bold)
        Me.customerTableCell2.Name = "customerTableCell2"
        Me.customerTableCell2.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.customerTableCell2.StylePriority.UseBackColor = False
        Me.customerTableCell2.StylePriority.UseBorderColor = False
        Me.customerTableCell2.StylePriority.UseFont = False
        Me.customerTableCell2.StylePriority.UsePadding = False
        Me.customerTableCell2.StylePriority.UseTextAlignment = False
        Me.customerTableCell2.Text = "Recinto"
        Me.customerTableCell2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.customerTableCell2.Weight = 0.45950162527394045R
        '
        'customerAddress
        '
        Me.customerAddress.CanShrink = True
        Me.customerAddress.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[NOMBRE_UCO]")})
        Me.customerAddress.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.customerAddress.ForeColor = System.Drawing.Color.DimGray
        Me.customerAddress.Name = "customerAddress"
        Me.customerAddress.StylePriority.UseFont = False
        Me.customerAddress.StylePriority.UseForeColor = False
        Me.customerAddress.StylePriority.UseTextAlignment = False
        Me.customerAddress.Text = "CustomerAddress"
        Me.customerAddress.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.customerAddress.Weight = 1.4076211583655875R
        '
        'customerCityRow
        '
        Me.customerCityRow.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.customerTableCell3, Me.customerCity})
        Me.customerCityRow.Name = "customerCityRow"
        Me.customerCityRow.Weight = 1.0R
        '
        'customerTableCell3
        '
        Me.customerTableCell3.BackColor = System.Drawing.Color.Transparent
        Me.customerTableCell3.BorderColor = System.Drawing.Color.Silver
        Me.customerTableCell3.CanShrink = True
        Me.customerTableCell3.Font = New System.Drawing.Font("Verdana", 8.0!, System.Drawing.FontStyle.Bold)
        Me.customerTableCell3.Name = "customerTableCell3"
        Me.customerTableCell3.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.customerTableCell3.StylePriority.UseBackColor = False
        Me.customerTableCell3.StylePriority.UseBorderColor = False
        Me.customerTableCell3.StylePriority.UseFont = False
        Me.customerTableCell3.StylePriority.UsePadding = False
        Me.customerTableCell3.StylePriority.UseTextAlignment = False
        Me.customerTableCell3.Text = "Ubicacion"
        Me.customerTableCell3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.customerTableCell3.Weight = 0.45950162527394045R
        '
        'customerCity
        '
        Me.customerCity.CanShrink = True
        Me.customerCity.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[RAIZ]")})
        Me.customerCity.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.customerCity.ForeColor = System.Drawing.Color.DimGray
        Me.customerCity.Name = "customerCity"
        Me.customerCity.StylePriority.UseFont = False
        Me.customerCity.StylePriority.UseForeColor = False
        Me.customerCity.StylePriority.UseTextAlignment = False
        Me.customerCity.Text = "CustomerCity N/A"
        Me.customerCity.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.customerCity.Weight = 1.4076211583655875R
        '
        'customerCountryRow
        '
        Me.customerCountryRow.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.customerTableCell4, Me.customerCountry})
        Me.customerCountryRow.Name = "customerCountryRow"
        Me.customerCountryRow.Weight = 1.0R
        '
        'customerTableCell4
        '
        Me.customerTableCell4.BackColor = System.Drawing.Color.Transparent
        Me.customerTableCell4.BorderColor = System.Drawing.Color.Silver
        Me.customerTableCell4.CanShrink = True
        Me.customerTableCell4.Font = New System.Drawing.Font("Verdana", 8.0!, System.Drawing.FontStyle.Bold)
        Me.customerTableCell4.Name = "customerTableCell4"
        Me.customerTableCell4.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.customerTableCell4.StylePriority.UseBackColor = False
        Me.customerTableCell4.StylePriority.UseBorderColor = False
        Me.customerTableCell4.StylePriority.UseFont = False
        Me.customerTableCell4.StylePriority.UsePadding = False
        Me.customerTableCell4.StylePriority.UseTextAlignment = False
        Me.customerTableCell4.Text = "Creación"
        Me.customerTableCell4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.customerTableCell4.Weight = 0.45950162527394045R
        '
        'customerCountry
        '
        Me.customerCountry.CanShrink = True
        Me.customerCountry.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[FECHA_CREA]")})
        Me.customerCountry.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.customerCountry.ForeColor = System.Drawing.Color.DimGray
        Me.customerCountry.Name = "customerCountry"
        Me.customerCountry.StylePriority.UseFont = False
        Me.customerCountry.StylePriority.UseForeColor = False
        Me.customerCountry.StylePriority.UseTextAlignment = False
        Me.customerCountry.Text = "CustomerCountry"
        Me.customerCountry.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.customerCountry.TextFormatString = "{0:dddd, d' de 'MMMM' de 'yyyy H:mm}"
        Me.customerCountry.Weight = 1.4076211583655875R
        '
        'XrTableRow10
        '
        Me.XrTableRow10.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.XrTableCell21, Me.XrTableCell22})
        Me.XrTableRow10.Name = "XrTableRow10"
        Me.XrTableRow10.Weight = 1.0R
        '
        'XrTableCell21
        '
        Me.XrTableCell21.BackColor = System.Drawing.Color.Transparent
        Me.XrTableCell21.BorderColor = System.Drawing.Color.Silver
        Me.XrTableCell21.Font = New System.Drawing.Font("Verdana", 8.0!, System.Drawing.FontStyle.Bold)
        Me.XrTableCell21.Name = "XrTableCell21"
        Me.XrTableCell21.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.XrTableCell21.StylePriority.UseBackColor = False
        Me.XrTableCell21.StylePriority.UseBorderColor = False
        Me.XrTableCell21.StylePriority.UseFont = False
        Me.XrTableCell21.StylePriority.UsePadding = False
        Me.XrTableCell21.StylePriority.UseTextAlignment = False
        Me.XrTableCell21.Text = "Ultimo V°B°"
        Me.XrTableCell21.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.XrTableCell21.Weight = 0.45950162527394045R
        '
        'XrTableCell22
        '
        Me.XrTableCell22.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[FECHA_ULT_VB]")})
        Me.XrTableCell22.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.XrTableCell22.ForeColor = System.Drawing.Color.DimGray
        Me.XrTableCell22.Name = "XrTableCell22"
        Me.XrTableCell22.StylePriority.UseFont = False
        Me.XrTableCell22.StylePriority.UseForeColor = False
        Me.XrTableCell22.StylePriority.UseTextAlignment = False
        Me.XrTableCell22.Text = "XrTableCell22"
        Me.XrTableCell22.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.XrTableCell22.Weight = 1.4076211583655875R
        '
        'XrTableRow11
        '
        Me.XrTableRow11.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.XrTableCell23, Me.XrTableCell24})
        Me.XrTableRow11.Name = "XrTableRow11"
        Me.XrTableRow11.Weight = 1.0R
        '
        'XrTableCell23
        '
        Me.XrTableCell23.BackColor = System.Drawing.Color.Transparent
        Me.XrTableCell23.BorderColor = System.Drawing.Color.Silver
        Me.XrTableCell23.Font = New System.Drawing.Font("Verdana", 8.0!, System.Drawing.FontStyle.Bold)
        Me.XrTableCell23.Name = "XrTableCell23"
        Me.XrTableCell23.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.XrTableCell23.StylePriority.UseBackColor = False
        Me.XrTableCell23.StylePriority.UseBorderColor = False
        Me.XrTableCell23.StylePriority.UseFont = False
        Me.XrTableCell23.StylePriority.UsePadding = False
        Me.XrTableCell23.StylePriority.UseTextAlignment = False
        Me.XrTableCell23.Text = "Nivel V°B°"
        Me.XrTableCell23.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.XrTableCell23.Weight = 0.45950162527394045R
        '
        'XrTableCell24
        '
        Me.XrTableCell24.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[NIVEL_VB]")})
        Me.XrTableCell24.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.XrTableCell24.ForeColor = System.Drawing.Color.DimGray
        Me.XrTableCell24.Name = "XrTableCell24"
        Me.XrTableCell24.StylePriority.UseFont = False
        Me.XrTableCell24.StylePriority.UseForeColor = False
        Me.XrTableCell24.StylePriority.UseTextAlignment = False
        Me.XrTableCell24.Text = "XrTableCell24"
        Me.XrTableCell24.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.XrTableCell24.Weight = 1.4076211583655875R
        '
        'XrTableRow12
        '
        Me.XrTableRow12.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.XrTableCell25, Me.XrTableCell26})
        Me.XrTableRow12.Name = "XrTableRow12"
        Me.XrTableRow12.Weight = 1.0R
        '
        'XrTableCell25
        '
        Me.XrTableCell25.BackColor = System.Drawing.Color.Transparent
        Me.XrTableCell25.BorderColor = System.Drawing.Color.Silver
        Me.XrTableCell25.Font = New System.Drawing.Font("Verdana", 8.0!, System.Drawing.FontStyle.Bold)
        Me.XrTableCell25.Name = "XrTableCell25"
        Me.XrTableCell25.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, 100.0!)
        Me.XrTableCell25.StylePriority.UseBackColor = False
        Me.XrTableCell25.StylePriority.UseBorderColor = False
        Me.XrTableCell25.StylePriority.UseFont = False
        Me.XrTableCell25.StylePriority.UsePadding = False
        Me.XrTableCell25.StylePriority.UseTextAlignment = False
        Me.XrTableCell25.Text = "Dias Dif."
        Me.XrTableCell25.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight
        Me.XrTableCell25.Weight = 0.45950162527394045R
        '
        'XrTableCell26
        '
        Me.XrTableCell26.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[DIAS_DIF]")})
        Me.XrTableCell26.Font = New System.Drawing.Font("Verdana", 8.0!)
        Me.XrTableCell26.ForeColor = System.Drawing.Color.DimGray
        Me.XrTableCell26.Name = "XrTableCell26"
        Me.XrTableCell26.StylePriority.UseFont = False
        Me.XrTableCell26.StylePriority.UseForeColor = False
        Me.XrTableCell26.StylePriority.UseTextAlignment = False
        Me.XrTableCell26.Text = "XrTableCell26"
        Me.XrTableCell26.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.XrTableCell26.Weight = 1.4076211583655875R
        '
        'BottomMargin
        '
        Me.BottomMargin.HeightF = 142.0!
        Me.BottomMargin.Name = "BottomMargin"
        Me.BottomMargin.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.BottomMargin.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'MaestroProtocoloTableAdapter
        '
        Me.MaestroProtocoloTableAdapter.ClearBeforeFill = True
        '
        'GroupHeader1
        '
        Me.GroupHeader1.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrTable3})
        Me.GroupHeader1.GroupUnion = DevExpress.XtraReports.UI.GroupUnion.WholePage
        Me.GroupHeader1.HeightF = 26.04167!
        Me.GroupHeader1.KeepTogether = True
        Me.GroupHeader1.Name = "GroupHeader1"
        Me.GroupHeader1.PageBreak = DevExpress.XtraReports.UI.PageBreak.BeforeBand
        Me.GroupHeader1.RepeatEveryPage = True
        XrGroupSortingSummary1.FieldName = "NOMBRE_GRP_CHK"
        Me.GroupHeader1.SortingSummary = XrGroupSortingSummary1
        '
        'XrTable3
        '
        Me.XrTable3.BackColor = System.Drawing.Color.LightSkyBlue
        Me.XrTable3.LocationFloat = New DevExpress.Utils.PointFloat(0!, 1.041667!)
        Me.XrTable3.Name = "XrTable3"
        Me.XrTable3.Rows.AddRange(New DevExpress.XtraReports.UI.XRTableRow() {Me.XrTableRow7})
        Me.XrTable3.SizeF = New System.Drawing.SizeF(650.0!, 25.0!)
        Me.XrTable3.StylePriority.UseBackColor = False
        '
        'XrTableRow7
        '
        Me.XrTableRow7.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.XrTableCell8, Me.XrTableCell10, Me.XrTableCell12})
        Me.XrTableRow7.Name = "XrTableRow7"
        Me.XrTableRow7.Weight = 1.0R
        '
        'XrTableCell8
        '
        Me.XrTableCell8.Font = New System.Drawing.Font("Verdana", 9.75!, System.Drawing.FontStyle.Bold)
        Me.XrTableCell8.Name = "XrTableCell8"
        Me.XrTableCell8.StylePriority.UseFont = False
        Me.XrTableCell8.StylePriority.UseTextAlignment = False
        Me.XrTableCell8.Text = "Descripción"
        Me.XrTableCell8.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        Me.XrTableCell8.Weight = 1.6057691603440505R
        '
        'XrTableCell10
        '
        Me.XrTableCell10.Font = New System.Drawing.Font("Verdana", 9.75!, System.Drawing.FontStyle.Bold)
        Me.XrTableCell10.Name = "XrTableCell10"
        Me.XrTableCell10.StylePriority.UseFont = False
        Me.XrTableCell10.StylePriority.UseTextAlignment = False
        Me.XrTableCell10.Text = "Estado"
        Me.XrTableCell10.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        Me.XrTableCell10.Weight = 0.43365358792818504R
        '
        'XrTableCell12
        '
        Me.XrTableCell12.Font = New System.Drawing.Font("Verdana", 9.75!, System.Drawing.FontStyle.Bold)
        Me.XrTableCell12.Name = "XrTableCell12"
        Me.XrTableCell12.StylePriority.UseFont = False
        Me.XrTableCell12.StylePriority.UseTextAlignment = False
        Me.XrTableCell12.Text = "Observaciones"
        Me.XrTableCell12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        Me.XrTableCell12.Weight = 0.96057725172776443R
        '
        'SPU_GrupoTableAdapter
        '
        Me.SPU_GrupoTableAdapter.ClearBeforeFill = True
        '
        'DetailReport
        '
        Me.DetailReport.Bands.AddRange(New DevExpress.XtraReports.UI.Band() {Me.Detail1})
        Me.DetailReport.DataMember = "SPU_DetalleProtocolo.grupoXdetalle"
        Me.DetailReport.DataSource = Me.DsReporteProtocolo2
        Me.DetailReport.Level = 0
        Me.DetailReport.Name = "DetailReport"
        '
        'Detail1
        '
        Me.Detail1.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrLabel5, Me.XrLabel2, Me.XrLabel4})
        Me.Detail1.HeightF = 15.00002!
        Me.Detail1.MultiColumn.Layout = DevExpress.XtraPrinting.ColumnLayout.AcrossThenDown
        Me.Detail1.Name = "Detail1"
        '
        'XrLabel5
        '
        Me.XrLabel5.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[OBSERVACION_CHK]")})
        Me.XrLabel5.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.0!)
        Me.XrLabel5.ForeColor = System.Drawing.Color.DimGray
        Me.XrLabel5.LocationFloat = New DevExpress.Utils.PointFloat(441.8749!, 0!)
        Me.XrLabel5.Name = "XrLabel5"
        Me.XrLabel5.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrLabel5.SizeF = New System.Drawing.SizeF(202.6251!, 12.99998!)
        Me.XrLabel5.StylePriority.UseFont = False
        Me.XrLabel5.StylePriority.UseForeColor = False
        Me.XrLabel5.StylePriority.UseTextAlignment = False
        Me.XrLabel5.Text = "XrLabel5"
        Me.XrLabel5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        '
        'XrLabel2
        '
        Me.XrLabel2.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[EstadoFinal]")})
        Me.XrLabel2.Font = New System.Drawing.Font("Verdana", 7.0!, System.Drawing.FontStyle.Bold)
        Me.XrLabel2.ForeColor = System.Drawing.Color.DarkSlateGray
        Me.XrLabel2.LocationFloat = New DevExpress.Utils.PointFloat(347.9167!, 0!)
        Me.XrLabel2.Name = "XrLabel2"
        Me.XrLabel2.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrLabel2.SizeF = New System.Drawing.SizeF(93.95828!, 15.00002!)
        Me.XrLabel2.StylePriority.UseFont = False
        Me.XrLabel2.StylePriority.UseForeColor = False
        Me.XrLabel2.StylePriority.UseTextAlignment = False
        Me.XrLabel2.Text = "XrLabel2"
        Me.XrLabel2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        '
        'XrLabel4
        '
        Me.XrLabel4.ExpressionBindings.AddRange(New DevExpress.XtraReports.UI.ExpressionBinding() {New DevExpress.XtraReports.UI.ExpressionBinding("BeforePrint", "Text", "[NOMBRE_CHK]")})
        Me.XrLabel4.Font = New System.Drawing.Font("Verdana", 7.0!)
        Me.XrLabel4.LocationFloat = New DevExpress.Utils.PointFloat(0!, 0!)
        Me.XrLabel4.Name = "XrLabel4"
        Me.XrLabel4.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrLabel4.SizeF = New System.Drawing.SizeF(347.9167!, 12.99998!)
        Me.XrLabel4.StylePriority.UseFont = False
        Me.XrLabel4.StylePriority.UseTextAlignment = False
        Me.XrLabel4.Text = "XrLabel4"
        Me.XrLabel4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        '
        'DsReporteProtocolo2
        '
        Me.DsReporteProtocolo2.DataSetName = "dsReporteProtocolo"
        Me.DsReporteProtocolo2.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'rptProtocolo
        '
        Me.Bands.AddRange(New DevExpress.XtraReports.UI.Band() {Me.Detail, Me.TopMargin, Me.BottomMargin, Me.GroupHeader1, Me.DetailReport})
        Me.ComponentStorage.AddRange(New System.ComponentModel.IComponent() {Me.DsReporteProtocolo2})
        Me.DataAdapter = Me.MaestroProtocoloTableAdapter
        Me.DataMember = "SPU_DetalleProtocolo"
        Me.DataSource = Me.DsReporteProtocolo2
        Me.Margins = New System.Drawing.Printing.Margins(100, 100, 272, 142)
        Me.Version = "17.2"
        Me.Watermark.Image = CType(resources.GetObject("rptProtocolo.Watermark.Image"), System.Drawing.Image)
        Me.Watermark.ImageTransparency = 226
        CType(Me.XrTable2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.XrTable4, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.customerTable, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.XrTable3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DsReporteProtocolo2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me, System.ComponentModel.ISupportInitialize).EndInit()

    End Sub
    Friend WithEvents Detail As DevExpress.XtraReports.UI.DetailBand
    Friend WithEvents TopMargin As DevExpress.XtraReports.UI.TopMarginBand
    Friend WithEvents BottomMargin As DevExpress.XtraReports.UI.BottomMarginBand
    Friend WithEvents MaestroProtocoloTableAdapter As dsReporteProtocoloTableAdapters.SPU_MaestroProtocoloTableAdapter
    Friend WithEvents XrBarCode1 As DevExpress.XtraReports.UI.XRBarCode
    Friend WithEvents customerTable As DevExpress.XtraReports.UI.XRTable
    Friend WithEvents customerNameRow As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents billToLabel As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerContactNameRow As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents customerTableCell1 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerContactName As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerAddressRow As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents customerTableCell2 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerAddress As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerCityRow As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents customerTableCell3 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerCity As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerCountryRow As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents customerTableCell4 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents customerCountry As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents GroupHeader1 As DevExpress.XtraReports.UI.GroupHeaderBand
    Friend WithEvents SPU_DetalleProtocoloTableAdapter As dsReporteProtocoloTableAdapters.SPU_DetalleProtocoloTableAdapter
    Friend WithEvents customerName As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents SPU_GrupoTableAdapter As dsReporteProtocoloTableAdapters.SPU_GRUPOTableAdapter
    Friend WithEvents DetailReport As DevExpress.XtraReports.UI.DetailReportBand
    Friend WithEvents Detail1 As DevExpress.XtraReports.UI.DetailBand
    Friend WithEvents XrLabel4 As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents XrTable2 As DevExpress.XtraReports.UI.XRTable
    Friend WithEvents XrTableRow6 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents XrTableCell11 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTable3 As DevExpress.XtraReports.UI.XRTable
    Friend WithEvents XrTableRow7 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents XrTableCell8 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell10 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell12 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrLabel5 As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents XrLabel2 As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents XrTable4 As DevExpress.XtraReports.UI.XRTable
    Friend WithEvents XrTableRow8 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents XrTableCell18 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell19 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell20 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell15 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableRow10 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents XrTableCell21 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell22 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableRow11 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents XrTableCell23 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell24 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableRow12 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents XrTableCell25 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell26 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrLabel7 As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents XrLabel8 As DevExpress.XtraReports.UI.XRLabel

#End Region

End Class
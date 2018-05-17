<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="demoCheckProtocolo.aspx.vb" Inherits="Presentacion.demoCheckProtocolo" %>

<%@ Register assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableCallbackAnimation="True" EnableTheming="True" KeyFieldName="ID_REG_CHK" Theme="Moderno" Width="100%">
                <SettingsEditing Mode="Batch" UseFormLayout="False">
                    <BatchEditSettings StartEditAction="Click" />
                </SettingsEditing>
                <Settings ShowPreview="True" />
                <SettingsBehavior AllowFixedGroups="True" AutoExpandAllGroups="True" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="ID_REG_CHK" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ITEM" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="NOMBRE_GRP_CHK" GroupIndex="0" ShowInCustomizationForm="True" SortIndex="0" SortOrder="Ascending" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="NOMBRE_CHK" ShowInCustomizationForm="True" VisibleIndex="4" Width="20%">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CRITERIO_CONTROL" ShowInCustomizationForm="True" Visible="False" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ESPECIFICACION_CHK" ShowInCustomizationForm="True" VisibleIndex="6" Width="40%">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ID_ACC_REG" ShowInCustomizationForm="True" Visible="False" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="TIPO_DATO_ENT" ShowInCustomizationForm="True" Visible="False" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="DATO_ENT" ShowInCustomizationForm="True" Visible="False" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ID_GRP_CHK" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="9">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewBandColumn Caption="APROBADO - FALLOS - NA" ShowInCustomizationForm="True" VisibleIndex="11">
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="ESTADO_APROBACION" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0" Width="10%">
                                <DataItemTemplate>
                                    <dx:ASPxRadioButtonList ID="ASPxRadioButtonList1" runat="server" EnableTheming="True" RepeatDirection="Horizontal" TextAlign="Left" Theme="Default" Value='<%# Bind("ESTADO_APROBACION") %>' ValueType="System.Int16" Width="100%">
                                        <CheckedImage IconID="content_checkbox_16x16">
                                        </CheckedImage>
                                        <UncheckedImage IconID="toolboxitems_panel_16x16">
                                        </UncheckedImage>
                                        <Items>
                                            <dx:ListEditItem Text="  " Value="1" />
                                            <dx:ListEditItem Text="  " Value="-1" />
                                            <dx:ListEditItem Text="  " Value="-2" />
                                        </Items>
                                        <CaptionSettings RequiredMarkDisplayMode="Hidden" ShowColon="False" VerticalAlign="Middle" />
                                        <Border BorderStyle="None" />
                                    </dx:ASPxRadioButtonList>
                                </DataItemTemplate>
                                <EditItemTemplate>
                                    <dx:ASPxRadioButtonList ID="ASPxRadioButtonList1" runat="server" EnableTheming="True" RepeatDirection="Horizontal" Theme="Default" Value='<%# Bind("ESTADO_APROBACION") %>' ValueType="System.Int16" Width="100%" TextAlign="Left">
                                        <CheckedImage IconID="content_checkbox_16x16">
                                        </CheckedImage>
                                        <UncheckedImage IconID="toolboxitems_panel_16x16">
                                        </UncheckedImage>
                                        <Items>
                                            <dx:ListEditItem Text="  " Value="1" />
                                            <dx:ListEditItem Text="  " Value="-1" />
                                            <dx:ListEditItem Text="  " Value="-2" />
                                        </Items>
                                        <CaptionSettings RequiredMarkDisplayMode="Hidden" ShowColon="False" VerticalAlign="Middle" />
                                        <Border BorderStyle="None" />
                                    </dx:ASPxRadioButtonList>
                                </EditItemTemplate>
                            </dx:GridViewDataTextColumn>
                        </Columns>
                    </dx:GridViewBandColumn>
                    <dx:GridViewDataTextColumn FieldName="OBSERVACION_CHK" ShowInCustomizationForm="True" VisibleIndex="12" Width="30%">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnxCalidad %>" SelectCommand="SP_QA_ACC_REG_LISTA_CHEQUEO" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter DefaultValue="133" Name="ID_ACC_REG" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

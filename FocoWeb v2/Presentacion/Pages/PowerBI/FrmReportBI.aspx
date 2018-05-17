<%@ Page Async="true"  Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="FrmReportBI.aspx.vb" Inherits="Presentacion.FrmReportBI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://npmcdn.com/es6-promise@3.2.1"></script>
    <script type="text/javascript" src="/scripts/powerbi.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <style>
        #reportContainer {
            width: 100%;
        }
    </style>
    <script>
        function FullScreen() {
            var element = $('#reportContainer')[0];
            var report = powerbi.get(element);

            report.fullscreen();
            //report.reload()
        }

        function Print() {
            var element = $('#reportContainer')[0];
            var report = powerbi.get(element);

            report.print()
            //report.refresh()
        }
    </script>
    <table style="width:100%">
        <tr>
            <td style="width:90%">
                <div style="text-align: center">
                    <h2 runat="server" id="nomReport"></h2>
                </div>
            </td>
            <td style="width:10%; text-align:right">
                <asp:ImageButton runat="server" Height="32px" Width="32px"
                            ImageUrl="../Imagenes/control-icons/view_fullscreen.png"  OnClientClick ="FullScreen(); return false"
                            ToolTip="Ver en pantalla completa" Style="vertical-align: middle"></asp:ImageButton>
                <asp:ImageButton runat="server" Height="32px" Width="32px"
                            ImageUrl="../Imagenes/control-icons/print.png"  OnClientClick ="Print(); return false"
                            ToolTip="Imprimir" Style="vertical-align: middle"></asp:ImageButton>
                <asp:ImageButton runat="server" ID="btnVolver" Height="32px" Width="32px"
                            ImageUrl="../Imagenes/control-icons/Backward_32x32.png"
                            ToolTip="Volver" Style="vertical-align: middle"></asp:ImageButton>
            </td>
        </tr>
    </table>
    <div>
        <div id="RLSdiv" hidden="hidden">
            <input runat="server" id="accesToken" type="text" value="" />
            <input runat="server" id="embedUrl" type="text" value="" />
            <input runat="server" id="embedReportId" type="text" value="" />
            <input runat="server" id="tabFil1" type="text" value="" />
            <input runat="server" id="CampoFil1" type="text" value="" />
            <input runat="server" id="valFil1" type="text" value="" />
            <input runat="server" id="tabFil2" type="text" value="" />
            <input runat="server" id="CampoFil2" type="text" value="" />
            <input runat="server" id="valFil2" type="text" value="" />
            <br />
            <br />
            <input type="submit" value="Reload" />
            <br />
            <br />
        </div>
    </div>
<div id="reportContainer" style="height:90vh;"></div>
    <script type="text/javascript">
        function addDays(date, days) {
            var result = new Date(date);
            result.setDate(result.getDate() + days);
            return result;
        }
    </script>
    <script type="text/javascript">
        // Read embed application token from Model
        var accessToken = $('#body_accesToken').val();

        // Read embed URL from Model
        var embedUrl = $('#body_embedUrl').val();

        // Read report Id from Model
        var embedReportId = $('#body_embedReportId').val();

        var tabFil1 = $('#body_tabFil1').val();
        var CampoFil1 = $('#body_CampoFil1').val();
        var valFil1 = $('#body_valFil1').val();

        var tabFil2 = $('#body_tabFil2').val();
        var CampoFil2 = $('#body_CampoFil2').val();
        var valFil2 = $('#body_valFil2').val();
        
        // Get models. models contains enums that can be used.
        var models = window['powerbi-client'].models;
        
        const filter = {
            $schema: "http://powerbi.com/product/schema#basic",
            target: {
                table: tabFil1,
                column: CampoFil1
            },
            operator: "In",
            values: [Number(valFil1)]
        };

        const filter2 = {
            $schema: "http://powerbi.com/product/schema#basic",
            target: {
                table: tabFil2,
                column: CampoFil2
            },
            operator: "In",
            values: [valFil2]
        };

        // Embed configuration used to describe the what and how to embed.
        // This object is used when calling powerbi.embed.
        // This also includes settings and options such as filters.
        // You can find more information at https://github.com/Microsoft/PowerBI-JavaScript/wiki/Embed-Configuration-Details.
        var config = {
            type: 'report',
            tokenType: models.TokenType.Embed,
            accessToken: accessToken,
            embedUrl: embedUrl,
            id: embedReportId,
            permissions: models.Permissions.All,
            //filters: [filter,filter2],
            settings: {
                filterPaneEnabled: false,
                navContentPaneEnabled: true
            }
        };

        // Get a reference to the embedded report HTML element
        var reportContainer = $('#reportContainer')[0];

        // Embed the report and display it within the div container.
        var report = powerbi.embed(reportContainer, config);

        report.removeFilters();

        if (tabFil1 != '' && tabFil2 != '')
        {
            report.on('loaded', event => {
                report.getFilters()
                  .then(filters => {
                      filters.push(filter);
                      filters.push(filter2);
                      return report.setFilters(filters);
                  });
            });
        } else if (tabFil1 != '')
        {
            report.on('loaded', event => {
                report.getFilters()
                  .then(filters => {
                      filters.push(filter);
                      return report.setFilters(filters);
                  });
            });
        } else if (tabFil2 != '') {
            report.on('loaded', event => {
                report.getFilters()
                  .then(filters => {
                      filters.push(filter2);
                      return report.setFilters(filters);
                  });
            });
        }
        
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Confirmador" runat="server">
</asp:Content>

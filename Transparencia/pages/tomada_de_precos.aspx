﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tomada_de_precos.aspx.cs" Inherits="Transparencia.pages.TomadaDePrecos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
    <style type="text/css">
        .e-grid .e-headercelldiv {
            font-weight: bold;
            font-size: 12px;
            display: block;
            border: 0 none;
            height: 29px;
            line-height: 29px;
            margin: -10px;
            padding: 0 .7em;
            text-align: left;
            white-space: nowrap;
        }

        .e-grid .e-rowcell {
            border-width: 1px 0 0 1px;
            padding: 10px 0px 10px 3px;
            line-height: 14px;
            white-space: nowrap;
            width: auto;
            vertical-align: middle;
        }

        .td-grid {
            width: 144px;
        }

        td.td-grid {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Tomada de Preços</h2>
    <br />

    <div style="position: relative;">

        <ej:Grid ID="gvTomadaPrecos" runat="server"
            AllowSorting="True"
            AllowPaging="True"
            AllowSelection="False"
            EnableRowHover="False"
            ClientIDMode="Static"
            AllowResizeToFit="True">

            <Columns>
                <ej:Column Field="menu" HeaderText="Menu" Visible="False">
                </ej:Column>
                <ej:Column Field="anoProcesso" HeaderText="Ano" Width="8%" AllowFiltering="True">
                </ej:Column>
                <ej:Column Field="descricaoProcesso" HeaderText="Descrição">
                </ej:Column>
                <ej:Column Field="descricaoArquivoDownload" HeaderText="Observações">
                </ej:Column>
                <ej:Column Field="situacaoProcesso" HeaderText="Situação">
                </ej:Column>
                <ej:Column Field="dataProcesso" HeaderText="Data">
                </ej:Column>
                <ej:Column Field="codigoProcesso" HeaderText="Código Processo" Visible="False">
                </ej:Column>
                <ej:Column Field="caminhoProcesso" HeaderText="Caminho Arquivo Download" Visible="False">
                </ej:Column>
                <ej:Column Field="descricaoArquivoDownload" HeaderText="Descrição Arquivo Download" Visible="False">
                </ej:Column>
                <ej:Column HeaderText="Detalhes" IsUnbound="True" TextAlign="Left" Width="8%" Field="" AllowFiltering="False">
                    <Command>
                        <ej:Commands Type="detail">
                            <ButtonOptions Text="Detalhes" Width="80%" Height="2%" Click="onClick"></ButtonOptions>
                        </ej:Commands>
                    </Command>
                </ej:Column>
            </Columns>

            <PageSettings PageSize="10"></PageSettings>
        </ej:Grid>

        <ej:Dialog ID="commanddialog" ClientIDMode="Static" runat="server" Width="800" Title="Detalhes" ShowOnInit="false"
            EnableResize="False" Target="#gvTomadaPrecos" ShowFooter="True">
        </ej:Dialog>

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <script id="templateData" type="text/x-jsrender">
        <table>
            <tr>
                <td class="td-grid">Ano Processo:</td>
                <td>{{:anoProcesso}} </td>
            </tr>
            <tr>
                <td class="td-grid">Descrição do Processo:</td>
                <td>{{:descricaoProcesso}} </td>
            </tr>
            <tr>
                <td class="td-grid">Observações Processo:</td>
                <td>{{:descricaoArquivoDownload}} </td>
            </tr>
            <tr>
                <td class="td-grid">Situação Processo:</td>
                <td>{{:situacaoProcesso}} </td>
            </tr>
            <tr>
                <td class="td-grid">Data Processo:</td>
                <td>{{:dataProcesso}} </td>
            </tr>
            <tr>
                <td class="td-grid">Nome do Arquivo:</td>
                <td>{{:caminhoProcesso}} </td>
            </tr>

            <tr>
                <td class="td-grid"></td>
                <td>&#013;</td>
            </tr>
            <tr>
                <td class="td-grid"></td>
                <td>&#013;</td>
            </tr>
            <tr>
                <td class="td-grid">Visualizar arquivo:</td>
                <td>
                    <a href="http://sistemas.defensoria.ms.gov.br/ajfile/arquivos/CPL/{{:codigoProcesso}}/{{:caminhoProcesso}}" target="_blank">Clique aqui.</a>
                </td>
            </tr>
        </table>
    </script>

    <script type="text/javascript">
        function onClick(args) {
            var grid = $("#gvTomadaPrecos").ejGrid("instance");
            var index = this.element.closest("tr").index();
            var record = grid.getCurrentViewData()[index];
            record["BirthDate"] = ej.format(record["BirthDate"], "MM/dd/yyyy");
            $("#commanddialog").html($("#templateData").render(record))
                .ejDialog("option", { position: { X: this.element.position().left - 755, Y: this.element.position().top } })
                .ejDialog("open");
            if (navigator.userAgent.indexOf("MSIE 8.0") != -1)
                $("#commanddialog").find("img").width(150);
        }
    </script>
</asp:Content>
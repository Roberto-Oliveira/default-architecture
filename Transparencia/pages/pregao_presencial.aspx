﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pregao_presencial.aspx.cs" Inherits="Transparencia.pages.pregao_presencial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Pregão Presencial - Aquisição/Contratação</h2>

    <div class="table-responsive" style="position: relative;">

        <ej:Grid ID="gvPregaoPresencial" runat="server"
            AllowFiltering="True"
            AllowSorting="True"
            AllowPaging="True"
            AllowSelection="False"
            EnableRowHover="False"
            ClientIDMode="Static"
            AllowScrolling="True"
            AllowGrouping="True"
            Locale="pt-BR">

            <GroupSettings EnableDropAreaAutoSizing="False" ShowToggleButton="True" />

            <PageSettings PageSize="7" />

            <Columns>
                <ej:Column Field="menu" HeaderText="Menu" Visible="False" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="codigoProcesso" HeaderText="Código Processo" AllowGrouping="True">
                </ej:Column>
                <ej:Column Field="anoProcesso" HeaderText="Ano" Width="5%" AllowGrouping="True">
                </ej:Column>
                <ej:Column Field="descricaoProcesso" HeaderText="Descrição" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="descricaoArquivoDownload" HeaderText="Observações" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="situacaoProcesso" HeaderText="Situação" AllowGrouping="True">
                </ej:Column>
                <ej:Column Field="dataProcesso" HeaderText="Data" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>

                <ej:Column Field="caminhoProcesso" HeaderText="Caminho Arquivo Download" Visible="False" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="descricaoArquivoDownload" HeaderText="Descrição Arquivo Download" Visible="False" AllowGrouping="False">
                </ej:Column>
                <ej:Column HeaderText="Detalhes" IsUnbound="True" TextAlign="Left" Width="8%" Field="" AllowFiltering="False" AllowGrouping="False">
                    <Command>
                        <ej:Commands Type="detail">
                            <ButtonOptions Text="Detalhes" Width="80%" Height="2%" Click="onClick"></ButtonOptions>
                        </ej:Commands>
                    </Command>
                </ej:Column>
            </Columns>

        </ej:Grid>

        <ej:Dialog ID="commanddialog" ClientIDMode="Static" runat="server" Width="800" Title="Detalhes" ShowOnInit="false"
            EnableResize="False" Target="#gvPregaoPresencial" ShowFooter="True">
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
                <td>{{:observacoesProcesso}} </td>
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
            var grid = $("#gvPregaoPresencial").ejGrid("instance");
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

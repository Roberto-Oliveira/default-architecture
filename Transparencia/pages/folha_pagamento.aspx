<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="folha_pagamento.aspx.cs" Inherits="Transparencia.pages.FolhaPagamento" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Folha de Pagamento</h2>

    <div id="ControlRegion">
        <div class="frame">
            <div>
                <ej:Grid ID="gvFolhaServidores" runat="server"
                    AllowSorting="True"
                    AllowResizeToFit="True"
                    AllowPaging="True"
                    OnServerExcelExporting="gvFolhaServidores_OnServerExcelExporting"
                    ShowColumnChooser="True"
                    AllowFiltering="True"
                    AllowSelection="False"
                    EnableRowHover="False"
                    ClientIDMode="Static"
                    AllowGrouping="True"
                    Locale="pt-BR">

                    <GroupSettings EnableDropAreaAutoSizing="False" ShowToggleButton="True" ShowUngroupButton="True"></GroupSettings>

                    <PageSettings PageSize="6"></PageSettings>

                    <ToolbarSettings ShowToolbar="True" ToolbarItems="excelExport"></ToolbarSettings>

                </ej:Grid>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">

    <script type="text/javascript">
        ej.Grid.Locale["pt-BR"] = {
            GroupDropArea: "Arraste o cabeçalho das colunas para a área azul para agrupá-las",
            Columns: "Colunas",
            Cancel: "Cancelar",
            Done: "Filtrar"
        };
        if (ej.Pager) ej.Pager.Locale["pt-BR"] = {
            pagerInfo: "{0} de {1} páginas ({2} itens)",
            firstPageTooltip: "Ir para a primeira página",
            lastPageTooltip: "Ir para a última página",
            nextPageTooltip: "Ir para a próxima página",
            previousPageTooltip: "Ir para a página anterior",
            nextPagerTooltip: "Ir para a próxima página",
            previousPagerTooltip: "Ir para página anterior"
        };
    </script>

</asp:Content>

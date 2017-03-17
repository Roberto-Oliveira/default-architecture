<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cargo_efetivo.aspx.cs" Inherits="Transparencia.pages.cargo_efetivo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Cargos Efetivos</h2>

    <ej:Grid ID="gvCargosEfetivos" runat="server"
        AllowFiltering="True"
        AllowSorting="True"
        AllowPaging="True"
        AllowSelection="False"
        EnableRowHover="False"
        ClientIDMode="Static"
        AllowResizeToFit="True"
        AllowGrouping="True"
        Locale="pt-BR">

        <GroupSettings EnableDropAreaAutoSizing="False" ShowToggleButton="True" ShowUngroupButton="True"></GroupSettings>

        <Columns>
            <ej:Column Field="carreira" HeaderText="Carreira" AllowGrouping="True" AllowFiltering="True">
            </ej:Column>
            <ej:Column Field="quantitativo" HeaderText="Quantitativo" AllowGrouping="False" AllowFiltering="False">
            </ej:Column>
            <ej:Column Field="classe" HeaderText="Classe"  AllowGrouping="True" AllowFiltering="True">
            </ej:Column>
        </Columns>

        <PageSettings PageSize="7"></PageSettings>

    </ej:Grid>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">

    <script type="text/javascript">
        ej.Grid.Locale["pt-BR"] = {
            GroupDropArea: "Arraste o cabeçalho das colunas para a área azul para agrupá-las",
            Columns: "Colunas"
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

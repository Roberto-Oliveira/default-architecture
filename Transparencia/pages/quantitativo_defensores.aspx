<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="quantitativo_defensores.aspx.cs" Inherits="Transparencia.pages.QuantitativoDefensores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Cargos de Defensor</h2>
    <div class="table-responsive">

        <ej:Grid ID="gvQuantitativoServidores" runat="server"
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
                <ej:Column Field="carreira" HeaderText="Carreira" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
                <ej:Column Field="cargo" HeaderText="Cargo" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
                <ej:Column Field="classe" HeaderText="Classe" AllowGrouping="False" AllowFiltering="True">
                </ej:Column>
                <ej:Column Field="simbolo" HeaderText="Símbolo" AllowGrouping="True" AllowFiltering="True">
                </ej:Column>
                <ej:Column Field="vagasPreenchidas" HeaderText="Vagas Preenchidas" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="previstas" HeaderText="Vagas Previstas" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
                <ej:Column Field="nomeBeneficiario" HeaderText="Nome Beneficiário" AllowGrouping="False" AllowFiltering="True">
                </ej:Column>
                <ej:Column Field="matricula" HeaderText="Matrícula" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
            </Columns>

            <PageSettings PageSize="7"></PageSettings>

        </ej:Grid>

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

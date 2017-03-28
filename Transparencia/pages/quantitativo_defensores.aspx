<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="quantitativo_defensores.aspx.cs" Inherits="Transparencia.pages.QuantitativoDefensores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Cargos de Defensor</h2>

    <div class="table-responsive" style="position: relative;">

        <ej:Grid ID="gvQuantitativoServidores" runat="server"
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

            <PageSettings PageSize="7"/>

            <Columns>
                <ej:Column Width="250" Field="carreira" HeaderText="Carreira" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
                <ej:Column Width="150" Field="cargo" HeaderText="Cargo" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
                <ej:Column Width="310" Field="classe" HeaderText="Classe" AllowGrouping="False" AllowFiltering="True">
                </ej:Column>
                <ej:Column Width="130" Field="simbolo" HeaderText="Símbolo" AllowGrouping="True" AllowFiltering="True">
                </ej:Column>
                <ej:Column Width="155" Field="vagasPreenchidas" HeaderText="Vagas Preenchidas" AllowGrouping="False">
                </ej:Column>
                <ej:Column Width="140" Field="previstas" HeaderText="Vagas Previstas" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
                <ej:Column Width="400" Field="nomeBeneficiario" HeaderText="Nome Beneficiário" AllowGrouping="False" AllowFiltering="True">
                </ej:Column>
                <ej:Column Width="100" Field="matricula" HeaderText="Matrícula" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
            </Columns>

        </ej:Grid>

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

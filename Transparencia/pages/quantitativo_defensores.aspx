<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="quantitativo_defensores.aspx.cs" Inherits="Transparencia.pages.QuantitativoDefensores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Cargos de Defensor</h2>
    
    <ej:Grid ID="gvQuantitativoServidores" runat="server"
        AllowGrouping="True"
        AllowPaging="True"
        ShowSummary="True"
        AllowSorting="True" 
        AllowResizeToFit="True">

        <Columns>
            <ej:Column Field="carreira" HeaderText="Carreira">
            </ej:Column>
            <ej:Column Field="cargo" HeaderText="Cargo" AllowGrouping="True">
            </ej:Column>
            <ej:Column Field="classe" HeaderText="Classe">
            </ej:Column>
            <ej:Column Field="simbolo" HeaderText="Símbolo" AllowGrouping="True">
            </ej:Column>
            <ej:Column Field="vagasPreenchidas" HeaderText="Vagas Preenchidas">
            </ej:Column>
            <ej:Column Field="previstas" HeaderText="Vagas Previstas">
            </ej:Column>
            <ej:Column Field="nomeBeneficiario" HeaderText="Nome Beneficiário">
            </ej:Column>
            <ej:Column Field="matricula" HeaderText="Matrícula">
            </ej:Column>
        </Columns>

        <PageSettings PageSize="10"></PageSettings>

    </ej:Grid>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

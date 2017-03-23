<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="subsidio.aspx.cs" Inherits="Transparencia.pages.Subsidio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Subsidio</h2>

    <div class="table-responsive">

        <ej:Grid ID="gvSubsidio" runat="server"
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
                <ej:Column Field="id" HeaderText="Id" Visible="False">
                </ej:Column>
                <ej:Column Field="descricaoClasse" HeaderText="Classe" AllowGrouping="True" AllowFiltering="True">
                </ej:Column>
                <ej:Column Field="tipoServidor" HeaderText="Tipo Servidor" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
                <ej:Column Field="valorReajuste" HeaderText="Valor Reajuste" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
                <ej:Column Field="anoCompetencia" HeaderText="Ano Competência" AllowGrouping="True" AllowFiltering="True">
                </ej:Column>
                <ej:Column Field="vagasPrevistas" HeaderText="Vagas Previstas" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
            </Columns>

        </ej:Grid>

    </div>



</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

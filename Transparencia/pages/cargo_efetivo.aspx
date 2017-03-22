<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cargo_efetivo.aspx.cs" Inherits="Transparencia.pages.cargo_efetivo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Cargos Efetivos</h2>

    <div class="table-responsive">

        <ej:Grid ID="gvCargosEfetivos" runat="server"
            AllowFiltering="True"
            AllowSorting="True"
            AllowPaging="True"
            AllowSelection="False"
            EnableRowHover="False"
            ClientIDMode="Static"
            AllowScrolling="True"
            AllowGrouping="True"
            Locale="pt-BR"
            >

            <GroupSettings EnableDropAreaAutoSizing="False" ShowToggleButton="True" ShowUngroupButton="True"></GroupSettings>

            <Columns>
                <ej:Column Field="carreira" HeaderText="Carreira" AllowGrouping="True" AllowFiltering="True">
                </ej:Column>
                <ej:Column Field="quantitativo" HeaderText="Quantitativo" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
                <ej:Column Field="classe" HeaderText="Classe" AllowGrouping="True" AllowFiltering="True">
                </ej:Column>
            </Columns>

            <PageSettings PageSize="7"></PageSettings>

        </ej:Grid>

    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

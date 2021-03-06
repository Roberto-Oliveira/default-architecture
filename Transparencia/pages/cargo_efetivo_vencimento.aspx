﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cargo_efetivo_vencimento.aspx.cs" Inherits="Transparencia.pages.CargoEfetivoVencimento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Cargos Efetivos - Vencimentos</h2>

    <div class="table-responsive">

        <ej:Grid ID="gvCargoEfetivoVencimento" runat="server"
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
                <ej:Column Field="anoCompetencia" HeaderText="Ano Competência" AllowGrouping="True">
                </ej:Column>
                <ej:Column Field="cargo" HeaderText="Cargo" AllowGrouping="True">
                </ej:Column>
                <ej:Column Field="classe" HeaderText="Classe" AllowGrouping="True">
                </ej:Column>
                <ej:Column Field="vencimentoBase" HeaderText="Vencimento Base" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
            </Columns>

        </ej:Grid>

    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

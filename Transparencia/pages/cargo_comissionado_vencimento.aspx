﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cargo_comissionado_vencimento.aspx.cs" Inherits="Transparencia.pages.CargoComissionadoVencimento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Cargos Comissionados - Vencimentos</h2>

    <div class="table-responsive">

        <ej:Grid ID="gvCargosComissionadosVencimentos" runat="server"
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
                <ej:Column Width="100" Field="anoCompetencia" HeaderText="Ano Competência" AllowGrouping="True" AllowFiltering="True">
                </ej:Column>
                <ej:Column Width="100" Field="descricaoClasse" HeaderText="Símbolo" AllowGrouping="True" AllowFiltering="True">
                </ej:Column>
                <ej:Column Field="tipoServidor" HeaderText="Tipo Servidor" Visible="False" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
                <ej:Column Width="150" Field="valorReajuste" HeaderText="Vencimento Básico" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
                <ej:Column Width="150"  Field="percentual" HeaderText="Percentual" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
                <ej:Column Width="150"  Field="gratificacao" HeaderText="Gratificação" Tooltip="Gratificação pelo exercício do Cargo em Comissão" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
            </Columns>

        </ej:Grid>

    </div>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

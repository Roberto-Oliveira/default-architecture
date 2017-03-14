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
                    AllowFiltering="True">


                    <PageSettings PageSize="7"></PageSettings>
                    <ToolbarSettings ShowToolbar="True" ToolbarItems="excelExport"></ToolbarSettings>

                </ej:Grid>
            </div>
        </div>
    </div>
</asp:Content>

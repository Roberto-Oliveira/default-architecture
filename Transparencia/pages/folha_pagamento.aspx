<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="folha_pagamento.aspx.cs" Inherits="Transparencia.pages.FolhaPagamento" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ControlContent" runat="server">
    <style type="text/css">
        .e-grid .e-headercelldiv {
            font-weight: bold;
            font-size: 12px;
            display: block;
            border: 0 none;
            height: 29px;
            line-height: 29px;
            margin: -10px;
            padding: 0 .7em;
            text-align: left;
            white-space: nowrap;
        }

        .e-grid .e-rowcell {
            border-width: 1px 0 0 1px;
            padding: 10px 0px 10px 3px;
            line-height: 14px;
            white-space: nowrap;
            width: auto;
            vertical-align: middle;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Folha de Pagamento</h2>
    <br />
    <div id="ControlRegion">
        <div class="frame">
            <div>
                <ej:Grid ID="gvFolhaServidores" runat="server"
                    AllowResizeToFit="True"
                    AllowPaging="True"
                    OnServerExcelExporting="gvFolhaServidores_OnServerExcelExporting"
                    ShowColumnChooser="True" 
                    AllowFiltering="True">


                    <PageSettings PageSize="10"></PageSettings>
                    <ToolbarSettings ShowToolbar="True" ToolbarItems="excelExport"></ToolbarSettings>

                </ej:Grid>
            </div>
        </div>
    </div>
</asp:Content>

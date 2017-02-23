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
                    ShowColumnChooser="True">


                    <PageSettings PageCount="10"></PageSettings>
                    <ToolbarSettings ShowToolbar="True" ToolbarItems="excelExport"></ToolbarSettings>

                </ej:Grid>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cargo_comissionado_vencimento.aspx.cs" Inherits="Transparencia.pages.CargoComissionadoVencimento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
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
            padding: 10px 0 10px 3px;
            line-height: 14px;
            white-space: nowrap;
            width: auto;
            vertical-align: middle;
        }

        .td-grid {
            width: 144px;
        }

        td.td-grid {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
       
    <h2>Cargos Comissionados - Vencimentos</h2>
    <br />
    
    <ej:Grid ID="gvCargosComissionadosVencimentos" runat="server"
        AllowGrouping="True"
        AllowPaging="True"
        ShowSummary="True"
        AllowSorting="True" 
        AllowResizeToFit="True"
        >
        
        <Columns>
            <ej:Column Field="anoCompetencia" HeaderText="Ano Competência">
            </ej:Column>
            <ej:Column Field="descricaoClasse" HeaderText="Símbolo">
            </ej:Column>
            <ej:Column Field="tipoServidor" HeaderText="Tipo Servidor" Visible="False">
            </ej:Column>
            <ej:Column Field="valorReajuste" HeaderText="Vencimento Básico">
            </ej:Column>
            <ej:Column Field="percentual" HeaderText="Percentual">
            </ej:Column>
            <ej:Column Field="gratificacao" HeaderText="Gratificação" Tooltip="Gratificação pelo exercício do Cargo em Comissão">
            </ej:Column>
        </Columns>
        
        <PageSettings PageSize="10"></PageSettings>

        <GroupSettings GroupedColumns="anoCompetencia"></GroupSettings>

        <SummaryRows>
            <ej:SummaryRow ShowTotalSummary="False">
                <SummaryColumn>
                    <ej:SummaryColumn SummaryType="Count"/>
                </SummaryColumn>
            </ej:SummaryRow>
        </SummaryRows>

    </ej:Grid>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

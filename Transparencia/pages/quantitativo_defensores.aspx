<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="quantitativo_defensores.aspx.cs" Inherits="Transparencia.pages.QuantitativoDefensores" %>

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
            padding: 10px 0px 10px 3px;
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

    <h2>Cargos de Defensor</h2>
    <br />

    <ej:Grid ID="gvQuantitativoServidores" runat="server"
        AllowGrouping="True"
        AllowPaging="True"
        ShowSummary="True"
        AllowSorting="True" AllowResizeToFit="True">

        <Columns>
            <ej:Column Field="carreira" HeaderText="Carreira">
            </ej:Column>
            <ej:Column Field="cargo" HeaderText="Cargo">
            </ej:Column>
            <ej:Column Field="classe" HeaderText="Classe">
            </ej:Column>
            <ej:Column Field="simbolo" HeaderText="Símbolo">
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

        <GroupSettings GroupedColumns="classe"></GroupSettings>

        <SummaryRows>
            <ej:SummaryRow ShowTotalSummary="False">
                <SummaryColumn>
                    <ej:SummaryColumn SummaryType="Sum" DisplayColumn="vagasPreenchidas" DataMember="vagasPreenchidas" />
                </SummaryColumn>
            </ej:SummaryRow>
        </SummaryRows>

        
    </ej:Grid>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

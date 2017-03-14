<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cargo_efetivo_vencimento.aspx.cs" Inherits="Transparencia.pages.CargoEfetivoVencimento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
    <h2>Cargos Efetivos - Vencimentos</h2>
    
    <ej:Grid ID="gvCargoEfetivoVencimento" runat="server"
        AllowGrouping="True"
        AllowPaging="True"
        ShowSummary="True"
        AllowSorting="True" 
        AllowResizeToFit="True">
        
        <Columns>
            <ej:Column Field="anoCompetencia" HeaderText="Ano Competência">
            </ej:Column>
            <ej:Column Field="cargo" HeaderText="Cargo">
            </ej:Column>
            <ej:Column Field="classe" HeaderText="Classe">
            </ej:Column>
            <ej:Column Field="vencimentoBase" HeaderText="Vencimento Base">
            </ej:Column>
        </Columns>
        
        <PageSettings PageSize="7"></PageSettings>

        <GroupSettings GroupedColumns="cargo"></GroupSettings>

        <SummaryRows>
            <ej:SummaryRow ShowTotalSummary="False">
                <SummaryColumn>
                    <ej:SummaryColumn SummaryType="Sum" />
                </SummaryColumn>
            </ej:SummaryRow>
        </SummaryRows>
        
    </ej:Grid>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

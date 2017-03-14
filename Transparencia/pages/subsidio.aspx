<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="subsidio.aspx.cs" Inherits="Transparencia.pages.Subsidio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2>Subsidio</h2>
    
    <ej:Grid ID="gvSubsidio" runat="server"
        AllowGrouping="True"
        AllowPaging="True"
        ShowSummary="True"
        AllowSorting="True" 
        AllowResizeToFit="True">
        
        <Columns>
            <ej:Column Field="id" HeaderText="Id" Visible="False">
            </ej:Column>
            <ej:Column Field="descricaoClasse" HeaderText="Classe">
            </ej:Column>
            <ej:Column Field="tipoServidor" HeaderText="Tipo Servidor">
            </ej:Column>
            <ej:Column Field="valorReajuste" HeaderText="Valor Reajuste">
            </ej:Column>
            <ej:Column Field="anoCompetencia" HeaderText="Ano Competência">
            </ej:Column>
            <ej:Column Field="vagasPrevistas" HeaderText="Vagas Previstas">
            </ej:Column>
        </Columns>
        
        <PageSettings PageSize="7"></PageSettings>

        <GroupSettings GroupedColumns="anoCompetencia"></GroupSettings>

        <SummaryRows>
            <ej:SummaryRow ShowTotalSummary="False">
                <SummaryColumn>
                    <ej:SummaryColumn DisplayColumn="quantitativo" DataMember="quantitativo" />
                </SummaryColumn>
            </ej:SummaryRow>
        </SummaryRows>
        
    </ej:Grid>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

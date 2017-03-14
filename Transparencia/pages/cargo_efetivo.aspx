<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cargo_efetivo.aspx.cs" Inherits="Transparencia.pages.cargo_efetivo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Cargos Efetivos</h2>
   
    <ej:Grid ID="gvCargosEfetivos" runat="server"
        AllowGrouping="True"
        AllowPaging="True"
        ShowSummary="True"
        AllowSorting="True" 
        AllowResizeToFit="True">


        <Columns>
            <ej:Column Field="carreira" HeaderText="Carreira">
            </ej:Column>
            <ej:Column Field="quantitativo" HeaderText="Quantitativo">
            </ej:Column>
            <ej:Column Field="classe" HeaderText="Classe">
            </ej:Column>
        </Columns>
        
        <PageSettings PageSize="7"></PageSettings>

        <GroupSettings GroupedColumns="carreira"></GroupSettings>

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

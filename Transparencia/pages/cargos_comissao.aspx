<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cargos_comissao.aspx.cs" Inherits="Transparencia.pages.CargosComissao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Cargos em Comissão</h2>

    <div class="table-responsive">

        <ej:Grid ID="gvCargoComissao" runat="server"
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
                <ej:Column Field="grupo" HeaderText="Grupo" AllowGrouping="True" AllowFiltering="True">
                </ej:Column>
                <ej:Column Field="idGrupo" HeaderText="Id Grupo" Visible="False" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="ordem" HeaderText="Ordem" Visible="False" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="simbolo" HeaderText="Símbolo" AllowGrouping="True" AllowFiltering="True">
                </ej:Column>
                <ej:Column Field="cargo" HeaderText="Cargo" AllowGrouping="True" AllowFiltering="True">
                </ej:Column>
                <ej:Column Field="vagasPrevistas" HeaderText="Vagas Previstas" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
                <ej:Column Field="vagasPreenchidas" HeaderText="Vagas Preenchidas" Visible="False" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="idSimbolo" HeaderText="Id Símbolo" Visible="False" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="idCargo" HeaderText="Id Cargo" Visible="False" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="dadosFuncionais" HeaderText="Dados Funcionais" Visible="False" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="matricula" HeaderText="Matrícula" Visible="False" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="idBeneficiario" HeaderText="Id Beneficiário" Visible="False" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="nomeBeneficiario" HeaderText="Nome Beneficiário" Visible="False" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="dataAdmissao" HeaderText="Data Admissão" Visible="False" AllowGrouping="False">
                </ej:Column>
                <ej:Column Field="dataExoneracao" HeaderText="Data Exoneração" Visible="False" AllowGrouping="False">
                </ej:Column>
            </Columns>
            
        </ej:Grid>

    </div>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

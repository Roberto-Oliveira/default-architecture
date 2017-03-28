<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="folha_pagamento.aspx.cs" Inherits="Transparencia.pages.FolhaPagamento" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Folha de Pagamento</h2>

    <div id="ControlRegion">

        <div class="table-responsive">

            <ej:Grid ID="gvFolhaServidores" runat="server"
                AllowSorting="True"
                AllowPaging="True"
                AllowScrolling="True"
                OnServerExcelExporting="gvFolhaServidores_OnServerExcelExporting"
                ShowColumnChooser="True"
                AllowFiltering="True"
                AllowSelection="True"
                EnableRowHover="True"
                AllowGrouping="True"
                Locale="pt-BR"
                AllowSearching="True">
                
                <GroupSettings EnableDropAreaAutoSizing="False" ShowToggleButton="True" />

                <ToolbarSettings ShowToolbar="True" ToolbarItems="excelExport,search" />

                <PageSettings PageSize="7" />

                <Columns>
                    <ej:Column Width="190" Field="mesCompetencia" HeaderText="Mês Competência" AllowGrouping="True" AllowFiltering="True">
                    </ej:Column>
                    <ej:Column Width="190" Field="anoCompetencia" HeaderText="Ano Competência" AllowGrouping="True" AllowFiltering="True">
                    </ej:Column>
                    <ej:Column Width="120" Field="matricula" HeaderText="Matrícula" AllowGrouping="False" AllowFiltering="False">
                    </ej:Column>
                    <ej:Column Width="450" Field="nomeBeneficiario" HeaderText="Nome Beneficiário" AllowGrouping="False">
                    </ej:Column>
                    <ej:Column Width="400" Field="cargo" HeaderText="Cargo" AllowGrouping="True" AllowFiltering="True">
                    </ej:Column>
                    <ej:Column Width="400" Field="classe" HeaderText="Classe" AllowGrouping="True" AllowFiltering="True">
                    </ej:Column>
                    <ej:Column Width="400" Field="cargoComissao" HeaderText="Cargo Comissão" AllowGrouping="True" AllowFiltering="True">
                    </ej:Column>
                    <ej:Column Width="130" Field="vencimento" HeaderText="Vencimento" AllowGrouping="False" AllowFiltering="False" Format="{0:c2}">
                    </ej:Column>
                    <ej:Column Width="130" Field="subsidio" HeaderText="Subsidio" AllowGrouping="False" AllowFiltering="False" Format="{0:c2}">
                    </ej:Column>
                    <ej:Column Width="150" Field="vantagemsPessoais" HeaderText="Vantagens Pessoais" AllowGrouping="False" AllowFiltering="False" Format="{0:c2}">
                    </ej:Column>
                    <ej:Column Width="150" Field="vantagensCargo" HeaderText="Vantagens Cargo" AllowGrouping="False" AllowFiltering="False" Format="{0:c2}">
                    </ej:Column>
                    <ej:Column Width="130" Field="ferias" HeaderText="Férias" AllowGrouping="False" AllowFiltering="False" Format="{0:c2}">
                    </ej:Column>
                    <ej:Column Width="130" Field="decimoSalario" HeaderText="Décimo Salário" AllowGrouping="False" AllowFiltering="False" Format="{0:c2}">
                    </ej:Column>
                    <ej:Column Width="130" Field="totalCredito" HeaderText="Total Crédito" AllowGrouping="False" AllowFiltering="False" Format="{0:c2}">
                    </ej:Column>
                    <ej:Column Width="130" Field="previdencia" HeaderText="Previdência" AllowGrouping="False" AllowFiltering="False" Format="{0:c2}">
                    </ej:Column>
                    <ej:Column Width="130" Field="imposto" HeaderText="Imposto" AllowGrouping="False" AllowFiltering="False" Format="{0:c2}">
                    </ej:Column>
                    <ej:Column Width="130" Field="totalDesconto" HeaderText="Total Desconto" AllowGrouping="False" AllowFiltering="False" Format="{0:c2}">
                    </ej:Column>
                    <ej:Column Width="130" Field="totalLiquido" HeaderText="Total Líquido" AllowGrouping="False" AllowFiltering="False" Format="{0:c2}">
                    </ej:Column>
                    <ej:Column Width="130" Field="indenizacoes" HeaderText="Indenizações" AllowGrouping="False" AllowFiltering="False" Format="{0:c2}">
                    </ej:Column>
                </Columns>

            </ej:Grid>
        </div>

    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">

    <script type="text/javascript">

        ej.addCulture("pt-BR", {
            name: "pt-BR",
            englishName: "Portuguese (Brazil)",
            nativeName: "Português (Brasil)",
            language: "pt",
            numberFormat: {
                ",": ".",
                ".": ",",
                "NaN": "NaN (Não é um número)",
                negativeInfinity: "-Infinito",
                positiveInfinity: "+Infinito",
                percent: {
                    pattern: ["-n%", "n%"],
                    ",": ".",
                    ".": ","
                },
                currency: {
                    pattern: ["-$ n", "$ n"],
                    ",": ".",
                    ".": ",",
                    symbol: "R$"
                }
            },
            calendars: {
                standard: {
                    days: {
                        names: ["domingo", "segunda-feira", "terça-feira", "quarta-feira", "quinta-feira", "sexta-feira", "sábado"],
                        namesAbbr: ["dom", "seg", "ter", "qua", "qui", "sex", "sáb"],
                        namesShort: ["D", "S", "T", "Q", "Q", "S", "S"]
                    },
                    months: {
                        names: ["janeiro", "fevereiro", "março", "abril", "maio", "junho", "julho", "agosto", "setembro", "outubro", "novembro", "dezembro", ""],
                        namesAbbr: ["jan", "fev", "mar", "abr", "mai", "jun", "jul", "ago", "set", "out", "nov", "dez", ""]
                    },
                    AM: null,
                    PM: null,
                    patterns: {
                        d: "dd/MM/yyyy",
                        D: "dddd, d' de 'MMMM' de 'yyyy",
                        t: "HH:mm",
                        T: "HH:mm:ss",
                        f: "dddd, d' de 'MMMM' de 'yyyy HH:mm",
                        F: "dddd, d' de 'MMMM' de 'yyyy HH:mm:ss",
                        M: "d' de 'MMMM",
                        Y: "MMMM' de 'yyyy"
                    }
                }
            }
        });

    </script>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="subsidio.aspx.cs" Inherits="Transparencia.pages.Subsidio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Subsidio</h2>

    <div class="table-responsive">

        <ej:Grid ID="gvSubsidio" runat="server"
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
                <ej:Column Field="id" HeaderText="Id" Visible="False">
                </ej:Column>
                <ej:Column Width="120" Field="descricaoClasse" HeaderText="Classe" AllowGrouping="True" AllowFiltering="True">
                </ej:Column>
                <ej:Column Width="130" Field="tipoServidor" HeaderText="Tipo Servidor" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
                <ej:Column Width="130" Field="valorReajuste" HeaderText="Valor Reajuste" AllowGrouping="False" AllowFiltering="False" Format="{0:c2}">
                </ej:Column>
                <ej:Column Field="anoCompetencia" HeaderText="Ano Competência" AllowGrouping="True" AllowFiltering="True">
                </ej:Column>
                <ej:Column Field="vagasPrevistas" HeaderText="Vagas Previstas" AllowGrouping="False" AllowFiltering="False">
                </ej:Column>
            </Columns>

        </ej:Grid>

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

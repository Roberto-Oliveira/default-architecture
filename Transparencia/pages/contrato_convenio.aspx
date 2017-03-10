<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contrato_convenio.aspx.cs" Inherits="Transparencia.pages.ContratoConvenio" %>

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
    <h2>Contratos e Convênios</h2>
    <br />

    <div style="position: relative;">
        <ej:Grid ID="gvContratosConvenios" runat="server"
            AllowSorting="True"
            AllowResizeToFit="True"
            AllowPaging="True"
            AllowFiltering="True"
            AllowSelection="False"
            EnableRowHover="False"
            ClientIDMode="Static">

            <Columns>
                <ej:Column Field="codigoProcesso" HeaderText="Código Processo" Visible="False">
                </ej:Column>
                <ej:Column Field="nomeArquivoPDF" HeaderText="Nome Arquivo PDF" Visible="False">
                </ej:Column>
                <ej:Column Field="ano" Width="8%" HeaderText="Ano">
                </ej:Column>
                <ej:Column Field="numeroProcesso" HeaderText="Número Processo">
                </ej:Column>
                <ej:Column Field="contratada" HeaderText="Contratada">
                </ej:Column>
                <ej:Column Field="modalidade" HeaderText="Modalidade">
                </ej:Column>
                <ej:Column Field="finalizado" HeaderText="Finalizado">
                </ej:Column>
                <ej:Column Field="vigenciaInicial" HeaderText="Vigência Inicial" AllowFiltering="False">
                </ej:Column>
                <ej:Column Field="vigenciaFinal" HeaderText="Vigência Final" AllowFiltering="False">
                </ej:Column>
                <ej:Column Field="dataContrato" HeaderText="Data do Contrato" AllowFiltering="False">
                </ej:Column>
                <ej:Column Field="vigenciaProrrogada" HeaderText="Vigência Prorrogada" AllowFiltering="False">
                </ej:Column>
                <ej:Column Field="objeto" HeaderText="Objeto" Visible="False">
                </ej:Column>
                <ej:Column HeaderText="Detalhes" IsUnbound="True" TextAlign="Left" Width="150" Field="" AllowFiltering="False">
                    <Command>
                        <ej:Commands Type="detail">
                            <ButtonOptions Text="Detalhes" Width="90%" Height="2%" Click="onClick"></ButtonOptions>
                        </ej:Commands>
                    </Command>
                </ej:Column>
            </Columns>
            <PageSettings PageSize="10"></PageSettings>
        </ej:Grid>
        <ej:Dialog ID="commanddialog" ClientIDMode="Static" runat="server" Width="800" Title="Detalhes do Contrato" ShowOnInit="false"
            EnableResize="False" Target="#gvContratosConvenios" ShowFooter="True">
        </ej:Dialog>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <script id="templateData" type="text/x-jsrender">
        <table>
            <tr>
                <td class="td-grid">Número do Processo:</td>
                <td>{{:numeroProcesso}} </td>
            </tr>
            <tr>
                <td class="td-grid">Razão Social:</td>
                <td>{{:contratada}} </td>
            </tr>
            <tr>
                <td class="td-grid">Modalidade:</td>
                <td>{{:modalidade}} </td>
            </tr>
            <tr>
                <td class="td-grid">Data do Contrato:</td>
                <td>{{:dataContrato}} </td>
            </tr>
            <tr>
                <td class="td-grid">Vigência Inicial:</td>
                <td>{{:vigenciaInicial}} </td>
            </tr>
            <tr>
                <td class="td-grid">Vigência Final:</td>
                <td>{{:vigenciaFinal}} </td>
            </tr>
            <tr>
                <td class="td-grid">Vigência Prorrogada:</td>
                <td>{{:vigenciaProrrogada}} </td>
            </tr>
            <tr>
                <td class="td-grid">Objeto do Contrato:</td>
                <td>{{:objeto}} </td>
            </tr>
            <tr>
                <td class="td-grid">Encerrado?</td>
                <td>{{:finalizado}} </td>
            </tr>
            <tr>
                <td class="td-grid"></td>
                <td>&#013;</td>
            </tr>
            <tr>
                <td class="td-grid"></td>
                <td>&#013;</td>
            </tr>
            <tr>
                <td class="td-grid">Visualizar contrato:</td>
                <td>
                    <a href="http://sistemas.defensoria.ms.gov.br/ajfile/arquivos/PROCESSOS/{{:codigoProcesso}}/{{:nomeArquivoPDF}}" target="_blank">Clique aqui.</a>
                </td>
            </tr>
        </table>
    </script>

    <script type="text/javascript">
        function onClick(args) {
            var grid = $("#gvContratosConvenios").ejGrid("instance");
            var index = this.element.closest("tr").index();
            var record = grid.getCurrentViewData()[index];
            record["BirthDate"] = ej.format(record["BirthDate"], "MM/dd/yyyy");
            $("#commanddialog").html($("#templateData").render(record))
                .ejDialog("option", { position: { X: this.element.position().left - 755, Y: this.element.position().top } })
                .ejDialog("open");
            if (navigator.userAgent.indexOf("MSIE 8.0") != -1)
                $("#commanddialog").find("img").width(150);
        }
    </script>
</asp:Content>

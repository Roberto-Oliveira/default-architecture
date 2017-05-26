<%@ Page Title="" Language="C#" MasterPageFile="~/tblTemp.Master" AutoEventWireup="true" CodeBehind="tabela_temporalidade.aspx.cs" Inherits="Transparencia.pages.tabela_temporalidade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Tabela de Temporalidade</h2>

    <div class="table-responsive" style="position: relative;">

        <ej:Grid ID="gvTabelaTemporalidade" runat="server"
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
                <ej:Column Width="130" Field="numeroProcesso" HeaderText="Código Processo">
                </ej:Column>
                <ej:Column Width="450" Field="contratada" HeaderText="Defensor Público" AllowGrouping="True">
                </ej:Column>
                <ej:Column Width="225" Field="codTabTemp" HeaderText="Código Tabela Temporalidade" AllowGrouping="True">
                </ej:Column>
                <ej:Column Width="120" HeaderText="Documentos" IsUnbound="True" TextAlign="Center" Field="" AllowFiltering="False" AllowGrouping="False">
                    <Command>
                        <ej:Commands Type="detail">
                            <ButtonOptions Text="Requerimento" Width="100" Height="2%" Click="onClick"></ButtonOptions>
                        </ej:Commands>
                    </Command>
                </ej:Column>
            </Columns>

            <ToolbarSettings ShowToolbar="True" ToolbarItems="search"></ToolbarSettings>

        </ej:Grid>

        <ej:Dialog ID="commanddialog" ClientIDMode="Static" runat="server" Width="450" Title="Download Requerimento" ShowOnInit="false"
            EnableResize="False" Target="#gvTabelaTemporalidade" ShowFooter="True">
        </ej:Dialog>

    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <script id="templateData" type="text/x-jsrender">
        <table>
            <tr>
                <td class="td-grid">Visualizar requerimento:</td>
                <td>
                    <i class="fa fa-file-word-o" style="font-size: 24px; color: dodgerblue;" aria-hidden="true"></i>
                    <a href="/docs/Requerimento de Guarda Particular de Documentos.doc" target="_blank">Clique aqui</a>
                </td>
            </tr>
        </table>
    </script>

    <script type="text/javascript">
        function onClick(args) {
            var grid = $("#gvTabelaTemporalidade").ejGrid("instance");
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

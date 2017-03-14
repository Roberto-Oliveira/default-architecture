<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="transparencia.aspx.cs" Inherits="Transparencia.transparencia" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="background: transparent">

        <img src="images/banner-inicial-transparencia.png" alt="Banner" style="width: 1169px; margin-left: -59px;" />

    </div>
    <div class="container">
        <div class="row">

            <div class="col-md-3">
                <h2>Defensoria Pública</h2>
                <p>
                    <a class="btn btn-primary" href="http://www.defensoria.ms.def.br/" target="_blank">Saiba mais &raquo;</a>
                </p>
            </div>

            <div class="col-md-3">
                <h2>Sobre o Portal</h2>
                <p>
                    <a class="btn btn-primary" href="#" data-toggle="modal" data-target="#myModal">Saiba mais &raquo;</a>
                </p>

                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Sobre o Portal</h4>
                            </div>
                            <div class="modal-body">
                                <p class="paragrafo-justificacao">O estímulo à transparência pública é um dos objetivos essenciais da moderna Administração Pública. A ampliação da divulgação das ações governamentais a milhões de brasileiros, além de contribuir para o fortalecimento da democracia, prestigia e desenvolve as noções de cidadania. As páginas de Transparência Pública dão continuidade às ações de governo voltadas para o incremento da transparência e do controle social, com objetivo de divulgar as despesas realizadas pelos órgãos e entidades da Administração Pública.</p>
                                <p class="paragrafo-justificacao">Dessa forma, em atendimento ao Princípio Constitucional da Publicidade e visando dar cumprimento ao disposto na Lei Complementar Federal nº 131, de 27 de maio de 2009, que trata da divulgação, em tempo real, de informações pormenorizadas sobre a execução orçamentária e financeira, bem como às disposições estatuídas na Lei Federal nº 12.527, de 18 de novembro de 2011, também denominada de Lei de Acesso à Informação, a Defensoria Pública do Estado de Mato Grosso do Sul disponibiliza neste Portal as informações existentes nas suas bases de dados e procura atender por meio das suas ações e atividades as aspirações da sociedade.</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>

                    </div>
                </div>

            </div>

            <div class="col-md-2">
                <h2>Contato</h2>
                <p>
                    <a class="btn btn-primary" href="http://intranet.defensoria.ms.gov.br/portais/transparencia/faleconosco.jsf" target="_blank">Saiba mais &raquo;</a>
                </p>
            </div>

            <div class="col-md-2">
                <h2>Portal Antigo</h2>
                <p>
                    <a class="btn btn-primary" href="http://intranet.defensoria.ms.gov.br/portais/transparencia/home.jsf" target="_blank">Saiba mais &raquo;</a>
                </p>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

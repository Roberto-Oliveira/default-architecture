using Syncfusion.EJ.Export;
using Syncfusion.JavaScript.Web;
using Syncfusion.XlsIO;
using System;
using System.Collections;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class FolhaPagamento : System.Web.UI.Page
    {
        private List<vw_folha_pagamento_servidor> _fp = new List<vw_folha_pagamento_servidor>();
        private readonly FolhaPagamentoDao _fpDao = new FolhaPagamentoDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }
        private void BindDataSource()
        {
            _fp = _fpDao.GetNormalList();

            this.gvFolhaServidores.DataSource = _fp;
            this.gvFolhaServidores.DataBind();
        }

        protected void gvFolhaServidores_OnServerExcelExporting(object sender, GridEventArgs e)
        {
            var dados = new ExcelExport();
            dados.Export(gvFolhaServidores.Model, (IEnumerable)gvFolhaServidores.DataSource, "FolhaPagamento.xlsx",
                ExcelVersion.Excel2013, true, true, "bootstrap-theme");
        }
    }
}
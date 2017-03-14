using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class CadastroFornecedores : System.Web.UI.Page
    {
        private List<vw_licitacoes_cadastro_fornecedore> _cf = new List<vw_licitacoes_cadastro_fornecedore>();
        private readonly CadastroFornecedoresDao _cfDao = new CadastroFornecedoresDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _cf = _cfDao.GetNormalList();

            this.gvCadastroFornecedores.DataSource = _cf;
            this.gvCadastroFornecedores.DataBind();
        }
    }
}
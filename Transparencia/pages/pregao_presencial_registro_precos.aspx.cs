using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class pregao_presencial_registro_precos : System.Web.UI.Page
    {
        private List<vw_licitacoes_pregao_presencial_registro_preco> _pp = new List<vw_licitacoes_pregao_presencial_registro_preco>();
        private readonly PregaoPresencialRegistroPrecoDao _ppDao = new PregaoPresencialRegistroPrecoDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _pp = _ppDao.GetNormalList();

            this.gvPregaoPresencialRegistroPreco.DataSource = _pp;
            this.gvPregaoPresencialRegistroPreco.DataBind();
        }
    }
}
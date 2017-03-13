using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class Legislacao : System.Web.UI.Page
    {
        private List<vw_licitacoes_legislacao> _ll = new List<vw_licitacoes_legislacao>();
        private readonly LegislacaoDao _llDao = new LegislacaoDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _ll = _llDao.GetNormalList();

            this.gvLegislacoes.DataSource = _ll;
            this.gvLegislacoes.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class pregao_eletronico : System.Web.UI.Page
    {
        private List<vw_licitacoes_pregao_eletronico> _pe = new List<vw_licitacoes_pregao_eletronico>();
        private readonly PregaoEletronicoDao _peDao = new PregaoEletronicoDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _pe = _peDao.GetNormalList();

            this.gvPregaoEletronico.DataSource = _pe;
            this.gvPregaoEletronico.DataBind();
        }
    }
}
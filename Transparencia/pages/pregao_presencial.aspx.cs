using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class pregao_presencial : System.Web.UI.Page
    {
        private List<vw_licitacoes_pregao_presencial> _pp = new List<vw_licitacoes_pregao_presencial>();
        private readonly PregaoPresencialDao _ppDao = new PregaoPresencialDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _pp = _ppDao.GetNormalList();

            this.gvPregaoPresencial.DataSource = _pp;
            this.gvPregaoPresencial.DataBind();
        }
    }
}
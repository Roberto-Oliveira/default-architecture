using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class Avisos : System.Web.UI.Page
    {
        private List<vw_licitacoes_aviso> _la = new List<vw_licitacoes_aviso>();
        private readonly AvisosDao _laDao = new AvisosDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _la = _laDao.GetNormalList();

            this.gvAvisos.DataSource = _la;
            this.gvAvisos.DataBind();
        }
    }
}
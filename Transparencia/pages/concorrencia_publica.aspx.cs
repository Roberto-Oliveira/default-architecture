using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class concorrencia_publica : System.Web.UI.Page
    {
        private List<vw_licitacoes_concorrencia_publica> _cp = new List<vw_licitacoes_concorrencia_publica>();
        private readonly ConcorrenciaPublicaDao _cpDao = new ConcorrenciaPublicaDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _cp = _cpDao.GetNormalList();

            this.gvConcorrenciaPublica.DataSource = _cp;
            this.gvConcorrenciaPublica.DataBind();
        }
    }
}
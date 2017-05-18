using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class tabela_temporalidade : System.Web.UI.Page
    {
        private List<tbl_Temporalidade> _tt = new List<tbl_Temporalidade>();
        private readonly TemporalidadeDao _ttDao = new TemporalidadeDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _tt = _ttDao.GetNormalList();

            this.gvTabelaTemporalidade.DataSource = _tt;
            this.gvTabelaTemporalidade.DataBind();
        }
    }
}
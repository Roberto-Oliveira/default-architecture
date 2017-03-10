using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class Subsidio : System.Web.UI.Page
    {
        private List<vw_folha_subsidio> _fs = new List<vw_folha_subsidio>();
        private readonly SubsidioDao _sDao = new SubsidioDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _fs = _sDao.GetNormalList();

            this.gvSubsidio.DataSource = _fs;
            this.gvSubsidio.DataBind();
        }
    }
}
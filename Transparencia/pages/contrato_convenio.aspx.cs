using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class ContratoConvenio : System.Web.UI.Page
    {
        private List<vw_contratos_convenio> _cc = new List<vw_contratos_convenio>();
        private readonly ContratoConvenioDao _ccDao = new ContratoConvenioDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _cc = _ccDao.GetNormalList();

            this.gvContratosConvenios.DataSource = _cc;
            this.gvContratosConvenios.DataBind();
        }
    }
}
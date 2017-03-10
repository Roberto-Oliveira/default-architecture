using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class CargosComissao : System.Web.UI.Page
    {
        private List<vw_cargo_comissao_servidor> _cc = new List<vw_cargo_comissao_servidor>();
        private readonly CargoComissaoDao _ccDao = new CargoComissaoDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _cc = _ccDao.GetNormalList();

            this.gvCargoComissao.DataSource = _cc;
            this.gvCargoComissao.DataBind();
        }
    }
}
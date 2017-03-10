using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class cargo_efetivo : System.Web.UI.Page
    {
        private List<vw_cargo_efetivo_servidor> _ce = new List<vw_cargo_efetivo_servidor>();
        private readonly CargoEfetivoDao _ceDao = new CargoEfetivoDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _ce = _ceDao.GetNormalList();

            this.gvCargosEfetivos.DataSource = _ce;
            this.gvCargosEfetivos.DataBind();
        }
    }
}
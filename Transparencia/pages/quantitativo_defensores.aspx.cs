using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class QuantitativoDefensores : System.Web.UI.Page
    {
        private List<vw_cargo_defensor_servidor> _cd = new List<vw_cargo_defensor_servidor>();
        private readonly CargoDefensorDao _cdDao = new CargoDefensorDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _cd = _cdDao.GetNormalList();

            this.gvQuantitativoServidores.DataSource = _cd;
            this.gvQuantitativoServidores.DataBind();
        }
    }
}
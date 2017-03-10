using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class CargoEfetivoVencimento : System.Web.UI.Page
    {
        private List<vw_cargo_efetivo_vencimento> _cev = new List<vw_cargo_efetivo_vencimento>();
        private readonly CargoEfetivoVencimentoDao _cevDao = new CargoEfetivoVencimentoDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _cev = _cevDao.GetNormalList();

            this.gvCargoEfetivoVencimento.DataSource = _cev;
            this.gvCargoEfetivoVencimento.DataBind();
        }
    }
}
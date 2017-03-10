using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class CargoComissionadoVencimento : System.Web.UI.Page
    {
        private List<vw_cargo_comissionado_vencimento> _ccv = new List<vw_cargo_comissionado_vencimento>();
        private readonly CargoComissionadoVencimentoDao _ccvDao = new CargoComissionadoVencimentoDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _ccv = _ccvDao.GetNormalList();

            this.gvCargosComissionadosVencimentos.DataSource = _ccv;
            this.gvCargosComissionadosVencimentos.DataBind();
        }
    }
}
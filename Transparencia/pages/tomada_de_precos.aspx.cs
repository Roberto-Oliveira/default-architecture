using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class TomadaDePrecos : System.Web.UI.Page
    {
        private List<vw_licitacoes_tomada_de_preco> _tp = new List<vw_licitacoes_tomada_de_preco>();
        private readonly TomadaPrecosDao _tpDao = new TomadaPrecosDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _tp = _tpDao.GetNormalList();

            this.gvTomadaPrecos.DataSource = _tp;
            this.gvTomadaPrecos.DataBind();
        }
    }
}
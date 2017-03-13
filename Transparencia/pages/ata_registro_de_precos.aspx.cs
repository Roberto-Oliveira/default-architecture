using System;
using System.Collections.Generic;
using TransparenciaDAO;

namespace Transparencia.pages
{
    public partial class AtaRegistroDePrecos : System.Web.UI.Page
    {
        private List<vw_licitacoes_ata_registro_preco> _arp = new List<vw_licitacoes_ata_registro_preco>();
        private readonly AtaRegistroPrecosDao _arpDao = new AtaRegistroPrecosDao();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataSource();
        }

        private void BindDataSource()
        {
            _arp = _arpDao.GetNormalList();

            this.gvAtaRegistroPrecos.DataSource = _arp;
            this.gvAtaRegistroPrecos.DataBind();
        }
    }
}
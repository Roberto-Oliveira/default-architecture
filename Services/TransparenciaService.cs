using FolhaDao.DBML;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;


namespace Services
{
    [ScriptService]
    public class TransparenciaService : WebService
    {
        private static readonly FolhaDataContext _fdc = new FolhaDataContext();
        private static readonly JavaScriptSerializer _jss = new JavaScriptSerializer();



    }
}

using System.Collections.Generic;
using System.Web.Http;
using ComumDao.DBML;
using Generics.DAO;

namespace Apis.Controllers
{
    public class GenericController : ApiController
    {
        private GenericDao<TB_CLASSE_CARGO_COMISSIONADO, ComumDataContext> _cDao;

        // GET api/<controller>
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            var retorno = _cDao.SearchById(id);
            return retorno.ToString();
        }

        // POST api/<controller>
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}
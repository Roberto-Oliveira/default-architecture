using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;

namespace Services.Alcoolina
{

    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    [WebService(Namespace = "alcoolina.service")]
    public class WsAlcoolina : WebService
    {
        private static readonly JavaScriptSerializer jss = new JavaScriptSerializer();
        private static string msg { get; set; }

        [WebMethod(Description =
         "<br/><p><b>Descrição:</b> Método que verifica qual combustível deve ser usado.</p>" +
         "<p><b>Parâmetros: </b>  Preço do Álcool: tipo float</p>" +
         "<p><b>Parâmetros: </b>  Preço do Gasolina: tipo float</p>" +
         "<ul>" +
              "<p><b>Retorno: </b></p>" +
                 "<ul>" +
                    "<li><b>Mensagem</b>: tipo String" + "</li>" +
                 "</ul>" +
         "</ul><br/>"
       )]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public float AlcoolinaCalcular(float precoAlcool, float precoGasolina)
        {
            return precoAlcool / precoGasolina;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public string RetornaValorAlcoolina(string precoAlcool, string precoGasolina)
        {
            var retorno = AlcoolinaCalcular(float.Parse(precoAlcool), float.Parse(precoGasolina));

            msg = retorno <= 0.7 ? "Abasteça com Álcool." : "Abasteça com Gasolina.";

            return msg;

        }
    }
}

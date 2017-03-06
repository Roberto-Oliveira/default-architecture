using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.IO;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.Runtime.Serialization;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Serialization;

namespace Generics.DAO
{
    public abstract class GenericDao<T, TDc> where T : class where TDc : DataContext, new()
    {
        private readonly TDc _context = new TDc();

        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public void Insert(T entity)
        {
            _context.GetTable<T>().InsertOnSubmit(entity);
            _context.SubmitChanges();
        }

        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public void Update(T entity)
        {
            _context.Refresh(RefreshMode.KeepCurrentValues, entity);
            _context.SubmitChanges();
        }

        [DataObjectMethod(DataObjectMethodType.Delete, false)]
        public void Delete(T entity)
        {
            _context.GetTable<T>().DeleteOnSubmit(entity);
            _context.SubmitChanges();
        }

        [DataObjectMethod(DataObjectMethodType.Delete, false)]
        public void DeleteAttach(T entity)
        {
            _context.GetTable<T>().Attach(entity);
            _context.GetTable<T>().DeleteOnSubmit(entity);
            _context.SubmitChanges();
        }

        public virtual ITable GetClass()
        {
            return _context.GetTable<T>();
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public IQueryable<T> GetTable()
        {
            return _context.GetTable<T>();
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public IList<T> GetList()
        {
            return _context.GetTable<T>().ToList();
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<T> GetNormalList()
        {
            return _context.GetTable<T>().ToList();
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<T> GetNormalListWithParameters(int mes, int ano)
        {
            return _context.GetTable<T>().ToList();
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public IEnumerable<T> GetListIEnumerable()
        {
            return _context.GetTable<T>().ToList();
        }


        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public T SearchById(int id)
        {
            var parametro = Expression.Parameter(typeof(T), "item");

            var expressao = Expression.Lambda<Func<T, bool>>(Expression.Equal(Expression.Property(parametro, typeof(T)
                                      .GetPrimaryKey().Name),
                            Expression.Constant(id)), parametro);

            var item = GetTable().Where(expressao).SingleOrDefault();

            return item;
        }
    }

    public static class Auxiliar
    {
        public static PropertyInfo GetPrimaryKey(this Type entityType)
        {
            foreach (var property in entityType.GetProperties().Where(property => property.IsPrimaryKey()))
            {
                if (property.PropertyType != typeof(int))
                {
                    throw new Exception($"Primary key, '{property.Name}', do tipo '{entityType}' não é int");
                }
                return property;
            }
            throw new ApplicationException($"Sem primary key definida para o tipo '{entityType.Name}'");
        }

        public static bool IsPrimaryKey(this PropertyInfo propertyInfo)
        {
            var columnAttribute = propertyInfo.GetAttributeOf<ColumnAttribute>();

            return columnAttribute != null && columnAttribute.IsPrimaryKey;
        }

        public static T GetAttributeOf<T>(this PropertyInfo propertyInfo)
        {
            var attributes = propertyInfo.GetCustomAttributes(typeof(T), true);
            if (attributes.Length == 0)
            {
                return default(T);
            }
            return (T)attributes[0];
        }

        [Serializable]
        public class PrimaryKeyNotFoundException : Exception
        {
            public PrimaryKeyNotFoundException() { }

            public PrimaryKeyNotFoundException(string message) : base(message) { }

            public PrimaryKeyNotFoundException(string message, Exception innerException) : base(message, innerException) { }

            protected PrimaryKeyNotFoundException(SerializationInfo info, StreamingContext streamingContext) : base(info, streamingContext) { }
        }

        public static void ClearControls(Control controle)
        {
            foreach (Control ctr in controle.Controls)
            {
                if (ctr.HasControls())
                {
                    ClearControls(ctr);
                }

                if (ctr is TextBox)
                {
                    var tb = (TextBox)ctr;
                    tb.Text = "";
                }

                if (ctr is DropDownList)
                {
                    var ddl = (DropDownList)ctr;
                    ddl.DataBind();
                }

                if (ctr is HtmlInputText)
                {
                    var hit = (HtmlInputText)ctr;
                    hit.Value = "";
                }
            }
        }

        public static void TextoAlternativo(object sender, EventArgs e)
        {
            ((DropDownList)sender).Items.Insert(0, new ListItem("Selecione...", "-1"));
        }

        public static string XmlSerializerObject<T>(this T valor)
        {
            var xml = new XmlSerializer(valor.GetType());
            var retorno = new StringWriter();
            xml.Serialize(retorno, valor);
            return retorno.ToString();
        }
        public static object XmlDeserializerObject(string valor, Type tipo)
        {
            var xml = new XmlSerializer(tipo);
            var valorSerealizado = new StringReader(valor);
            return xml.Deserialize(valorSerealizado);
        }
    }
}

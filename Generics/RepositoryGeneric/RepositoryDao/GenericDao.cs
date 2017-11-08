using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;

namespace RepositoryGeneric.RepositoryDao
{
    public abstract class GenericDao<TEntity, TDataContext> where TEntity : class where TDataContext : DataContext, new()
    {
        private readonly TDataContext _dataContext = new TDataContext();

        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public void Insert(TEntity entity)
        {
            _dataContext.GetTable<TEntity>().InsertOnSubmit(entity);
            _dataContext.SubmitChanges();
        }

        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public void Update(TEntity entity)
        {
            _dataContext.Refresh(RefreshMode.KeepCurrentValues, entity);
            _dataContext.SubmitChanges();
        }

        [DataObjectMethod(DataObjectMethodType.Delete, false)]
        public void Delete(TEntity entity)
        {
            _dataContext.GetTable<TEntity>().DeleteOnSubmit(entity);
            _dataContext.SubmitChanges();
        }

        [DataObjectMethod(DataObjectMethodType.Delete, false)]
        public void DeleteAttach(TEntity entity)
        {
            _dataContext.GetTable<TEntity>().Attach(entity);
            _dataContext.GetTable<TEntity>().DeleteOnSubmit(entity);
            _dataContext.SubmitChanges();
        }

        public virtual ITable GetClass()
        {
            return _dataContext.GetTable<TEntity>();
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public IQueryable<TEntity> GetTable()
        {
            return _dataContext.GetTable<TEntity>();
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public IList<TEntity> GetList()
        {
            return _dataContext.GetTable<TEntity>().ToList();
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public virtual List<TEntity> GetNormalList()
        {
            return _dataContext.GetTable<TEntity>().ToList();
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<TEntity> GetNormalListWithParameters(int mes, int ano)
        {
            return _dataContext.GetTable<TEntity>().ToList();
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public IEnumerable<TEntity> GetListIEnumerable()
        {
            return _dataContext.GetTable<TEntity>().ToList();
        }


        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public TEntity SearchById(int id)
        {
            var parametro = Expression.Parameter(typeof(TEntity), "item");

            var expressao = Expression.Lambda<Func<TEntity, bool>>(Expression.Equal(Expression.Property(parametro, typeof(TEntity)
                                      .GetPrimaryKey().Name),
                            Expression.Constant(id)), parametro);

            var item = GetTable().Where(expressao).SingleOrDefault();

            return item;
        }

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

        public TEntity GetEntityById(int id)
        {
            var query = from entity in _dataContext.GetTable<TEntity>() where entity.Equals(id) select entity;
            return query.FirstOrDefault();
        }
    }
}

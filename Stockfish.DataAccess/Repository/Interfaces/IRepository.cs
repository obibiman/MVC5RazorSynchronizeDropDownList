using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace Stockfish.DataAccess.Repository.Interfaces
{
    public interface IRepository<T> where T : class
    {
        T GetById(int Id);
        Task<T> GetByIdAsync(int Id);
        ICollection<T> GetAll();
        ICollection<T> GetAllAsync();
        T Get(Expression<Func<T, bool>> predicate);
        Task<T> GetAsync(Expression<Func<T, bool>> predicate);
        IEnumerable<T> GetAll(Expression<Func<T, bool>> predicate = null);
        IEnumerable<T> GetAllAsync(Expression<Func<T, bool>> predicate = null);
        ICollection<T> FindAll(Expression<Func<T, bool>> predicate = null);
        Task<ICollection<T>> FindAllAsync(Expression<Func<T, bool>> predicate = null);
        Task<T> FindAsync(Expression<Func<T, bool>> predicate = null);
        T Find(Expression<Func<T, bool>> predicate = null);
        void Add(T entity);
        void AddAsync(T entity);
        void Update(T entity);
        void UpdateAsync(T entity);
        void Delete(T entity);
        void DeleteAsync(T entity);
        long Count();
        void SaveChanges();
        void SaveChangesAsync();
    }
}
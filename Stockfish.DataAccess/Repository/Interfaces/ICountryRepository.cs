using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Stockfish.DataAccess.Model;

namespace Stockfish.DataAccess.Repository.Interfaces
{
    public interface ICountryRepository
    {
        void Add(Country entity);
        void AddAsync(Country entity);
        long Count();
        void Delete(Country entity);
        void DeleteAsync(Country entity);
        Country Find(Expression<Func<Country, bool>> predicate = null);
        ICollection<Country> FindAll(Expression<Func<Country, bool>> predicate = null);
        Task<ICollection<Country>> FindAllAsync(Expression<Func<Country, bool>> predicate = null);
        Task<Country> FindAsync(Expression<Func<Country, bool>> predicate = null);
        Country Get(Expression<Func<Country, bool>> predicate);
        ICollection<Country> GetAll();
        IEnumerable<Country> GetAll(Expression<Func<Country, bool>> predicate = null);
        ICollection<Country> GetAllAsync();
        IEnumerable<Country> GetAllAsync(Expression<Func<Country, bool>> predicate = null);
        Task<Country> GetAsync(Expression<Func<Country, bool>> predicate);
        Country GetById(int Id);
        Task<Country> GetByIdAsync(int Id);
        void SaveChanges();
        void SaveChangesAsync();
        void Update(Country entity);
        void UpdateAsync(Country entity);
    }
}
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Stockfish.DataAccess.Model;

namespace Stockfish.DataAccess.Repository.Interfaces
{
    public interface ISalutationRepository
    {
        void Add(Salutation entity);
        void AddAsync(Salutation entity);
        long Count();
        void Delete(Salutation entity);
        void DeleteAsync(Salutation entity);
        Salutation Find(Expression<Func<Salutation, bool>> predicate = null);
        ICollection<Salutation> FindAll(Expression<Func<Salutation, bool>> predicate = null);
        Task<ICollection<Salutation>> FindAllAsync(Expression<Func<Salutation, bool>> predicate = null);
        Task<Salutation> FindAsync(Expression<Func<Salutation, bool>> predicate = null);
        Salutation Get(Expression<Func<Salutation, bool>> predicate);
        ICollection<Salutation> GetAll();
        IEnumerable<Salutation> GetAll(Expression<Func<Salutation, bool>> predicate = null);
        ICollection<Salutation> GetAllAsync();
        IEnumerable<Salutation> GetAllAsync(Expression<Func<Salutation, bool>> predicate = null);
        Task<Salutation> GetAsync(Expression<Func<Salutation, bool>> predicate);
        Salutation GetById(int Id);
        Task<Salutation> GetByIdAsync(int Id);
        void SaveChanges();
        void SaveChangesAsync();
        void Update(Salutation entity);
        void UpdateAsync(Salutation entity);
    }
}
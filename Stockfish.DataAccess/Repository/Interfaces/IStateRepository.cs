using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Stockfish.DataAccess.Model;

namespace Stockfish.DataAccess.Repository.Interfaces
{
    public interface IStateRepository
    {
        void Add(State entity);
        void AddAsync(State entity);
        long Count();
        void Delete(State entity);
        void DeleteAsync(State entity);
        State Find(Expression<Func<State, bool>> predicate = null);
        ICollection<State> FindAll(Expression<Func<State, bool>> predicate = null);
        Task<ICollection<State>> FindAllAsync(Expression<Func<State, bool>> predicate = null);
        Task<State> FindAsync(Expression<Func<State, bool>> predicate = null);
        State Get(Expression<Func<State, bool>> predicate);
        ICollection<State> GetAll();
        IEnumerable<State> GetAll(Expression<Func<State, bool>> predicate = null);
        ICollection<State> GetAllAsync();
        IEnumerable<State> GetAllAsync(Expression<Func<State, bool>> predicate = null);
        Task<State> GetAsync(Expression<Func<State, bool>> predicate);
        State GetById(int Id);
        Task<State> GetByIdAsync(int Id);
        void SaveChanges();
        void SaveChangesAsync();
        void Update(State entity);
        void UpdateAsync(State entity);
    }
}
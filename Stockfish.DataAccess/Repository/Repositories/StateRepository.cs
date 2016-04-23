using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Stockfish.DataAccess.DbContext;
using Stockfish.DataAccess.Model;
using Stockfish.DataAccess.Repository.Interfaces;

namespace Stockfish.DataAccess.Repository.Repositories
{
    public class StateRepository : IRepository<State>, IStateRepository
    {
        protected Context _context;

        public StateRepository(Context context)
        {
            _context = context;
        }

        public State GetById(int Id)
        {
            return _context.States.Find(Id);
        }

        public Task<State> GetByIdAsync(int Id)
        {
            return _context.States.FindAsync(Id);
        }

        public ICollection<State> GetAll()
        {
            return _context.States.ToList();
        }

        public ICollection<State> GetAllAsync()
        {
            return _context.States.ToList();
        }

        public State Get(Expression<Func<State, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public Task<State> GetAsync(Expression<Func<State, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<State> GetAll(Expression<Func<State, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<State> GetAllAsync(Expression<Func<State, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public ICollection<State> FindAll(Expression<Func<State, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public Task<ICollection<State>> FindAllAsync(Expression<Func<State, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public Task<State> FindAsync(Expression<Func<State, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public State Find(Expression<Func<State, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public void Add(State entity)
        {
            entity.Id =
                _context.Database.SqlQuery<int>("SELECT NEXT VALUE FOR dbo.StateSequence;").FirstOrDefault();
            _context.States.Add(entity);
            SaveChanges();
        }

        public void AddAsync(State entity)
        {
            entity.Id =
    _context.Database.SqlQuery<int>("SELECT NEXT VALUE FOR dbo.StateSequence;").FirstOrDefault();

            _context.States.Add(entity);
            SaveChangesAsync();
        }

        public void Update(State entity)
        {
            _context.States.AddOrUpdate(entity);
            SaveChanges();
        }

        public void UpdateAsync(State entity)
        {
            _context.States.AddOrUpdate(entity);
            SaveChangesAsync();
        }

        public void Delete(State entity)
        {
            _context.States.Remove(entity);
            SaveChanges();
        }

        public void DeleteAsync(State entity)
        {
            _context.States.Remove(entity);
            SaveChangesAsync();
        }

        public long Count()
        {
           return _context.States.Count();
        }

        public void SaveChanges()
        {
            _context.SaveChanges();
        }

        public void SaveChangesAsync()
        {
            _context.SaveChangesAsync();
        }
    }
}
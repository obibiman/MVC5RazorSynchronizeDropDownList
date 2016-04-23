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
    public class SalutationRepository : IRepository<Salutation>, ISalutationRepository
    {
        protected Context _context;

        public SalutationRepository(Context context)
        {
            _context = context;
        }

        public Salutation GetById(int Id)
        {
           return _context.Salutations.Find(Id);
        }

        public Task<Salutation> GetByIdAsync(int Id)
        {
            return _context.Salutations.FindAsync(Id);
        }

        public ICollection<Salutation> GetAll()
        {
            return _context.Salutations.ToList();
        }

        public ICollection<Salutation> GetAllAsync()
        {
           return _context.Salutations.ToList();
        }

        public Salutation Get(Expression<Func<Salutation, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public Task<Salutation> GetAsync(Expression<Func<Salutation, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Salutation> GetAll(Expression<Func<Salutation, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Salutation> GetAllAsync(Expression<Func<Salutation, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public ICollection<Salutation> FindAll(Expression<Func<Salutation, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public Task<ICollection<Salutation>> FindAllAsync(Expression<Func<Salutation, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public Task<Salutation> FindAsync(Expression<Func<Salutation, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public Salutation Find(Expression<Func<Salutation, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public void Add(Salutation entity)
        {
            entity.Id =
                _context.Database.SqlQuery<int>("SELECT NEXT VALUE FOR dbo.SalutationSequence;").FirstOrDefault();
            _context.Salutations.Add(entity);
            SaveChanges();
        }

        public void AddAsync(Salutation entity)
        {
            entity.Id =
                _context.Database.SqlQuery<int>("SELECT NEXT VALUE FOR dbo.SalutationSequence;").FirstOrDefault();
            _context.Salutations.Add(entity);
            SaveChangesAsync();
        }

        public void Update(Salutation entity)
        {
            _context.Salutations.AddOrUpdate(entity);
            SaveChanges();
        }

        public void UpdateAsync(Salutation entity)
        {
            _context.Salutations.AddOrUpdate(entity);
            SaveChangesAsync();
        }

        public void Delete(Salutation entity)
        {
            _context.Salutations.Remove(entity);
            SaveChanges();
        }

        public void DeleteAsync(Salutation entity)
        {
            _context.Salutations.Remove(entity);
            SaveChangesAsync();
        }

        public long Count()
        {
            return _context.Salutations.Count();
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
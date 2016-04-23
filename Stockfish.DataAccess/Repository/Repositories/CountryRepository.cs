using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Stockfish.DataAccess.DbContext;
using Stockfish.DataAccess.Model;
using Stockfish.DataAccess.Repository.Interfaces;

namespace Stockfish.DataAccess.Repository.Repositories
{
    public class CountryRepository : IRepository<Country>, ICountryRepository
    {
        protected Context _context;

        public CountryRepository(Context context)
        {
            _context = context;
        }

        public Country GetById(int Id)
        {
            return _context.Countries.Find(Id);
        }

        public async Task<Country> GetByIdAsync(int Id)
        {
            return await _context.Countries.FindAsync(Id);
        }

        public ICollection<Country> GetAll()
        {
            return _context.Countries.ToList();
        }

        public ICollection<Country> GetAllAsync()
        {
            throw new NotImplementedException();
        }

        public Country Get(Expression<Func<Country, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public Task<Country> GetAsync(Expression<Func<Country, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Country> GetAll(Expression<Func<Country, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Country> GetAllAsync(Expression<Func<Country, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public ICollection<Country> FindAll(Expression<Func<Country, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public Task<ICollection<Country>> FindAllAsync(Expression<Func<Country, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public Task<Country> FindAsync(Expression<Func<Country, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public Country Find(Expression<Func<Country, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public void Add(Country entity)
        {
            entity.Id =
                _context.Database.SqlQuery<int>("SELECT NEXT VALUE FOR dbo.CountrySequence;").FirstOrDefault();
            _context.Countries.Add(entity);
            SaveChanges();
        }

        public void AddAsync(Country entity)
        {
            entity.Id =
              _context.Database.SqlQuery<int>("SELECT NEXT VALUE FOR dbo.CountrySequence;").FirstOrDefault();
            _context.Countries.Add(entity);
            SaveChangesAsync();
        }

        public void Update(Country entity)
        {
            _context.Countries.AddOrUpdate(entity);
            SaveChanges();
        }

        public void UpdateAsync(Country entity)
        {
            _context.Countries.AddOrUpdate(entity);
            SaveChangesAsync();
        }

        public void Delete(Country entity)
        {
            _context.Countries.Remove(entity);
            SaveChanges();
        }

        public void DeleteAsync(Country entity)
        {
            _context.Countries.Remove(entity);
            SaveChangesAsync();
        }

        public long Count()
        {
            return _context.Countries.Count();
        }

        public void SaveChanges()
        {
            _context.SaveChanges();
        }

        public void SaveChangesAsync()
        {
            _context.SaveChangesAsync();
        }

        //public int GetSequence(SequenceIdentifier sequenceIdentifier)
        //{
        //    var retVal = -1;
        //    using (var context = _context)
        //    {
        //        ObjectParameter name = new ObjectParameter("SequenceValue", typeof(int));
        //        var outputValue = context.sp_DemoSequence(sequenceIdentifier.ToString(), name);
        //        retVal = name.Value;
        //    }
        //    return retVal;
        //}
    }
}
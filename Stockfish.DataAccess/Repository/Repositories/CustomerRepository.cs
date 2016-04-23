using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Stockfish.DataAccess.DbContext;
using Stockfish.DataAccess.Model;
using Stockfish.DataAccess.Repository.Interfaces;

namespace Stockfish.DataAccess.Repository.Repositories
{
    public class CustomerRepository : IRepository<Customer>, ICustomerRepository
    {
        protected Context _context;

        public CustomerRepository(Context context)
        {
            _context = context;
        }

        public Customer GetById(int Id)
        {
           return  _context.Customers.Find(Id);
        }

        public Task<Customer> GetByIdAsync(int Id)
        {
            return _context.Customers.FindAsync(Id);
        }

        public ICollection<Customer> GetAll()
        {
           return _context.Customers.ToList();
        }

        public ICollection<Customer> GetAllAsync()
        {
            return _context.Customers.ToList();
        }

        public Customer Get(Expression<Func<Customer, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public Task<Customer> GetAsync(Expression<Func<Customer, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Customer> GetAll(Expression<Func<Customer, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Customer> GetAllAsync(Expression<Func<Customer, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public ICollection<Customer> FindAll(Expression<Func<Customer, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public Task<ICollection<Customer>> FindAllAsync(Expression<Func<Customer, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public Task<Customer> FindAsync(Expression<Func<Customer, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public Customer Find(Expression<Func<Customer, bool>> predicate = null)
        {
            throw new NotImplementedException();
        }

        public void Add(Customer entity)
        {
            var inputValue = new SqlParameter
            {
                ParameterName = "@SequenceName",
                SqlDbType = SqlDbType.NVarChar,
                Size = 50,
                Value = SequenceIdentifier.CustomerSequence,
                Direction = ParameterDirection.Input
            };
            var outParam = new SqlParameter
            {
                ParameterName = "@SequenceValue",
                SqlDbType = SqlDbType.Int,
                Direction = ParameterDirection.Output
            };
            var returnCode = new SqlParameter
            {
                ParameterName = "@SequenceOutput",
                SqlDbType = SqlDbType.Int,
                Direction = ParameterDirection.Output
            };

            // assign the return code to the new output parameter and pass it to the sp
            var data =  _context.Database.SqlQuery<int>("exec @SequenceOutput = sp_DemoSequence @SequenceName, @SequenceValue OUT", returnCode, inputValue, outParam).FirstOrDefaultAsync();

            entity.Id = data.Result;
            _context.Customers.AddOrUpdate(entity);
            SaveChanges();
        }

        public void AddAsync(Customer entity)
        {
            entity.Id =
              _context.Database.SqlQuery<int>("SELECT NEXT VALUE FOR dbo.CustomerSequence;").FirstOrDefault();
            _context.Customers.Add(entity);
            _context.SaveChangesAsync();
        }

        public void Update(Customer entity)
        {
            _context.Customers.AddOrUpdate(entity);
            SaveChanges();
        }

        public void UpdateAsync(Customer entity)
        {
            _context.Customers.AddOrUpdate(entity);
            SaveChangesAsync();
        }

        public void Delete(Customer entity)
        {
            _context.Customers.Remove(entity);
        }

        public void DeleteAsync(Customer entity)
        {
            _context.Customers.Remove(entity);
        }

        public long Count()
        {
            return _context.Customers.Count();
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
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Stockfish.DataAccess.Model;

namespace Stockfish.DataAccess.Repository.Interfaces
{
    public interface ICustomerRepository
    {
        void Add(Customer entity);
        void AddAsync(Customer entity);
        long Count();
        void Delete(Customer entity);
        void DeleteAsync(Customer entity);
        Customer Find(Expression<Func<Customer, bool>> predicate = null);
        ICollection<Customer> FindAll(Expression<Func<Customer, bool>> predicate = null);
        Task<ICollection<Customer>> FindAllAsync(Expression<Func<Customer, bool>> predicate = null);
        Task<Customer> FindAsync(Expression<Func<Customer, bool>> predicate = null);
        Customer Get(Expression<Func<Customer, bool>> predicate);
        ICollection<Customer> GetAll();
        IEnumerable<Customer> GetAll(Expression<Func<Customer, bool>> predicate = null);
        ICollection<Customer> GetAllAsync();
        IEnumerable<Customer> GetAllAsync(Expression<Func<Customer, bool>> predicate = null);
        Task<Customer> GetAsync(Expression<Func<Customer, bool>> predicate);
        Customer GetById(int Id);
        Task<Customer> GetByIdAsync(int Id);
        void SaveChanges();
        void SaveChangesAsync();
        void Update(Customer entity);
        void UpdateAsync(Customer entity);
    }
}
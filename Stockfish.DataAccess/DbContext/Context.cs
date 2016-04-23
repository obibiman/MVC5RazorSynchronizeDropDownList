using System.Data.Entity.Core.Objects;
using System.Data.Entity.Infrastructure;
using Stockfish.DataAccess.Model;

namespace Stockfish.DataAccess.DbContext
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Context : DbContext
    {
        public Context()
            : base("name=Context")
        {
        }

        public virtual DbSet<Country> Countries { get; set; }
        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<Salutation> Salutations { get; set; }
        public virtual DbSet<State> States { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Country>()
                .HasMany(e => e.Customers)
                .WithRequired(e => e.Country)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Country>()
                .HasMany(e => e.States)
                .WithRequired(e => e.Country)
                .WillCascadeOnDelete(false);
        }

        public void RefreshContext()
        {
            var ctxt = new Context();
            var context = ((IObjectContextAdapter)ctxt).ObjectContext;
            var refreshableObjects = (from entry in context.ObjectStateManager.GetObjectStateEntries(
                                                       EntityState.Added
                                                       | EntityState.Deleted
                                                       | EntityState.Modified
                                                       | EntityState.Unchanged)
                                      where entry.EntityKey != null
                                      select entry.Entity).ToList();

            context.Refresh(RefreshMode.StoreWins, refreshableObjects);
        }
    }
}

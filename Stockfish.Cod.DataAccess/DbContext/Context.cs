namespace Stockfish.Cod.DataAccess.DbContext
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
    }
}

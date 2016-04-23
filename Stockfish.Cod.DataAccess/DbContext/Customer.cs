namespace Stockfish.Cod.DataAccess.DbContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Customer")]
    public partial class Customer
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? SalutationId { get; set; }

        [StringLength(50)]
        public string FirstName { get; set; }

        [StringLength(50)]
        public string LastName { get; set; }

        [StringLength(200)]
        public string Street1 { get; set; }

        [StringLength(200)]
        public string Street2 { get; set; }

        [StringLength(50)]
        public string City { get; set; }

        [StringLength(25)]
        public string StateCode { get; set; }

        [StringLength(20)]
        public string PostalCode { get; set; }

        [StringLength(25)]
        public string PhoneNumber { get; set; }

        public int CountryId { get; set; }

        public virtual Country Country { get; set; }
    }
}

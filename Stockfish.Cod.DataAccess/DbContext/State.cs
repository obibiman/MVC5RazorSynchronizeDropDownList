namespace Stockfish.Cod.DataAccess.DbContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("State")]
    public partial class State
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        [Required]
        [StringLength(10)]
        public string Code { get; set; }

        public int CountryId { get; set; }

        public virtual Country Country { get; set; }
    }
}

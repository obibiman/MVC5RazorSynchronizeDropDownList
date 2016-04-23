using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Stockfish.DataAccess.Model
{
    [Table("Salutation")]
    public partial class Salutation
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [StringLength(50)]
        public string Name { get; set; }
    }
}

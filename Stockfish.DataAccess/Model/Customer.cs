using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Web.Mvc;

namespace Stockfish.DataAccess.Model
{
    [Table("Customer")]
    public partial class Customer
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Display(Name = "Customer Id")]
        public int Id { get; set; }

        [Display(Name = "Salutation")]
        public int? SalutationId { get; set; }

        [StringLength(50)]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        [StringLength(50)]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }

        [StringLength(200)]
        [Display(Name = "Street 1")]
        public string Street1 { get; set; }

        [StringLength(200)]
        [Display(Name = "Street 2")]
        public string Street2 { get; set; }

        [StringLength(50)]
        [Display(Name = "City")]
        public string City { get; set; }

        [StringLength(25)]
        [Display(Name = "State Code")]
        public string StateCode { get; set; }

        [StringLength(20)]
        [Display(Name = "State/Province")]
        public string PostalCode { get; set; }

        [StringLength(25)]
        [Display(Name = "Telephone Number")]
        public string PhoneNumber { get; set; }

        [Display(Name = "Country Id")]
        public int CountryId { get; set; }

        public virtual Country Country { get; set; }
    }
}

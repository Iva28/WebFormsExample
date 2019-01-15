using System.ComponentModel.DataAnnotations;

namespace WebFormsExample.Services
{
    public class Fruit
    {
        public int Id { get; set; }

        [Required(AllowEmptyStrings =false)]
        public string Title { get; set; }

        [Required]
        [Range(0.1, 999.99)]
        public double Price { get; set; }
    }
}
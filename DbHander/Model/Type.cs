using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Runtime.CompilerServices;
using System.Text;

namespace DBHander
{
   public class Type : BaseModel
    {
        public int TypeId { get; set; }
        [Required(ErrorMessage = "this field is required")]
        public string Name { get; set; }
        [Required(ErrorMessage = "this field is required")]
        public string Description { get; set; }
    }
}

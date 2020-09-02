using System;
using System.Collections.Generic;
using System.Text;

namespace DBHander
{
   public class Property : BaseModel
    {
        public int PropertyId { get; set; }
        public string Description { get; set; }
        public int AddressId { get; set; }
        public int TypeId { get; set; }
        public string UserId { get; set; }
        public decimal Prize { get; set; }
        public int Room { get; set; }

    }
}

using System;
using System.Collections.Generic;
using System.Text;

namespace DBHander
{
   public class Address : BaseModel
    {
        public int AddressId { get; set; }
        public int HouseNumber { get; set; }
        public string Street { get; set; }
        public int UnitNumber { get; set; }
        public string PostalCode { get; set; }
        public int CityId { get; set; }

    }
}

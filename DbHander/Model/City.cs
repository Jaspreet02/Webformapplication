using System;
using System.Collections.Generic;
using System.Text;

namespace DBHander
{
   public    class City : BaseModel
    {
        public int CityId { get; set; }
        public string Name { get; set; }
        public int StateId { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Text;

namespace DBHander
{
   public class State : BaseModel
    {
        public int StateId { get; set; }
        public string Name { get; set; }
        public string code { get; set; }
    }
}

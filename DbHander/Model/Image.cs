using System;
using System.Collections.Generic;
using System.Text;

namespace DBHander
{
   public    class Image : BaseModel
    {
        public int ImageId { get; set; }
        public string Path { get; set; }
        public string Name { get; set; }
        public int PropertyId { get; set; }
    }
}

using System;
using System.Collections.Generic;

namespace Focus.scafold
{
    public partial class Location
    {
        public Location()
        {
            Focus = new HashSet<Focus>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Province { get; set; }

        public ICollection<Focus> Focus { get; set; }
    }
}

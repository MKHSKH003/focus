using System;
using System.Collections.Generic;

namespace Focus.scafold
{
    public partial class Focus
    {
        public int Id { get; set; }
        public int LocationId { get; set; }
        public DateTime AddedDateTime { get; set; }
        public int Loads { get; set; }
        public int AddedByUserId { get; set; }

        public User AddedByUser { get; set; }
        public Location Location { get; set; }
    }
}

using System;
using System.Collections.Generic;

namespace Focus.scafold
{
    public partial class User
    {
        public User()
        {
            Focus = new HashSet<Focus>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public int PositionId { get; set; }
        public string Password { get; set; }

        public ICollection<Focus> Focus { get; set; }
    }
}

using System;

namespace Focus.Models
{
    public partial class Data
    {
        public int Id { get; set; }
        public int LocationId { get; set; }
        public string Location { get; set; }
        public DateTime AddedDateTime { get; set; }
        public int Loads { get; set; }
        public string AddedByUser { get; set; }
        public int AddedByUserId { get; set; }
    }
}

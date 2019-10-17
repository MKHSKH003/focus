using System;
using System.Collections.Generic;

namespace Focus.scafold
{
    public partial class Grade
    {
        public Grade()
        {
            ExamPaper = new HashSet<ExamPaper>();
        }

        public int Id { get; set; }
        public string Description { get; set; }

        public ICollection<ExamPaper> ExamPaper { get; set; }
    }
}

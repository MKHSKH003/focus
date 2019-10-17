using System.Collections.Generic;

namespace Focus.Entities
{
    public class Grade
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

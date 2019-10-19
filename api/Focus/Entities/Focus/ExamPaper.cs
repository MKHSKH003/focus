namespace Focus.Entities
{
    public class ExamPaper
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Url { get; set; }
        public int GradeId { get; set; }

        public Grade Grade { get; set; }
    }
}

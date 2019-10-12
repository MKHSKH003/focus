using Focus.Entities;
using Focus.Models;
using System.Collections.Generic;

namespace Focus.Services.ExamPapers
{
    public interface IExamPapersService
    {
        IEnumerable<ExamPaper> GetExamPapers();
        ExamPaper AddExamPaper(ExamPaper examPaper);
    }
}

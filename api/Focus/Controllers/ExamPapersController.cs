using Focus.Entities;
using Focus.Models;
using Focus.Services.ExamPapers;
using Focus.Services.Login;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace Focus.Controllers
{
    [Route("api/exam-papers")]
    [ApiController]
    public class ExamPapersController : ControllerBase
    {
        private readonly IExamPapersService _examPapersService;
        public ExamPapersController(IExamPapersService examPapersService)
        {
            _examPapersService = examPapersService;
        }

        [HttpGet]
        public IEnumerable<ExamPaper> GetExamPapers()
        {
            return _examPapersService.GetExamPapers();
        }

        [HttpPost]
        public ExamPaper AddExamPaper(ExamPaper examPaper)
        {
           return _examPapersService.AddExamPaper(examPaper);
        }
    }
}

using Focus.Entities;
using Focus.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Focus.Services.ExamPapers
{
    public class ExamPapersService : IExamPapersService
    {
        private readonly Context _focusDbContext;
        private readonly ICipherService _cipherService;

        public ExamPapersService(Context focusDbContext, ICipherService cipherService)
        {
            _focusDbContext = focusDbContext;
            _cipherService = cipherService;
        }

        public IEnumerable<ExamPaper> GetExamPapers()
        {
            return _focusDbContext.ExamPapers;
        }

        public ExamPaper AddExamPaper(ExamPaper examPaper)
        {
            var dbExamPaper = new ExamPaper()
            {
                Name = examPaper.Name,
                Url = examPaper.Url
            };

            _focusDbContext.Add(dbExamPaper);
            _focusDbContext.SaveChanges();

            return dbExamPaper;
        }

    }
}

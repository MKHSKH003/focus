export const postExamPaper = (baseUrl, examPaper) =>
    fetch(baseUrl,
        {
            method: 'POST',
            body: JSON.stringify(examPaper),
            headers: {
                'Content-Type': 'application/json'
            }
        })
        .then(response => response.json())
        .then(data => data)

export const getExamPapers = (baseUrl) =>
    fetch(baseUrl)
        .then(response => response.json())
        .then(examPapers => examPapers);

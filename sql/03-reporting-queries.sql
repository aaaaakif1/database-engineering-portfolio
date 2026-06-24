-- Query 1: application tracking with student, posting and company details
SELECT s.first_name || ' ' || s.last_name AS student_name,
       jp.title,
       c.company_name,
       a.status,
       a.application_date
FROM applications a
JOIN students s ON a.student_id = s.student_id
JOIN job_postings jp ON a.posting_id = jp.posting_id
JOIN companies c ON jp.company_id = c.company_id
ORDER BY a.application_date;

-- Query 2: number of applications per job posting, including zero-application postings
SELECT jp.title,
       COUNT(a.application_id) AS total_applications
FROM job_postings jp
LEFT JOIN applications a ON jp.posting_id = a.posting_id
GROUP BY jp.posting_id, jp.title
ORDER BY total_applications DESC, jp.title;

-- Query 3: interview schedule and outcomes
SELECT s.first_name || ' ' || s.last_name AS student_name,
       jp.title,
       i.interview_date,
       i.interview_time,
       i.outcome
FROM interviews i
JOIN applications a ON i.application_id = a.application_id
JOIN students s ON a.student_id = s.student_id
JOIN job_postings jp ON a.posting_id = jp.posting_id
ORDER BY i.interview_date, i.interview_time;

-- Query 4: accepted offers for placement-success reporting
SELECT s.first_name || ' ' || s.last_name AS student_name,
       jp.title,
       c.company_name,
       o.salary,
       o.start_date
FROM offers o
JOIN interviews i ON o.interview_id = i.interview_id
JOIN applications a ON i.application_id = a.application_id
JOIN students s ON a.student_id = s.student_id
JOIN job_postings jp ON a.posting_id = jp.posting_id
JOIN companies c ON jp.company_id = c.company_id
WHERE o.accepted = 'Y'
ORDER BY o.start_date;

-- Query 5: total offers made by each company
SELECT c.company_name,
       COUNT(o.offer_id) AS total_offers
FROM companies c
JOIN job_postings jp ON c.company_id = jp.company_id
JOIN applications a ON jp.posting_id = a.posting_id
JOIN interviews i ON a.application_id = i.application_id
JOIN offers o ON i.interview_id = o.interview_id
GROUP BY c.company_id, c.company_name
ORDER BY total_offers DESC, c.company_name;

-- Query 6: average GPA of students who accepted offers
SELECT ROUND(AVG(s.gpa), 2) AS average_gpa
FROM offers o
JOIN interviews i ON o.interview_id = i.interview_id
JOIN applications a ON i.application_id = a.application_id
JOIN students s ON a.student_id = s.student_id
WHERE o.accepted = 'Y';

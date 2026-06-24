-- Privacy-focused summary view for placement staff.
-- Email addresses and GPA values are deliberately excluded.
CREATE OR REPLACE VIEW vw_applications_summary AS
SELECT s.first_name || ' ' || s.last_name AS student_name,
       jp.title,
       c.company_name,
       a.status,
       a.application_date
FROM applications a
JOIN students s ON a.student_id = s.student_id
JOIN job_postings jp ON a.posting_id = jp.posting_id
JOIN companies c ON jp.company_id = c.company_id;

-- Synthetic portfolio data. Names and contact details are fictional.

INSERT INTO students VALUES
    (10001, 'Alex', 'Morgan', 'alex.morgan@example.edu', 'Computer Science', 3.40);
INSERT INTO students VALUES
    (10002, 'Maya', 'Singh', 'maya.singh@example.edu', 'Information Technology', 3.10);
INSERT INTO students VALUES
    (10003, 'Jake', 'Brown', 'jake.brown@example.edu', 'Software Engineering', 2.85);
INSERT INTO students VALUES
    (10004, 'Samira', 'Khan', 'samira.khan@example.edu', 'Cyber Security', 3.65);
INSERT INTO students VALUES
    (10005, 'Daniel', 'Lee', 'daniel.lee@example.edu', 'Data Science', 3.25);

INSERT INTO companies VALUES
    (20001, 'TechFuture Ltd', 'careers@techfuture.example', 'London', 'Y');
INSERT INTO companies VALUES
    (20002, 'InnovaSoft', 'jobs@innovasoft.example', 'Manchester', 'Y');
INSERT INTO companies VALUES
    (20003, 'DataWorks Group', 'placements@dataworks.example', 'Birmingham', 'N');

INSERT INTO job_postings VALUES
    (30001, 20001, 'Software Engineering Intern', 'I', 'Computer Science student; GPA 3.0 or above', TO_DATE('30-JUL-2025', 'DD-MON-YYYY'));
INSERT INTO job_postings VALUES
    (30002, 20002, 'Junior Developer', 'J', 'Final-year student; SQL and Java', TO_DATE('20-AUG-2025', 'DD-MON-YYYY'));
INSERT INTO job_postings VALUES
    (30003, 20001, 'Cyber Security Intern', 'I', 'Networking and Linux fundamentals', TO_DATE('15-AUG-2025', 'DD-MON-YYYY'));
INSERT INTO job_postings VALUES
    (30004, 20002, 'Data Analyst Intern', 'I', 'SQL and data visualisation', TO_DATE('25-AUG-2025', 'DD-MON-YYYY'));

INSERT INTO applications VALUES
    (40001, 10001, 30001, TO_DATE('01-JUL-2025', 'DD-MON-YYYY'), 'Applied');
INSERT INTO applications VALUES
    (40002, 10002, 30002, TO_DATE('03-JUL-2025', 'DD-MON-YYYY'), 'Shortlisted');
INSERT INTO applications VALUES
    (40003, 10004, 30003, TO_DATE('04-JUL-2025', 'DD-MON-YYYY'), 'Shortlisted');
INSERT INTO applications VALUES
    (40004, 10005, 30001, TO_DATE('05-JUL-2025', 'DD-MON-YYYY'), 'Rejected');
INSERT INTO applications VALUES
    (40005, 10001, 30003, TO_DATE('06-JUL-2025', 'DD-MON-YYYY'), 'Shortlisted');
INSERT INTO applications VALUES
    (40006, 10003, 30004, TO_DATE('07-JUL-2025', 'DD-MON-YYYY'), 'Shortlisted');
INSERT INTO applications VALUES
    (40007, 10002, 30004, TO_DATE('08-JUL-2025', 'DD-MON-YYYY'), 'Rejected');

INSERT INTO interviews VALUES
    (50001, 40002, TO_DATE('15-JUL-2025', 'DD-MON-YYYY'), '10:00', 'Passed');
INSERT INTO interviews VALUES
    (50002, 40003, TO_DATE('16-JUL-2025', 'DD-MON-YYYY'), '13:30', 'Passed');
INSERT INTO interviews VALUES
    (50003, 40005, TO_DATE('18-JUL-2025', 'DD-MON-YYYY'), '14:30', 'Pending');
INSERT INTO interviews VALUES
    (50004, 40006, TO_DATE('21-JUL-2025', 'DD-MON-YYYY'), '09:30', 'Failed');

INSERT INTO offers VALUES
    (60001, 50001, TO_DATE('16-JUL-2025', 'DD-MON-YYYY'), TO_DATE('01-SEP-2025', 'DD-MON-YYYY'), 26000.00, 'Y');
INSERT INTO offers VALUES
    (60002, 50002, TO_DATE('17-JUL-2025', 'DD-MON-YYYY'), TO_DATE('08-SEP-2025', 'DD-MON-YYYY'), 28000.00, 'Y');

COMMIT;

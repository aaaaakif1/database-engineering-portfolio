-- Constraint checks for manual testing in a disposable Oracle schema.
-- Each block is expected to fail. Run one at a time, then ROLLBACK.

-- Duplicate student email should fail (uq_students_email).
-- INSERT INTO students VALUES
--     (10006, 'Test', 'User', 'alex.morgan@example.edu', 'Computing', 3.00);

-- GPA outside the accepted range should fail (ck_students_gpa).
-- INSERT INTO students VALUES
--     (10006, 'Test', 'User', 'test.user@example.edu', 'Computing', 4.50);

-- Duplicate application to the same posting should fail (uq_student_posting).
-- INSERT INTO applications VALUES
--     (40008, 10001, 30001, SYSDATE, 'Applied');

-- Unsupported application status should fail (ck_applications_status).
-- INSERT INTO applications VALUES
--     (40008, 10003, 30002, SYSDATE, 'Maybe');

-- A second offer for the same interview should fail (uq_offer_interview).
-- INSERT INTO offers VALUES
--     (60003, 50001, SYSDATE, NULL, 25000, 'N');

ROLLBACK;

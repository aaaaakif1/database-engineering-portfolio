-- Oracle SQL portfolio reconstruction
-- University Placement Tracking Database

CREATE TABLE students (
    student_id      NUMBER(5),
    first_name      VARCHAR2(50)  NOT NULL,
    last_name       VARCHAR2(50)  NOT NULL,
    email           VARCHAR2(100) NOT NULL,
    degree_program  VARCHAR2(100) NOT NULL,
    gpa             NUMBER(3,2)   NOT NULL,
    CONSTRAINT pk_students PRIMARY KEY (student_id),
    CONSTRAINT uq_students_email UNIQUE (email),
    CONSTRAINT ck_students_gpa CHECK (gpa BETWEEN 2.00 AND 4.00)
);

CREATE TABLE companies (
    company_id      NUMBER(5),
    company_name    VARCHAR2(80)  NOT NULL,
    contact_email   VARCHAR2(100) NOT NULL,
    location        VARCHAR2(80)  NOT NULL,
    verified        CHAR(1) DEFAULT 'N' NOT NULL,
    CONSTRAINT pk_companies PRIMARY KEY (company_id),
    CONSTRAINT uq_companies_email UNIQUE (contact_email),
    CONSTRAINT ck_companies_verified CHECK (verified IN ('Y', 'N'))
);

CREATE TABLE job_postings (
    posting_id      NUMBER(5),
    company_id      NUMBER(5)     NOT NULL,
    title           VARCHAR2(100) NOT NULL,
    posting_type    CHAR(1)       NOT NULL,
    requirements    VARCHAR2(500),
    closing_date    DATE          NOT NULL,
    CONSTRAINT pk_job_postings PRIMARY KEY (posting_id),
    CONSTRAINT fk_job_postings_company
        FOREIGN KEY (company_id) REFERENCES companies(company_id),
    CONSTRAINT ck_job_postings_type CHECK (posting_type IN ('J', 'I'))
);

CREATE TABLE applications (
    application_id   NUMBER(5),
    student_id       NUMBER(5)     NOT NULL,
    posting_id       NUMBER(5)     NOT NULL,
    application_date DATE          NOT NULL,
    status           VARCHAR2(15)  NOT NULL,
    CONSTRAINT pk_applications PRIMARY KEY (application_id),
    CONSTRAINT fk_applications_student
        FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_applications_posting
        FOREIGN KEY (posting_id) REFERENCES job_postings(posting_id),
    CONSTRAINT uq_student_posting UNIQUE (student_id, posting_id),
    CONSTRAINT ck_applications_status
        CHECK (status IN ('Applied', 'Shortlisted', 'Rejected', 'Withdrawn'))
);

CREATE TABLE interviews (
    interview_id     NUMBER(5),
    application_id   NUMBER(5)    NOT NULL,
    interview_date   DATE         NOT NULL,
    interview_time   VARCHAR2(5)  NOT NULL,
    outcome          VARCHAR2(15) DEFAULT 'Pending' NOT NULL,
    CONSTRAINT pk_interviews PRIMARY KEY (interview_id),
    CONSTRAINT fk_interviews_application
        FOREIGN KEY (application_id) REFERENCES applications(application_id),
    CONSTRAINT ck_interviews_outcome
        CHECK (outcome IN ('Passed', 'Failed', 'Pending', 'Cancelled'))
);

CREATE TABLE offers (
    offer_id          NUMBER(5),
    interview_id      NUMBER(5)   NOT NULL,
    offer_date        DATE        NOT NULL,
    start_date        DATE,
    salary            NUMBER(9,2),
    accepted          CHAR(1) DEFAULT 'N' NOT NULL,
    CONSTRAINT pk_offers PRIMARY KEY (offer_id),
    CONSTRAINT fk_offers_interview
        FOREIGN KEY (interview_id) REFERENCES interviews(interview_id),
    CONSTRAINT uq_offer_interview UNIQUE (interview_id),
    CONSTRAINT ck_offers_salary CHECK (salary IS NULL OR salary >= 0),
    CONSTRAINT ck_offers_accepted CHECK (accepted IN ('Y', 'N')),
    CONSTRAINT ck_offers_dates CHECK (start_date IS NULL OR start_date >= offer_date)
);

CREATE INDEX idx_job_postings_company ON job_postings(company_id);
CREATE INDEX idx_applications_student ON applications(student_id);
CREATE INDEX idx_applications_posting ON applications(posting_id);
CREATE INDEX idx_interviews_application ON interviews(application_id);

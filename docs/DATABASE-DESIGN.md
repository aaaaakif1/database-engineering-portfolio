# Database Design

## Entities

| Entity | Responsibility |
|---|---|
| `students` | Stores placement-eligible student details. |
| `companies` | Stores registered employer details and verification status. |
| `job_postings` | Stores jobs and internships published by companies. |
| `applications` | Connects one student to one posting and records progress. |
| `interviews` | Records interview scheduling and outcomes for applications. |
| `offers` | Records an offer produced from a specific interview. |

## Relationships

- One student can create many applications.
- One company can own many job postings.
- One job posting can receive many applications.
- One application can have multiple interview records.
- One interview can produce zero or one offer.

![Corrected ER diagram](../assets/diagrams/corrected-er-diagram.svg)

## Key Design Decisions

### Surrogate numeric identifiers

Each table uses a numeric primary key. These identifiers remain stable even when descriptive information such as names, titles or email addresses changes.

### Unique student-posting pair

`UNIQUE (student_id, posting_id)` prevents duplicate submissions for the same opportunity while still allowing a student to apply for other roles.

### Offer-to-interview uniqueness

`UNIQUE (interview_id)` prevents multiple offer records from being attached to one interview.

### Synthetic public data

The public scripts use invented names and reserved example domains. This preserves the relational behaviour without publishing student records or university credentials.

## Limitations

The original coursework described rules that cannot be enforced using a simple row-level check constraint. Verification before posting and one final accepted offer per student are documented as future trigger or application-service controls rather than falsely claimed as fully enforced.

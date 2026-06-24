# Normalisation

## First Normal Form (1NF)

Each table has a primary key and each column stores one atomic value. Repeating lists, such as several applications inside a student row, are replaced by separate rows in `applications`.

## Second Normal Form (2NF)

The tables use single-column primary keys, so every non-key attribute depends on the whole primary key. The composite uniqueness rule in `applications` prevents duplicate student-posting pairs but is not used as the table's primary key.

## Third Normal Form (3NF)

Descriptive facts are stored with the entity they describe:

- Company names and contact details exist only in `companies`.
- Posting titles and closing dates exist only in `job_postings`.
- Student names, email addresses and degree programmes exist only in `students`.
- Application status exists in `applications` rather than being repeated in interviews or offers.
- Offer salary and start date exist in `offers` rather than the application row.

This removes transitive duplication. For example, an application stores a `posting_id`, not another copy of the company name. The company can be reached through the posting relationship when a report needs it.

## Result

The model is suitable for transactional placement tracking because updates occur in one place. Changing a company name does not require every application row to be rewritten, and deleting an invalid duplicate description cannot leave conflicting copies elsewhere.

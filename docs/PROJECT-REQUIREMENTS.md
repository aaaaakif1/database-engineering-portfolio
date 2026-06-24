# Project Requirements and Business Rules

## Purpose

The system supports a university placement office by recording students, verified employers, job or internship postings, applications, interviews and offers.

## Reconstructed Business Rules

1. A student may apply to multiple job postings.
2. A company may publish multiple job postings.
3. Each application belongs to exactly one student and one posting.
4. A student may not submit duplicate applications to the same posting.
5. An application may progress to one or more interview records.
6. An interview may produce no offer or one offer.
7. A company should be verified before a posting is published.
8. Placement officers update application, interview and offer outcomes.
9. Reports must support application volume, interview progress, offers and placement success.
10. Student email addresses and GPA values should not be exposed in routine summary reports unless required.

## Enforcement Boundary

Primary keys, foreign keys, unique constraints and check constraints enforce rules that depend on one row or direct relationships. Rules requiring a lookup across several tables, such as allowing only verified companies to publish and preventing more than one final accepted offer for a student, require a trigger or application-layer transaction.

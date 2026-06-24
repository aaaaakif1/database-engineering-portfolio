# Testing and Results

## Original Oracle APEX Evidence

The completed coursework included Oracle APEX screenshots showing successful table creation, sample-data insertion and query execution. Public copies have been cropped to remove browser session details and account information.

- [Schema creation output](../assets/original-evidence/schema-creation-output.jpg)
- [Sample-data output](../assets/original-evidence/sample-data-output.jpg)
- [Average GPA query output](../assets/original-evidence/average-gpa-query-output.jpg)

## Portfolio Validation

The university APEX workspace is no longer available. An in-memory SQLite mirror therefore validates the relational logic and expected reporting values without being presented as replacement Oracle evidence.

Run:

```bash
python tests/validate_queries.py
```

Expected result:

```text
Validation passed: {'application_count': 7, 'interview_count': 4, 'accepted_offer_count': 2, 'average_placed_gpa': 3.38}
```

## Negative Tests

[`sql/05-constraint-tests.sql`](../sql/05-constraint-tests.sql) contains deliberately invalid statements for checking:

- duplicate email rejection
- GPA range rejection
- duplicate application rejection
- unsupported status rejection
- duplicate offer-per-interview rejection

The statements are commented so a reader cannot accidentally corrupt a shared schema by running the entire file.

## Evidence Boundary

The original screenshots show that the coursework SQL ran in Oracle APEX. The clean diagrams, expanded dataset, CSV outputs and SQLite harness were created later for portfolio preservation and are labelled accordingly.

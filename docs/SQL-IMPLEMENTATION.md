# SQL Implementation

## Oracle Dialect

The public SQL files use Oracle-compatible types and functions, including `NUMBER`, `VARCHAR2`, `DATE` and `TO_DATE`.

## Script Order

1. Run [`01-schema.sql`](../sql/01-schema.sql).
2. Run [`02-sample-data.sql`](../sql/02-sample-data.sql).
3. Run [`04-summary-view.sql`](../sql/04-summary-view.sql).
4. Run queries from [`03-reporting-queries.sql`](../sql/03-reporting-queries.sql).
5. Test rejected records from [`05-constraint-tests.sql`](../sql/05-constraint-tests.sql) one at a time in a disposable schema.

## Constraint Categories

- **Primary keys** identify every record.
- **Foreign keys** preserve the placement lifecycle.
- **Unique constraints** protect emails and duplicate applications.
- **Check constraints** validate GPA, verification flags, posting types, statuses, outcomes, salaries and accepted-offer flags.
- **Not-null constraints** prevent incomplete core records.

## Indexes

Indexes are included for the principal foreign-key columns used in joins. In a production system, further indexes should be added only after reviewing real query plans, selectivity and workload rather than collecting indexes as decorative database furniture.

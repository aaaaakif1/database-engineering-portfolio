# SQL Folder

The scripts are separated so the model can be reviewed and executed in a predictable order.

| File | Purpose |
|---|---|
| `01-schema.sql` | Creates tables, relationships, constraints and supporting indexes. |
| `02-sample-data.sql` | Inserts synthetic data for portfolio demonstrations. |
| `03-reporting-queries.sql` | Contains six operational and management reports. |
| `04-summary-view.sql` | Creates a privacy-focused application summary view. |
| `05-constraint-tests.sql` | Provides deliberately invalid statements for negative testing. |

These are Oracle-oriented scripts. The `tests` folder contains a separate SQLite mirror used only for offline logic validation.

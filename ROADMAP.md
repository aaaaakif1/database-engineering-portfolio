# Roadmap

## Completed in This Portfolio Reconstruction

- [x] Remove exposed account credentials and student identifiers
- [x] Correct the entity relationship model
- [x] Standardise table and column naming
- [x] Strengthen nullability and validation constraints
- [x] Prevent duplicate applications to the same posting
- [x] Ensure one offer is linked to no more than one interview
- [x] Replace personal sample details with synthetic data
- [x] Separate schema, data, queries, views and tests into reusable SQL files
- [x] Preserve sanitised Oracle APEX evidence
- [x] Generate portfolio diagrams and reporting outputs
- [x] Add an offline validation harness
- [x] Rewrite the documentation for technical and non-technical readers

## Next: Oracle Rebuild

- [ ] Recreate the schema in a personal Oracle Free or Oracle APEX workspace
- [ ] Run all Oracle scripts from a clean schema
- [ ] Capture fresh high-resolution table and query evidence
- [ ] Export the final schema using Oracle tooling
- [ ] Record an end-to-end demonstration video

## Data and Security Improvements

- [ ] Add authenticated user roles for students, placement officers and company staff
- [ ] Enforce verified-company posting rules with a trigger or application service
- [ ] Prevent multiple final accepted offers for one student with a trigger or workflow rule
- [ ] Store interview scheduling as a single timestamp
- [ ] Add audit fields such as `created_at`, `updated_at` and `updated_by`
- [ ] Add an audit log for status and offer changes
- [ ] Apply least-privilege grants to views and tables
- [ ] Add retention and deletion rules for personal data

## Reporting Improvements

- [ ] Add placement conversion rates by company and degree programme
- [ ] Add application ageing and closing-date reports
- [ ] Add dashboard-ready summary views
- [ ] Add indexes after reviewing real execution plans and data volumes

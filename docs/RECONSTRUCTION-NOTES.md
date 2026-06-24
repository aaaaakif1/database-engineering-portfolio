# Reconstruction Notes

The original coursework contained a working Oracle SQL implementation and useful APEX evidence, but several parts needed correction before public portfolio use.

## Corrections

1. **Credentials and identifiers removed**
   - The original report exposed a student number, university email address, workspace name and plaintext password.
   - None of those values are included in the public repository.

2. **Entity relationship diagram corrected**
   - The original image duplicated `Company`, omitted `Interview` and placed several attributes under the wrong entities.
   - The corrected diagram follows the SQL tables and written business rules.

3. **Naming standardised**
   - Public scripts use consistent plural table names and `snake_case` columns.

4. **Relationships strengthened**
   - Foreign-key columns required for the lifecycle are `NOT NULL`.
   - Duplicate student-posting applications are blocked.
   - One interview cannot receive multiple offer rows.

5. **Validation expanded**
   - Status, interview outcome, GPA, salary and accepted-offer values are constrained.

6. **Personal sample data replaced**
   - The public dataset is synthetic and uses reserved example domains.

7. **Evidence labelled precisely**
   - Cropped Oracle APEX images are authentic screenshots from the completed coursework.
   - Clean diagrams, expanded data, CSV outputs and the SQLite harness were generated during portfolio reconstruction.

## Preserved Limitation

The business rule that a student may receive only one final accepted offer requires a cross-table trigger or application transaction. It is documented on the roadmap rather than falsely represented as enforced by the current table constraints.

## Scope

This repository is a portfolio reconstruction based on the completed university project. It is not presented as the original assessed submission.

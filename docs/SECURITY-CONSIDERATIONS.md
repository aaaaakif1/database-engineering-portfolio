# Security Considerations

## Data Minimisation

The summary view excludes student email addresses and GPA values. Routine placement reporting should expose only the information required for the task.

## Integrity Controls

Primary keys, foreign keys, uniqueness rules and validation constraints reduce accidental corruption. They do not replace authorisation, audit logging or secure application code.

## Access Control

A production deployment should separate permissions for:

- students viewing and updating their own applications
- company users managing their own postings
- placement officers managing interviews and outcomes
- administrators managing verification and access

Users should receive access to approved views or procedures rather than broad direct permissions on every table.

## Input Validation

Oracle APEX form validation should complement database constraints. Applications should use bind variables and framework-managed queries rather than constructing SQL from untrusted text.

## Credential Hygiene

The original coursework document contained university account information and a plaintext password. Those values are excluded from this repository. Credentials should never be stored in reports, screenshots, source control or example configuration files.

## Privacy and Retention

Student records can contain personal and educational data. A real deployment should define a lawful purpose, retention period, deletion process, audit trail and incident-response procedure consistent with organisational policy and UK data-protection obligations.

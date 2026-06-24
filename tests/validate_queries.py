"""Validate the portfolio query logic against an in-memory SQLite mirror.

The production scripts in ../sql use Oracle syntax. This lightweight harness
recreates the same relational model using SQLite so the reporting logic can be
checked without access to the retired university Oracle APEX workspace.
"""
from pathlib import Path
import sqlite3

ROOT = Path(__file__).resolve().parent
SCHEMA = (ROOT / "sqlite-schema.sql").read_text(encoding="utf-8")
DATA = (ROOT / "sqlite-sample-data.sql").read_text(encoding="utf-8")

QUERIES = {
    "application_count": "SELECT COUNT(*) FROM applications",
    "interview_count": "SELECT COUNT(*) FROM interviews",
    "accepted_offer_count": "SELECT COUNT(*) FROM offers WHERE accepted = 'Y'",
    "average_placed_gpa": """
        SELECT ROUND(AVG(s.gpa), 2)
        FROM offers o
        JOIN interviews i ON o.interview_id = i.interview_id
        JOIN applications a ON i.application_id = a.application_id
        JOIN students s ON a.student_id = s.student_id
        WHERE o.accepted = 'Y'
    """,
}

conn = sqlite3.connect(":memory:")
conn.execute("PRAGMA foreign_keys = ON")
conn.executescript(SCHEMA)
conn.executescript(DATA)

actual = {name: conn.execute(sql).fetchone()[0] for name, sql in QUERIES.items()}
expected = {
    "application_count": 7,
    "interview_count": 4,
    "accepted_offer_count": 2,
    "average_placed_gpa": 3.38,
}

assert actual == expected, f"Unexpected results: {actual}"
print("Validation passed:", actual)

# Definition – user_consents

Captured consents per user and version.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| user_id | BIGINT UNSIGNED | NO | — | User (FK users.id). |  |
| consent_type | VARCHAR(50) | NO | — | Consent type key. |  |
| version | VARCHAR(50) | NO | — | Document/policy version string. |  |
| granted | BOOLEAN | NO | — | Granted flag (true/false). |  |
| granted_at | DATETIME(6) | NO | — | When consent was recorded (UTC). |  |
| source | VARCHAR(100) | YES | — | Source (e.g., web, import). |  |
| meta | JSON | YES | — | JSON meta (IP, UA, doc hash). |  |

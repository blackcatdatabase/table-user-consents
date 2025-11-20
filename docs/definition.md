<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – user_consents

Captured consents per user and version. UNIQUE (user_id, consent_type, version).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| user_id | BIGINT | NO | — | User (FK users.id). |  |
| consent_type | VARCHAR(50) | NO | — | Consent type key. |  |
| version | VARCHAR(50) | NO | — | Document/policy version string. |  |
| granted | BOOLEAN | NO | — | Granted flag (true/false). |  |
| granted_at | TIMESTAMPTZ(6) | NO | — | When consent was recorded (UTC). |  |
| source | VARCHAR(100) | YES | — | Source (e.g., web, import). |  |
| meta | JSONB | YES | — | JSON meta (IP, UA, doc hash). |  |
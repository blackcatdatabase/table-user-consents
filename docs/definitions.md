# user_consents

Captured consents per user and version. UNIQUE (user_id, consent_type, version).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| consent_type | VARCHAR(50) | NO |  | Consent type key. |
| granted | BOOLEAN | NO |  | Granted flag (true/false). |
| granted_at | DATETIME(6) | NO |  | When consent was recorded (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| meta | JSON | YES |  | JSON meta (IP, UA, doc hash). |
| source | VARCHAR(100) | YES |  | Source (e.g., web, import). |
| user_id | BIGINT | NO |  | User (FK users.id). |
| version | VARCHAR(50) | NO |  | Document/policy version string. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_user_consents | user_id, consent_type, version |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_user_consents_user | user_id | CREATE INDEX idx_user_consents_user ON user_consents (user_id) |
| ux_user_consents | user_id,consent_type,version | CREATE UNIQUE INDEX ux_user_consents ON user_consents (user_id, consent_type, version) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_user_consents_user | user_id | users(id) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_user_consents | user_id, consent_type, version |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_user_consents_user | user_id | CREATE INDEX IF NOT EXISTS idx_user_consents_user ON user_consents (user_id) |
| ux_user_consents | user_id,consent_type,version | CREATE UNIQUE INDEX IF NOT EXISTS ux_user_consents ON user_consents (user_id, consent_type, version) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_user_consents_user | user_id | users(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_user_consents | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_user_consents | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |

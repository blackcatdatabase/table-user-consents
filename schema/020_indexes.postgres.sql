-- Auto-generated from schema-map-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  user_consents

CREATE INDEX IF NOT EXISTS idx_user_consents_user ON user_consents (user_id);

CREATE UNIQUE INDEX IF NOT EXISTS ux_user_consents ON user_consents (user_id, consent_type, version);

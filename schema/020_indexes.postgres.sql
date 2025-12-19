-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  user_consents

CREATE INDEX IF NOT EXISTS idx_user_consents_user ON user_consents (user_id);

CREATE UNIQUE INDEX IF NOT EXISTS ux_user_consents ON user_consents (user_id, consent_type, version);

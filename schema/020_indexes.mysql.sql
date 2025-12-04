-- Auto-generated from schema-map-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  user_consents

CREATE INDEX idx_user_consents_user ON user_consents (user_id);

CREATE UNIQUE INDEX ux_user_consents ON user_consents (user_id, consent_type, version);

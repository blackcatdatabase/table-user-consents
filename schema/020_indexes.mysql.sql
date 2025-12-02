-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  user_consents

CREATE INDEX idx_user_consents_user ON user_consents (user_id);

CREATE UNIQUE INDEX ux_user_consents ON user_consents (user_id, consent_type, version);

-- Auto-generated from schema-map-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  user_consents
CREATE INDEX idx_user_consents_user ON user_consents (user_id);

CREATE UNIQUE INDEX ux_user_consents ON user_consents (user_id, consent_type, version);

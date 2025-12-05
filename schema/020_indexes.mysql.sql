-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  user_consents

CREATE INDEX idx_user_consents_user ON user_consents (user_id);

CREATE UNIQUE INDEX ux_user_consents ON user_consents (user_id, consent_type, version);

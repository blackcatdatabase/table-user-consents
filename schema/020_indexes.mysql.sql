-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  user_consents

CREATE INDEX idx_user_consents_user ON user_consents (user_id);

CREATE UNIQUE INDEX ux_user_consents ON user_consents (user_id, consent_type, version);

-- Auto-generated from schema-map.psd1 (map@6cefe8e)
-- table: user_consents
ALTER TABLE user_consents ADD CONSTRAINT fk_user_consents_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

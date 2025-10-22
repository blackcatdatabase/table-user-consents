-- Auto-generated from schema-map.psd1 (map@1e83bb6)
-- table: user_consents
ALTER TABLE user_consents ADD CONSTRAINT fk_user_consents_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

-- Auto-generated from schema-map-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  user_consents
ALTER TABLE user_consents ADD CONSTRAINT fk_user_consents_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

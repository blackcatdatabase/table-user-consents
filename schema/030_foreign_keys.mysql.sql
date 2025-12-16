-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  user_consents

ALTER TABLE user_consents ADD CONSTRAINT fk_user_consents_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

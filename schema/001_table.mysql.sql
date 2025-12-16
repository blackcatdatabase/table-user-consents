-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  user_consents

CREATE TABLE IF NOT EXISTS user_consents (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  user_id BIGINT UNSIGNED NOT NULL,
  consent_type VARCHAR(50) NOT NULL,
  version VARCHAR(50) NOT NULL,
  granted BOOLEAN NOT NULL,
  granted_at DATETIME(6) NOT NULL,
  source VARCHAR(100) NULL,
  meta JSON NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

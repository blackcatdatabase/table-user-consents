-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: user_consents
CREATE TABLE IF NOT EXISTS user_consents (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  user_id BIGINT UNSIGNED NOT NULL,
  consent_type VARCHAR(50) NOT NULL,
  version VARCHAR(50) NOT NULL,
  granted BOOLEAN NOT NULL,
  granted_at DATETIME(6) NOT NULL,
  source VARCHAR(100) NULL,
  meta JSON NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

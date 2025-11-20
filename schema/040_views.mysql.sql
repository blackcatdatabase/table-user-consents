-- Auto-generated from schema-views-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  user_consents
-- Contract view for [user_consents]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_user_consents AS
SELECT
  id,
  user_id,
  consent_type,
  version,
  granted,
  granted_at,
  `source`,
  meta
FROM user_consents;

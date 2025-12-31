-- Auto-generated from schema-views-mysql.yaml (map@sha1:9417D8642843C7C690617409574FC6783895880D)
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

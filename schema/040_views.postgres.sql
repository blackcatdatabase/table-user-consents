-- Auto-generated from schema-views-postgres.yaml (map@sha1:A7406D76A2DD55741B4DC6A4EC831681A19168EB)
-- engine: postgres
-- table:  user_consents

-- Contract view for [user_consents]
CREATE OR REPLACE VIEW vw_user_consents AS
SELECT
  id,
  user_id,
  consent_type,
  version,
  granted,
  granted_at,
  source,
  meta
FROM user_consents;

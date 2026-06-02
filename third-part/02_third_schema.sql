CREATE SCHEMA IF NOT EXISTS advanced;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

SELECT schema_name
FROM information_schema.schemata
ORDER BY schema_name;
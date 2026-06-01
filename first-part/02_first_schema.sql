CREATE SCHEMA IF NOT EXISTS bassics;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- Query 
SELECT
    schema_name
FROM
    information_schema.schemata
ORDER BY
    schema_name;
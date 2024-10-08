-- Create course db schema
CREATE USER bord WITH SUPERUSER PASSWORD 'pa$$w0rd';
CREATE USER keycloak WITH SUPERUSER PASSWORD 'pa$$w0rd';
-- CREATE SCHEMA IF NOT EXISTS bord AUTHORIZATION admin;
-- CREATE SCHEMA IF NOT EXISTS keycloak AUTHORIZATION keycloak;

SELECT 'CREATE DATABASE bord'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'bord')\gexec
SELECT 'CREATE DATABASE keycloak'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'keycloak')\gexec

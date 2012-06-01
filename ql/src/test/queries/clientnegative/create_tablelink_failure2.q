DROP VIEW view1;
CREATE VIEW view1 AS SELECT value FROM src WHERE key=86;

DROP DATABASE IF EXISTS tmpdb CASCADE;
CREATE DATABASE tmpdb;
USE tmpdb;

CREATE TABLELINK TO view1@default LINKPROPERTIES('RETENTION'='100');

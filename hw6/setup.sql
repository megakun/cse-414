DROP DATAVERSE geo IF EXISTS;
CREATE DATAVERSE geo;
USE geo;
CREATE TYPE worldType AS {auto_id:uuid };
CREATE DATASET world(worldType) PRIMARY KEY auto_id AUTOGENERATED;
LOAD DATASET world USING localfs (("path"="127.0.0.1:///C:\\hw7\\mondial.adm"),("format"="adm"));

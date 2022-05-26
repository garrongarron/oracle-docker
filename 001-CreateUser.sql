--https://www.youtube.com/watch?v=tihmF-8sU2k&list=PL2Z95CSZ1N4HM7gzW8gK1Jt3lGWQO0k_G&index=3

CREATE USER miuser IDENTIFIED BY myclave
DEFAULT TABLESPACE SYSTEM
TEMPORARY TABLESPACE temp
QUOTA UNLIMITED ON SYSTEM;

GRANT CREATE SESSION TO miuser;
GRANT CREATE TABLE TO miuser;
GRANT CREATE VIEW TO miuser;
GRANT CREATE PROCEDURE TO miuser;
GRANT CREATE SEQUENCE TO miuser;


--para administrar tablas dentro de la base
GRANT ALL ON nombretabla TO miuser;
REVOKE ALL ON nombretabla FROM miuser;
DROP USER miuser CASCADE;

Select user from dual;
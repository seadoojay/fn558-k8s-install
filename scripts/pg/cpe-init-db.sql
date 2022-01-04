CREATE USER ceuser WITH PASSWORD 'cEBzc3dvcmQxMgo=';
create database os1db owner ceuser template template0 encoding UTF8;
revoke connect on database os1db from public;
grant all privileges on database os1db to ceuser;
grant connect, temp, create on database os1db to ceuser;

--create tablespace os1db_tbs owner ceuser location '/pgsqldata';
--grant create on tablespace os1db_tbs to ceuser; 
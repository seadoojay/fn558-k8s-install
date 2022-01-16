#kubectl get pod postgresql-db

#
#echo 'login in as os1db user'
#echo 'using secret postgres-secret-configkubectl get pods'
PGTOKEN=$(kubectl get secret postgres-secret-config --template={{.data.password}})

#psql login cEBzc3dvcmQxMgo=
#psql -h 10.56.7.245 -p 5432 -U postgres -d postgres -c 'SELECT table_name FROM information_schema.tables'

#psql -h 35.189.64.65 -p 5432 -U postgres -d postgres -c 'SELECT table_name FROM information_schema.tables'
#psql postgresql://postgres:cEBzc3dvcmQxMgo=@35.189.64.65:5432/postgres -c 'SELECT table_name FROM information_schema.tables;'

#SQL Option
#SELECT datname FROM pg_database;
#SELECT * FROM information_schema.tables WHERE table_schema = 'os1db';
#select table_schema,table_name from information_schema.tables where table_schema not in ('information_schema', 'pg_catalog') and table_type = 'BASE TABLE';

psql postgresql://ceuser:$PGTOKEN@35.189.64.65:5432/os1db -c 'SELECT datname FROM pg_database;'

psql postgresql://ceuser:$PGTOKEN@35.189.64.65:5432/os1db -c 'SELECT * FROM information_schema.tables;'

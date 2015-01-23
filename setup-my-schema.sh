#!/bin/bash
echo "******CREATING DOCKER DATABASE******"
gosu postgres postgres --single <<- EOSQL
   CREATE DATABASE docker;
   ALTER USER postgres WITH PASSWORD '${POSTGRESQL_PASS}';
   GRANT ALL PRIVILEGES ON DATABASE docker to postgres;
EOSQL
echo ""
echo "******DOCKER DATABASE CREATED******"


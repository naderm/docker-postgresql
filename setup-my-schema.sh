#!/bin/bash
echo "******CREATING DOCKER DATABASE******"
gosu postgres postgres --single <<- EOSQL
   CREATE DATABASE docker;
   CREATE USER docker;
   ALTER USER docker WITH PASSWORD '${POSTGRESQL_PASS}'
   GRANT ALL PRIVILEGES ON DATABASE docker to docker;
EOSQL
echo ""
echo "******DOCKER DATABASE CREATED******


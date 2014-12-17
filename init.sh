#!/bin/bash

su - postgres
psql -c "CREATE DATABASE citizenwatt"
psql -c "CREATE USER citizenwatt PASSWORD 'citizenwatt';"
psql -c "GRANT ALL ON DATABASE citizenwatt TO citizenwatt;"
exit

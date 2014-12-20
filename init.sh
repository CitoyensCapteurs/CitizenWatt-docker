#!/bin/bash

/etc/init.d/postgresql start
su postgres -c "pg_dropcluster 9.3 main --stop"
su postgres -c "pg_createcluster --locale C.UTF-8 9.3 main"
su postgres -c "pg_ctlcluster 9.3 main start "
su postgres -c "psql -c \"CREATE DATABASE citizenwatt;\""
su postgres -c "psql -c \"CREATE USER citizenwatt PASSWORD 'citizenwatt';\""
su postgres -c "psql -c \"GRANT ALL ON DATABASE citizenwatt TO citizenwatt;\""
exit

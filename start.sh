#!/bin/bash

#su - postgres
#/usr/lib/postgresql/9.3/bin/postgres -D /var/lib/postgresql/9.3/main -c "config_file=/etc/postgresql/9.3/main/postgresql.conf"
#exit
/etc/init.d/postgresql start
/etc/init.d/redis-server start

#redis-server /etc/redis/redis.conf

cd /opt/citizenwatt
python3 ./test_process.py &
python3 ./visu.py

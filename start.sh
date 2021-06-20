#!/bin/sh

#hostname:port:database:username:password
echo "$HOSTNAME:$PORT:$DATABASE:$USERNAME:$PASSWORD" >> /root/.pgpass
chmod 600 /root/.pgpass

crond -f
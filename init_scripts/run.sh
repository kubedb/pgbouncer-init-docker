#!/bin/bash

set -euo pipefail

if [ "${SSL:-0}" = "ON" ]; then
cp -rL /tmp/certs/* /var/run/pgbouncer/tls/serving/
chmod 0600 /var/run/pgbouncer/tls/serving/client/*
chmod 0664 /var/run/pgbouncer/tls/serving/server/*
fi



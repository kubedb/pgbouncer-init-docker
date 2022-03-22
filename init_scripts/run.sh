#!/bin/bash

set -euo pipefail
cp -rL /tmp/certs/* /var/run/pgbouncer/tls/serving/
chmod 0600 /var/run/pgbouncer/tls/serving/client/*
chmod 0664 /var/run/pgbouncer/tls/serving/server/*


ls -la /var/run/pgbouncer/tls/serving/client/


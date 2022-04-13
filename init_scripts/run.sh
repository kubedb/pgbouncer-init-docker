#!/bin/bash

set -euo pipefail

if [ "${SSL:-0}" = "ON" ]; then
    cp -rL /tmp/certs/* /var/run/pgbouncer/tls/serving/
    chown 70:70 /var/run/pgbouncer/tls/serving/client/*
    chown 70:70 /var/run/pgbouncer/tls/serving/server/*
    chown 70:70 /var/run/pgbouncer/tls/serving/metrics-exporter/*
    chmod 0600 /var/run/pgbouncer/tls/serving/client/*
    chmod 0600 /var/run/pgbouncer/tls/serving/server/*
    chmod 0600 /var/run/pgbouncer/tls/serving/metrics-exporter/*
fi

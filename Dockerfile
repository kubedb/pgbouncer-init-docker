FROM alpine

LABEL org.opencontainers.image.source https://github.com/kubedb/pgbouncer-init-docker

RUN apk add --no-cache bash

COPY init_scripts /init_scripts

ENTRYPOINT ["/init_scripts/run.sh"]

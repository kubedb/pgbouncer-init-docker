FROM alpine:latest

RUN apk add --no-cache bash

COPY init_scripts /init_scripts

ENTRYPOINT ["/init_scripts/run.sh"]

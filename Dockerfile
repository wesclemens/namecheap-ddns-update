FROM alpine:3
ARG DOMAIN
ARG HOST 
ARG DDNS_PASSWORD

RUN apk add --no-cache --update ca-certificates curl 

ENTRYPOINT set -x; while sleep 600; do curl "https://dynamicdns.park-your-domain.com/update?host=${HOST}&domain=${DOMAIN}&password=${DDNS_PASSWORD}"; done

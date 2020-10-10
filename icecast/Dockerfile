FROM golang:1.9-alpine as confd

ARG CONFD_VERSION=0.16.0

ADD https://github.com/kelseyhightower/confd/archive/v${CONFD_VERSION}.tar.gz /tmp/

RUN apk add --no-cache \
    bzip2 \
    make && \
  mkdir -p /go/src/github.com/kelseyhightower/confd && \
  cd /go/src/github.com/kelseyhightower/confd && \
  tar --strip-components=1 -zxf /tmp/v${CONFD_VERSION}.tar.gz && \
  go install github.com/kelseyhightower/confd && \
  rm -rf /tmp/v${CONFD_VERSION}.tar.gz


FROM alpine:latest

COPY --from=confd /go/bin/confd /usr/local/bin/confd

ENV USERNAME icecast
ENV UID 1000
ENV GID 1000

RUN apk add --no-cache icecast bash openssl
RUN rm /etc/icecast.xml
COPY run.sh run.sh
RUN chmod u+x /run.sh

EXPOSE 8000
CMD ["/run.sh"]

FROM alpine:3.5

MAINTAINER Peter Evans <pete.evans@gmail.com>

ENV VEGETA_VERSION 6.1.1

RUN set -ex \
 && apk add --no-cache --virtual .build-deps \
    ca-certificates \
    openssl \
 && wget -q "https://github.com/tsenart/vegeta/releases/download/v$VEGETA_VERSION/vegeta-v$VEGETA_VERSION-linux-amd64.tar.gz" -O /tmp/vegeta.tar.gz \
 && cd bin \
 && tar xzf /tmp/vegeta.tar.gz \
 && rm /tmp/vegeta.tar.gz \
 && apk del .build-deps

ENTRYPOINT ["/bin/vegeta"]
FROM alpine:3.8

MAINTAINER Peter Evans <pete.evans@gmail.com>

ENV VEGETA_VERSION 12.0.0

RUN set -ex \
 && apk add --no-cache ca-certificates \
 && apk add --no-cache --virtual .build-deps \
    openssl \
 && wget -q "https://github.com/tsenart/vegeta/releases/download/cli/v$VEGETA_VERSION/vegeta-$VEGETA_VERSION-linux-amd64.tar.gz" -O /tmp/vegeta.tar.gz \
 && cd bin \
 && tar xzf /tmp/vegeta.tar.gz \
 && rm /tmp/vegeta.tar.gz \
 && apk del .build-deps

CMD [ "/bin/vegeta", "-help" ]
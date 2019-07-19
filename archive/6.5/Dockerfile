FROM alpine:3.9

LABEL \
  maintainer="Peter Evans <mail@peterevans.dev>" \
  org.opencontainers.image.title="vegeta" \
  org.opencontainers.image.description="Docker image for the Vegeta HTTP load testing tool." \
  org.opencontainers.image.authors="Peter Evans <mail@peterevans.dev>" \
  org.opencontainers.image.url="https://github.com/peter-evans/vegeta-docker" \
  org.opencontainers.image.vendor="https://peterevans.dev" \
  org.opencontainers.image.licenses="MIT"

ENV VEGETA_VERSION 12.5.1

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
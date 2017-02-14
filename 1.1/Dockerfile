FROM golang:1.7.5

MAINTAINER Peter Evans <pete.evans@gmail.com>

ENV VEGETA_VERSION 6.1.1

RUN curl --silent -L https://github.com/tsenart/vegeta/releases/download/v$VEGETA_VERSION/vegeta-v$VEGETA_VERSION-linux-amd64.tar.gz -o /tmp/vegeta.tar.gz \
 && cd bin \
 && tar xzf /tmp/vegeta.tar.gz \
 && rm /tmp/vegeta.tar.gz

ENTRYPOINT ["/go/bin/vegeta"]
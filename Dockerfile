FROM golang:1.6.4

MAINTAINER Peter Evans <pete.evans@gmail.com>

RUN go get gopkg.in/tsenart/vegeta.v6
RUN go install gopkg.in/tsenart/vegeta.v6

ENTRYPOINT ["/go/bin/vegeta.v6"]
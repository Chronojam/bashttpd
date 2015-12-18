FROM quay.io/chronojam/ubuntu:master

WORKDIR /usr/local/src

RUN wget http://www.dest-unreach.org/socat/download/socat-1.7.0.1.tar.gz
RUN tar xzf socat-1.7.0.1.tar.gz
WORKDIR /usr/local/src/socat-1.7.0.1

RUN ./configure
RUN make
RUN make install

ADD . /serve-once

WORKDIR /serve-once
ENTRYPOINT ["./start.sh"]

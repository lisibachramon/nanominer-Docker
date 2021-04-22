FROM            ubuntu:14.04

RUN             apt-get update -qq

RUN             apt-get install -qy automake unzip autoconf wget pkg-config libcurl4-openssl-dev libssl-dev tar libjansson-dev libgmp-dev make g++ git

RUN             wget -a nano.tar.gz https://github.com/nanopool/nanominer/releases/download/3.3.4/nanominer-linux-3.3.4.tar.gz

RUN             tar xvzf nanominer-linux-3.3.4.tar.gz

RUN             cd nanominer-linux-3.3.4 && ls && chmod +x nanominer
COPY            config.ini /nanominer-linux-3.3.4/

WORKDIR         /nanominer-linux-3.3.4
ENTRYPOINT      ["./nanominer"]

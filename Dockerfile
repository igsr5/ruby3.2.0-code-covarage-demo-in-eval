FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo

RUN apt-get update \
 && apt-get install -y git vim tmux dh-autoreconf bison gperf build-essential gcc ruby zlib1g zlib1g-dev libyaml-dev libedit-dev libssl-dev sqlite3 libsqlite3-dev \
 && git clone --depth 1 https://github.com/ruby/ruby.git \
 && cd ruby \
 && ./autogen.sh \
 && mkdir build && cd build \
 && mkdir ~/.rubies \
 && ../configure --prefix="${HOME}/.rubies/ruby-master" \
 && make install \
 && mv /usr/bin/ruby /usr/bin/ruby.backup \
 && mv /usr/bin/gem /usr/bin/gem.backup \
 && echo "export PATH=${HOME}/.rubies/ruby-master/bin:${PATH}" > ~/.bashrc \

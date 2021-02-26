FROM debian:sid-slim
MAINTAINER yhndnzj

RUN apt-get update \
    && apt-get -qy install \
        python3-pip \
        python3-wheel \
        ffmpeg \
        libmagic1 \
        libwebp6 \
        git \
        python3-dev \
        build-essential \
    && apt-get clean \
    && python3 -m pip install --no-cache-dir \
        ehforwarderbot \
        efb-telegram-master \
        efb-wechat-slave \
        git+https://github.com/milkice233/efb-qq-slave.git \
        git+https://github.com/milkice233/efb-qq-plugin-iot.git

ENV EFB_DATA_PATH /etc/ehforwarderbot
ADD efb.sh /usr/local/bin/efb
ENTRYPOINT ["/usr/local/bin/efb"]

# vim: set ft=dockerfile ts=4 sw=4 et:

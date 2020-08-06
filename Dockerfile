FROM debian:sid-slim
MAINTAINER yhndnzj

RUN apt-get update \
    && apt-get -qy install \
        python3-pip \
        python3-wheel \
        ffmpeg \
        libmagic1 \
        libwebp6 \
    && apt-get clean \
    && python3 -m pip install --no-cache-dir \
        ehforwarderbot \
        efb-telegram-master \
        efb-wechat-slave
        #efb-qq-slave

ENV EFB_DATA_PATH /etc/ehforwarderbot
ADD efb.sh /usr/local/bin/efb
ENTRYPOINT ["/usr/local/bin/efb"]

# vim: set ft=dockerfile ts=4 sw=4 et:

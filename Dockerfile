FROM debian:sid-slim
MAINTAINER yhndnzj

RUN apt-get update \
    && apt-get -qy install \
        libwebp6 \
        python3-tornado \
        python3-future \
        python3-peewee \
        python3-retrying \
        python3-pyqrcode \
        python3-flask \
        python3-markupsafe \
        python3-pydub \
        python3-magic \
        python3-ruamel.yaml \
        python3-tqdm \
        python3-typing-extensions \
        python3-xmltodict \
        python3-cairosvg \
        python3-humanize \
        python3-defusedxml \
        python3-cssselect2 \
        python3-numpy \
        python3-pycparser \
        python3-certifi \
        python3-urllib3 \
        python3-requests \
        python3-portend \
        python3-zc.lockfile \
        python3-cheroot \
        python3-yaml \
        python3-idna \
        python3-pip \
        python3-wheel \
    && pip3 install --no-cache-dir \
        ehforwarderbot \
        efb-telegram-master \
        efb-wechat-slave \
        efb-qq-slave \
    && apt-get -qy --purge autoremove \
        python3-pip \
        python3-wheel \
    && apt-get clean

ENV EFB_DATA_PATH /etc/ehforwarderbot
ADD efb.sh /usr/local/bin/efb
ENTRYPOINT ["/usr/local/bin/efb"]

# vim: set ft=dockerfile ts=4 sw=4 et:

FROM debian:stable-slim
MAINTAINER yhndnzj

WORKDIR /opt
ADD build_script/* ./
RUN apt-get update \
	&& apt-get -qy install \
		libmagic1 \
		libwebp6 \
		python3-pkg-resources \
		python3-six \
		python3-cryptography \
		python3-pip \
		python3-wheel \
		wget \
		unzip \
	&& apt-get -qy --no-install-recommends install \
		ffmpeg \
	&& ./ptb.sh \
	&& rm ptb.sh \
		"$HOME"/.wget-hsts \
	&& pip3 install --no-cache-dir \
		ehforwarderbot \
		efb-telegram-master \
		efb-wechat-slave \
		efb-qq-slave \
	&& apt-get -qy purge \
		python3-pip \
		python3-wheel \
		wget \
		unzip \
	&& apt-get -qy --purge autoremove \
	&& apt-get clean

ENV EFB_DATA_PATH /etc/ehforwarderbot
ENTRYPOINT ["./run.sh"]

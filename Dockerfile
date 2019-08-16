FROM debian:sid-slim
MAINTAINER yhndnzj

WORKDIR /opt
ADD build_script/* ./
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
		python3-decorator \
		python3-imageio \
		python3-pydub \
		python3-magic \
		python3-requests \
		python3-ruamel.yaml \
		python3-tqdm \
		python3-typing-extensions \
		python3-xmltodict \
		python3-pip \
		python3-wheel \
		wget \
		unzip \
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

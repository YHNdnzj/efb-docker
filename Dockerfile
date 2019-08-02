FROM debian:buster-slim
MAINTAINER yhndnzj

RUN apt-get update \
	&& apt-get install -y \
		python3-pip \
		python3-wheel \
		ffmpeg \
		libmagic1 \
		libwebp6 \
	&& python3 -m pip install \
		ehforwarderbot \
		efb-telegram-master \
		efb-wechat-slave \
		efb-qq-slave

ENTRYPOINT ["python3", "-m", "ehforwarderbot", "-p", "$EFB_PROFILE"]

FROM python:3
MAINTAINER yhndnzj

WORKDIR /opt
ADD ptb.sh ./
RUN apt-get update \
	&& apt-get install -y \
		ffmpeg \
	&& ./ptb.sh \
	&& rm ptb.sh \
	&& pip install \
		ehforwarderbot \
		efb-telegram-master \
		efb-wechat-slave \
		efb-qq-slave

ENV EFB_DATA_PATH /etc/ehforwarderbot
ADD run.sh ./
ENTRYPOINT ["./run.sh"]

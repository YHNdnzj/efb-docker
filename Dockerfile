FROM python:3
MAINTAINER yhndnzj

RUN apt-get update \
	&& apt-get install -y \
		ffmpeg \
	&& pip install \
		ehforwarderbot \
		efb-telegram-master \
		efb-wechat-slave \
		efb-qq-slave

ENV EFB_DATA_PATH /etc/ehforwarderbot
ADD run.sh /opt/
ENTRYPOINT ["/opt/run.sh"]

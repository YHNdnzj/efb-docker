FROM debian:buster-slim
MAINTAINER yhndnzj

RUN apt update \
	&& apt install -y \
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

VOLUME /etc/ehforwarderbot
WORKDIR /etc/ehforwarderbot/profiles
ARG ETM_CONFIG='token: "TOKEN"\nadmins: \n- ID'
RUN mkdir -p \
		wechat/blueset.telegram \
		qq/{blueset.telegram,milkice.qq}
	&& echo -e \
		"master_channel: blueset.telegram\nslave_channels: \n- blueset.wechat" \
		> wechat/config.yaml
	&& echo -e \
		"master_channel: blueset.telegram\nslave_channels: \n- milkice.qq" \
		> qq/config.yaml
	&& echo -e \
		"$ETM_CONFIG" \
		> wechat/blueset.telegram/config.yaml
	&& echo -e \
		"$ETM_CONFIG" \
		> qq/blueset.telegram/config.yaml

ENTRYPOINT ["python3", "-m", "ehforwarderbot", "-p", "$EFB_PROFILE"]

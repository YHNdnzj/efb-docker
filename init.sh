#!/usr/bin/env bash
ETM_CONFIG='token: "TOKEN"\nadmins: \n- ID'
mkdir -p /etc/ehforwarderbot/profiles
cd /etc/ehforwarderbot/profiles
mkdir -p wechat/blueset.telegram qq/{blueset.telegram,milkice.qq}
echo -e "master_channel: blueset.telegram\nslave_channels: \n- blueset.wechat" > wechat/config.yaml
echo -e "master_channel: blueset.telegram\nslave_channels: \n- milkice.qq" > qq/config.yaml
echo -e "$ETM_CONFIG" > wechat/blueset.telegram/config.yaml
echo -e "$ETM_CONFIG" > qq/blueset.telegram/config.yaml
echo "請參考 https://yhndnzj.com/2019/05/26/send-and-receive-messages-from-qq-on-telegram/#ETM 設定 ETM"

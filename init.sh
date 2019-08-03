#!/bin/bash
ETM_CONFIG='token: "TOKEN"\nadmins: \n- ID'
mkdir -p /etc/ehforwarderbot/profiles
cd /etc/ehforwarderbot/profiles || exit
mkdir -p wechat/blueset.telegram qq/{blueset.telegram,milkice.qq}
echo -e "master_channel: blueset.telegram\nslave_channels: \n- blueset.wechat" > wechat/config.yaml
echo -e "master_channel: blueset.telegram\nslave_channels: \n- milkice.qq" > qq/config.yaml
echo -e "$ETM_CONFIG" > wechat/blueset.telegram/config.yaml
echo -e "$ETM_CONFIG" > qq/blueset.telegram/config.yaml
echo -e "Client: CoolQ\nCoolQ:\n    type: HTTP\n    access_token: ac0f790e1fb74ebcaf45da77a6f9de47\n    api_root: http://127.0.0.1:5700/\n    host: 127.0.0.1\n    port: 8000\n    is_pro: false\n    air_option:\n        upload_to_smms: true" > qq/milkice.qq/config.yaml
echo "請參考 https://yhndnzj.com/2019/05/24/send-and-receive-messages-from-wechat-on-telegram/#ETM 設定 ETM"

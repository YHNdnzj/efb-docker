#!/bin/bash
ETM_CONFIG='token: "TOKEN"\nadmins: \n- ID'
mkdir -p /etc/ehforwarderbot/profiles
cd /etc/ehforwarderbot/profiles || exit 1
mkdir -p wechat/blueset.telegram qq/{blueset.telegram,milkice.qq/coolq}
cat << EOF > wechat/config.yaml
master_channel: blueset.telegram
slave_channels: 
- blueset.wechat
EOF
cat << EOF > qq/config.yaml
master_channel: blueset.telegram
slave_channels: 
- milkice.qq
EOF
echo -e "$ETM_CONFIG" > wechat/blueset.telegram/config.yaml
echo -e "$ETM_CONFIG" > qq/blueset.telegram/config.yaml
cat << EOF > qq/milkice.qq/config.yaml
Client: CoolQ
CoolQ:
    type: HTTP
    access_token: ac0f790e1fb74ebcaf45da77a6f9de47
    api_root: http://cqhttp:5700/
    host: 0.0.0.0
    port: 8000
    is_pro: false
    air_option:
        upload_to_smms: true
EOF

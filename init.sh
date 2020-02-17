#!/bin/bash
docker pull yhndnzj/efb

mkdir -p /etc/ehforwarderbot/profiles
cd /etc/ehforwarderbot/profiles || exit 1
mkdir -p wechat/blueset.telegram qq/{blueset.telegram,milkice.qq/coolq}

cat <<EOF >{wechat,qq}/config.yaml
master_channel: blueset.telegram
slave_channels: 
EOF
echo "- blueset.wechat" > wechat/config.yaml
echo "- milkice.qq" > qq/config.yaml
echo -e "token: \"TOKEN\"\nadmins: \n- ID" >{wechat,qq}/blueset.telegram/config.yaml
cat <<EOF > qq/milkice.qq/config.yaml
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

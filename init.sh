#!/bin/bash
docker pull yhndnzj/efb

mkdir -p /etc/ehforwarderbot/{profiles,modules}

(
    cd /etc/ehforwarderbot/profiles || exit 1
    mkdir -p wechat/blueset.telegram

    cat <<EOF > wechat/config.yaml
master_channel: blueset.telegram
slave_channels: 
- blueset.wechat
middlewares: 
- filter.FilterMiddleware
    cat <<EOF > wechat/blueset.telegram/config.yaml
token: "TOKEN"
admins: 
- ID
EOF
)

wget -qP /etc/ehforwarderbot/modules https://gist.github.com/blueset/0084ab142e2213bca50d81d08753e564/raw/8699f4b7007b396ff06493eb3ded34402b19d5d0/filter.py

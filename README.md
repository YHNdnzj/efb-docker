# efb-docker

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/yhndnzj/efb?style=for-the-badge)![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/yhndnzj/efb?style=for-the-badge)

## Init

```shell
docker pull yhndnzj/efb
curl -fsSL https://raw.githubusercontent.com/YHNdnzj/efb-docker/master/init.sh | bash
```

## WeChat

```shell
docker run -d -e EFB_PROFILE=wechat --name efb-wechat -v /etc/ehforwarderbot:/etc/ehforwarderbot yhndnzj/efb
docker logs -f efb-wechat
```

## QQ

`wget https://raw.githubusercontent.com/YHNdnzj/efb-docker/master/docker-compose.yml`

將其中的 `ehForwarderBot` 替換爲自己的密碼，`ACCOUNT` 替換爲 QQ 賬號 

`docker-compose up -d`

打開 `<IP>:9000`，使用設定的密碼登入 VNC 並登入 QQ 賬號
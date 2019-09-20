# efb-docker

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/yhndnzj/efb?style=for-the-badge)![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/yhndnzj/efb?style=for-the-badge)

## Init

`# curl -fsSL https://github.com/YHNdnzj/efb-docker/raw/master/init.sh | bash`

參考我的博客中的說明設定 [WeChat](https://yhndnzj.com/2019/05/24/send-and-receive-messages-from-wechat-on-telegram/#ETM) 與 [QQ](https://yhndnzj.com/2019/05/26/send-and-receive-messages-from-qq-on-telegram/#ETM) Profile 的 **ETM**

## WeChat

```shell
# docker run -d -e EFB_PROFILE=wechat --name efb-wechat -v /etc/ehforwarderbot:/etc/ehforwarderbot yhndnzj/efb
# docker logs -f efb-wechat
```

## QQ

`$ wget https://github.com/YHNdnzj/efb-docker/raw/master/docker-compose.yml`

**將其中的 `ehForwarderBot` 替換爲自己的密碼，`ACCOUNT` 替換爲 QQ 賬號** 

`# docker-compose up -d`

打開 `<IP>:9000`，使用設定的密碼登入 VNC 並登入 QQ 賬號

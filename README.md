# efb-docker

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/yhndnzj/efb?style=for-the-badge)![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/yhndnzj/efb?style=for-the-badge)

## Init

`# curl -fsSL https://github.com/YHNdnzj/efb-docker/raw/master/init.sh | bash`

參考我的博客中的說明設定 [WeChat](https://yhndnzj.com/2019/05/24/send-and-receive-messages-from-wechat-on-telegram/#ETM) 與 [QQ](https://yhndnzj.com/2019/05/26/send-and-receive-messages-from-qq-on-telegram/#ETM) Profile 的 **ETM**

## WeChat

```console
# docker run -d -e EFB_PROFILE=wechat --name efb-wechat -v /etc/ehforwarderbot:/etc/ehforwarderbot yhndnzj/efb
# docker logs -f efb-wechat
```

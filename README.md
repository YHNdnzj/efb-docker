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


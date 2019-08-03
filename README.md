# efb-docker

## Init

```shell
docker pull yhndnzj/efb
curl -fsSL https://raw.githubusercontent.com/YHNdnzj/efb-docker/master/init.sh | bash
```

## WeChat

`docker run -d --name efb-wechat -v /etc/ehforwarderbot:/etc/ehforwarderbot -e EFB_PROFILE=wechat yhndnzj/efb`

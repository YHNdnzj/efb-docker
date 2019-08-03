# efb-docker

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

#!/bin/bash
if [[ $EFB_PROFILE ]]; then
    LANG=zh_CN.UTF-8 exec ehforwarderbot -p "$EFB_PROFILE"
else
    echo "請使用 -e EFB_PROFILE=wechat/qq 選擇要啟動的 Profile"
fi

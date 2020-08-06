#!/bin/bash
if [[ $EFB_PROFILE ]]; then
    LANG=zh_CN.UTF-8 exec ehforwarderbot -p "$EFB_PROFILE"
else
    echo "請使用 -e EFB_PROFILE= 選擇要啟動的 Profile" >&2
    exit 1
fi

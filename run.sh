#!/usr/bin/sh
if [ "$EFB_PROFILE" ]; then
	LANGUAGE=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8 LC_MESSAGES=zh_CN.UTF-8 LANG=zh_CN.UTF-8 python3 -m ehforwarderbot -p "$EFB_PROFILE"
else
	echo "請使用 -e EFB_PROFILE=wechat/qq 選擇要啟動的 Profile"
fi

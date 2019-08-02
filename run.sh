#!/usr/bin/bash
if [ "$EFB_PROFILE" ]; then
	ehforwarderbot -p "$EFB_PROFILE"
else
	echo "請使用 -e EFB_PROFILE=wechat/qq 選擇要啟動的 Profile"
fi

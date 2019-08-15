#!/bin/sh
wget -qO ptb.zip https://github.com/python-telegram-bot/python-telegram-bot/archive/e247fa7c2c254ec25e1cac390217f06f5f5c51f4.zip
unzip -q ptb.zip
cd python-telegram-bot-e247fa7c2c254ec25e1cac390217f06f5f5c51f4 || exit 1
(
cd telegram/vendor || exit 1
wget -qO urllib3.zip  https://github.com/python-telegram-bot/urllib3/archive/d2403a79fc38afbdd9aba8a05d274a83dc8bb412.zip
unzip -q urllib3.zip
mv urllib3-d2403a79fc38afbdd9aba8a05d274a83dc8bb412 ptb_urllib3
)
python3 setup.py install
cd ..
rm -rf ptb.zip python-telegram-bot-e247fa7c2c254ec25e1cac390217f06f5f5c51f4

#!/bin/sh
wget -qO ptb.zip https://github.com/python-telegram-bot/python-telegram-bot/archive/e247fa7c2c254ec25e1cac390217f06f5f5c51f4.zip
unzip -q ptb.zip
cd python-telegram-bot-e247fa7c2c254ec25e1cac390217f06f5f5c51f4 || exit 1
python3 setup.py install
cd ..
rm -rf ptb.zip python-telegram-bot-e247fa7c2c254ec25e1cac390217f06f5f5c51f4

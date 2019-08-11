#!/bin/bash
wget -O ptb.zip https://github.com/python-telegram-bot/python-telegram-bot/archive/e247fa7c2c254ec25e1cac390217f06f5f5c51f4.zip
unzip ptb.zip
cd python-telegram-bot-e247fa7c2c254ec25e1cac390217f06f5f5c51f4 || exit 1
python setup.py install
cd ..
rm -r ptb.zip python-telegram-bot-e247fa7c2c254ec25e1cac390217f06f5f5c51f4

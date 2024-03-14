#!/bin/bash

NAME='pnpm prod'
ID=`ps -ef | grep "$NAME" | grep -v "grep" | awk '{print $2}'`  #注意此shell脚本的名称，避免自杀
for id in $ID
do
        kill -9 $id
        echo "killed $NAME pid is $id"
done

# cd /opt/chatgpt-web

#git fetch && git merge

# pnpm build

# rm -rvf /usr/local/www/gpt.zhuangsen.live/*

# cp -r /opt/chatgpt-web/dist/. /usr/local/www/gpt.zhuangsen.live/

cd /opt/chatgpt-web/service

# pnpm build

pnpm prod > gpt.log &

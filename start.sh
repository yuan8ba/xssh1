#!/bin/bash
source /app/config.sh

service ssh start
service nginx start

echo "set ngrok token: $NGROK_TOKEN"
ngrok authtoken $NGROK_TOKEN
echo "start ngrok service"
/app/ini.sh
ngrok tcp 22 --log=stdout > ngrok.log

#!/bin/sh
mkdir /etc/v2ray /usr/local/v2ray
unzip -d /usr/local/v2ray v2ray-linux-64.zip v2ray
cp geosite.dat /usr/local/v2ray
cp geoip.dat /usr/local/v2ray
cp config.json /etc/v2ray
cp nginx.conf /etc/nginx/nginx.conf
/usr/sbin/nginx -s reload
nohup /usr/local/v2ray/v2ray -config=/etc/v2ray/config.json >/app/v.log 2>&1 &
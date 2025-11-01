#!/usr/bin/bash

curl 'https://gh.xmly.dev/https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/direct-list.txt' > /opt/smartdns/cn.conf
curl 'https://gh.xmly.dev/https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/apple-cn.txt' >> /opt/smartdns/cn.conf
curl 'https://gh.xmly.dev/https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/google-cn.txt' >> /opt/smartdns/cn.conf
curl 'https://gh.xmly.dev/https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/china-list.txt' >> /opt/smartdns/cn.conf

sed "s/^full://g;/^regexp:.*$/d;s/^/nameserver \//g;s/$/\/cn/g" -i /opt/smartdns/cn.conf

sed "s/^full://g;/^regexp:.*$/d;s/^/nameserver \//g;s/$/\/oversea/g" -i /opt/smartdns/oversea.conf


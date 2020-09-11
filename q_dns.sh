#!/bin/bash
t=$(dig +tcp -c CH -t TXT +noquestion +stats +time=1 @$1 $2 | grep "Query\ time" | cut -d" " -f4)
#fonte: js1 - post 27-09-2009, 16:37;
#Link: https://www.zabbix.com/forum/zabbix-suggestions-and-feedback/6992-dns-checking-named

d=$(date +"%T;%F")
echo "$d;$1;$2;$t;" >> log.csv


#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V1.0
# Auther  : JsPhantom
# (C) Copyright 2023
# =========================================
colornow=$(cat /etc/JsPhantom/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m" 
COLOR1="$(cat /etc/JsPhantom/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/JsPhantom/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"   
WH='\033[1;37m'                 
###########- END COLOR CODE -##########
clear
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
purple='\e[0;35m'
NC='\e[0m'
echo -n > /tmp/other.txt
data=( `cat /usr/local/etc/xray/xtrojan.json | grep '^###' | cut -d ' ' -f 2 | sort | uniq`);
echo -e "$COLOR1╔===========================================╗\033[0m"
echo -e "$COLOR1 ${COLBG1}        ${WH}${bold}Xray Trojan TCP XTLS User Login      \033[0m"
echo -e "$COLOR1╚===========================================╝\033[0m"
for akun in "${data[@]}"
do
if [[ -z "$akun" ]]; then
akun="tidakada"
fi
echo -n > /tmp/iptrojanxrt.txt
data2=( `cat /var/log/xray/access5.log | tail -n 500 | cut -d " " -f 3 | sed 's/tcp://g' | cut -d ":" -f 1 | sort | uniq`);
for ip in "${data2[@]}"
do
jum=$(cat /var/log/xray/access5.log | grep -w "$akun" | tail -n 500 | cut -d " " -f 3 | sed 's/tcp://g' | cut -d ":" -f 1 | grep -w "$ip" | sort | uniq)
if [[ "$jum" = "$ip" ]]; then
echo "$jum" >> /tmp/iptrojanxrt.txt
else
echo "$ip" >> /tmp/other.txt
fi
jum2=$(cat /tmp/iptrojanxrt.txt)
sed -i "/$jum2/d" /tmp/other.txt > /dev/null 2>&1
done
jum=$(cat /tmp/iptrojanxrt.txt)
if [[ -z "$jum" ]]; then
echo > /dev/null
else
jum2=$(cat /tmp/iptrojanxrt.txt | nl)
echo "User : $akun";
echo "$jum2";
echo -e "$COLOR1================================================\033[0m"
fi
rm -rf /tmp/iptrojanxrt.txt
rm -rf /tmp/other.txt
done
echo ""

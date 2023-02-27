#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V1.0
# Auther  : JsPhantom
# (C) Copyright 2023
# =========================================
###########- COLOR CODE -##############
colornow=$(cat /etc/JsPhantom/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m" 
COLOR1="$(cat /etc/JsPhantom/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/JsPhantom/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"   
WH='\033[1;37m'                 
###########- END COLOR CODE -##########
red='\e[1;31m'
green='\e[0;32m'
purple='\e[0;35m'
orange='\e[0;33m'
NC='\e[0m'
clear
echo -e ""
echo -e " $COLOR1╔═══════════════════════════════════════════╗\033[0m"
echo -e " $COLOR1║          ${WH}───[ System Status ]───          ${NC}$COLOR1║\033[0m"
echo -e " $COLOR1╚═══════════════════════════════════════════╝\033[0m"
echo ""
status="$(systemctl show cron.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " ${WH}Cron${NC}				${COLOR1}: "$green"Running"$NC""
else
echo -e " ${WH}Cron${NC}				${COLOR1}: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show nginx.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " ${WH}Nginx${NC}				${COLOR1}: "$green"Running"$NC""
else
echo -e " ${WH}Nginx${NC}				${COLOR1}: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show fail2ban.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " ${WH}Fail2ban${NC}			${COLOR1}: "$green"Running"$NC""
else
echo -e " ${WH}Fail2ban${NC}			${COLOR1}: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show xray.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " ${WH}XRAY Vmess TLS${NC}			${COLOR1}: "$green"Running"$NC""
else
echo -e " ${WH}XRAY Vmess TLS${NC}			${COLOR1}: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show xray@vless.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " ${WH}XRAY Vless TLS${NC}			${COLOR1}: "$green"Running"$NC""
else
echo -e " ${WH}XRAY Vless TLS${NC}			${COLOR1}: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show xray@vless.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " ${WH}XRAY Trojan TLS${NC}		${COLOR1}: "$green"Running"$NC""
else
echo -e " ${WH}XRAY Trojan TLS${NC}		${COLOR1}: "$red"Not Running (Error)"$NC""
fi

status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " ${WH}XRAY Vmess None TLS${NC}		${COLOR1}: "$green"Running"$NC""
else
echo -e " ${WH}XRAY Vmess None TLS${NC}		${COLOR1}: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show xray@trojanws.service --no-page)"
status="$(systemctl show xray@vnone.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " ${WH}XRAY Vless None TLS${NC}		${COLOR1}: "$green"Running"$NC""
else
echo -e " ${WH}XRAY Vless None TLS${NC}		${COLOR1}: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show xray@trnone.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " ${WH}XRAY Trojan None TLS${NC}		${COLOR1}: "$green"Running"$NC""
else
echo -e " ${WH}XRAY Trojan None TLS${NC}		${COLOR1}: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show xray@xtrojan.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " ${WH}XRAY Trojan TCP XTLS${NC}		${COLOR1}: "$green"Running"$NC""
else
echo -e " ${WH}XRAY Trojan TCP XTLS${NC}		${COLOR1}: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show xray@trojan.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " ${WH}XRAY Trojan TCP TLS${NC}		${COLOR1}: "$green"Running"$NC""
else
echo -e " ${WH}XRAY Trojan TCP TLS${NC}		${COLOR1}: "$red"Not Running (Error)"$NC""
fi
echo ""
echo -e " ${COLOR1}•═══════════════════════════════════════════•${NC}"
echo ""
read -n 1 -s -r -p "    Press any key to back on menu...."
    menu

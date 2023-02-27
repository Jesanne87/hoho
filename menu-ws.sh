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
P='\e[0;35m'
B='\033[0;36m'
N='\e[0m'
clear
echo -e "$COLOR1╔════════════════════════════════════════════╗\033[0m"
echo -e "$COLOR1║            ${WH}Xray Vmess WS Menu              $COLOR1║\033[0m"
echo -e "$COLOR1╚════════════════════════════════════════════╝\033[0m"

echo -e " ${WH}[${COLOR1}01${WH}]$NC ${COLOR1}•${WH}Add XRAY Vmess WS Account\033[0m"
echo -e " ${WH}[${COLOR1}02${WH}]$NC ${COLOR1}•${WH}Add Trial XRAY Vmess WS Account\033[0m"
echo -e " ${WH}[${COLOR1}03${WH}]$NC ${COLOR1}•${WH}Check User Login XRAY Vmess WS\033[0m"
echo -e " ${WH}[${COLOR1}04${WH}]$NC ${COLOR1}•${WH}Delete XRAY Vmess WS Account\033[0m"
echo -e " ${WH}[${COLOR1}05${WH}]$NC ${COLOR1}•${WH}Renew XRAY Vmess WS Account\033[0m"
echo -e " ${WH}[${COLOR1}06${WH}]$NC ${COLOR1}•${WH}Check XRAY Vmess WS Config\033[0m"

echo -e " ${WH}[${COLOR1}00${WH}]$NC ${COLOR1}•Back To Menu\033[0m"
echo ""
echo -e " \033[1;37mPress [ Ctrl+C ] • To-Exit-Script\033[0m"
echo ""
echo -ne "Select menu : "; read x
if [[ $(cat /opt/.ver) = $serverV ]] > /dev/null 2>&1; then
    if [[ $x -eq 1 ]]; then
       add-ws
       read -n1 -r -p "Press any key to continue..."
       menu-ws
    elif [[ $x -eq 2 ]]; then
       trial-ws
       read -n1 -r -p "Press any key to continue..."
       menu-ws
    elif [[ $x -eq 3 ]]; then
       cek-ws
       read -n1 -r -p "Press any key to continue..."
       menu-ws
    elif [[ $x -eq 4 ]]; then
       del-ws
       read -n1 -r -p "Press any key to continue..."
       menu-ws
    elif [[ $x -eq 5 ]]; then
       renew-ws
       read -n1 -r -p "Press any key to continue..."
       menu-ws
    elif [[ $x -eq 6 ]]; then
       user-ws
       read -n1 -r -p "Press any key to continue..."
       menu-ws
    elif [[ $x -eq 0 ]]; then
       clear
       menu-xray
    else
       clear
       menu-ws
    fi
fi

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
echo -e " $COLOR1╔════════════════════════════════════════════╗\033[0m"
echo -e " $COLOR1║           ${WH}Xray Trojan TCP Menu             $COLOR1║\033[0m"
echo -e " $COLOR1╚════════════════════════════════════════════╝\033[0m"

echo -e " ${WH}[${COLOR1}01${WH}]$NC ${COLOR1}• ${WH}Add XRAY Trojan TCP Account\033[0m"
echo -e " ${WH}[${COLOR1}02${WH}]$NC ${COLOR1}• ${WH}Add Trial XRAY Trojan TCP Account\033[0m"
echo -e " ${WH}[${COLOR1}03${WH}]$NC ${COLOR1}• ${WH}Check User Login XRAY Trojan TCP\033[0m"
echo -e " ${WH}[${COLOR1}04${WH}]$NC ${COLOR1}• ${WH}Delete XRAY Trojan TCP Account\033[0m"
echo -e " ${WH}[${COLOR1}05${WH}]$NC ${COLOR1}• ${WH}Renew XRAY Trojan TCP Account\033[0m"
echo -e " ${WH}[${COLOR1}06${WH}]$NC ${COLOR1}• ${WH}Check XRAY Trojan TCP Config\033[0m"

echo -e " ${WH}[${COLOR1}00${WH}]$NC ${COLOR1}• Back To Main Menu\033[0m"
echo ""
echo -e " \033[1;37mPress [ Ctrl+C ] • To-Exit-Script\033[0m"
echo ""
echo -ne " Select menu : "; read x
if [[ $(cat /opt/.ver) = $serverV ]] > /dev/null 2>&1; then
    if [[ $x -eq 1 ]]; then
       add-xtr
       read -n1 -r -p "Press any key to continue..."
       menu-xtr
    elif [[ $x -eq 2 ]]; then
       trial-xtr
       read -n1 -r -p "Press any key to continue..."
       menu-xtr
    elif [[ $x -eq 3 ]]; then
       cek-xtr
       read -n1 -r -p "Press any key to continue..."
       menu-xtr
    elif [[ $x -eq 4 ]]; then
       del-xtr
       read -n1 -r -p "Press any key to continue..."
       menu-xtr
    elif [[ $x -eq 5 ]]; then
       renew-xtr
       read -n1 -r -p "Press any key to continue..."
       menu-xtr
    elif [[ $x -eq 6 ]]; then
       user-xtr
       read -n1 -r -p "Press any key to continue..."
       menu-xtr
    elif [[ $x -eq 0 ]]; then
       clear
       menu-xray
    else
       clear
       menu-xtr
    fi
fi

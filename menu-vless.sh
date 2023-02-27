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
yell='\e[1;33m'
tyblue='\e[1;36m'
purple='\e[0;35m'
NC='\e[0m'
purple() { echo -e "\\033[35;1m${*}\\033[0m"; }
tyblue() { echo -e "\\033[36;1m${*}\\033[0m"; }
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
P='\e[0;35m'
B='\033[0;36m'
N='\e[0m'
clear
echo -e "$COLOR1╔============================================╗\033[0m"
echo -e " $COLOR1${COLBG1}           XRAY VLESS WS MENU               \033[0m"
echo -e "$COLOR1╚============================================╝${NC}"

echo -e " ${WH}[${COLOR1}01${WH}]$NC ${COLOR1}• ${WH}Add XRAY Vless WS Account${NC}"
echo -e " ${WH}[${COLOR1}02${WH}]$NC ${COLOR1}• ${WH}Add Trial XRAY Vless WS Account${NC}"
echo -e " ${WH}[${COLOR1}03${WH}]$NC ${COLOR1}• ${WH}Check User Login XRAY Vless WS${NC}"
echo -e " ${WH}[${COLOR1}04${WH}]$NC ${COLOR1}• ${WH}Delete XRAY Vless WS Account${NC}"
echo -e " ${WH}[${COLOR1}05${WH}]$NC ${COLOR1}• ${WH}Renew XRAY Vless WS Account${NC}"
echo -e " ${WH}[${COLOR1}06${WH}]$NC ${COLOR1}• ${WH}Check XRAY Vless WS Config${NC}"

echo -e " ${WH}[${COLOR1}00${WH}]$NC ${COLOR1}  Back To Menu${NC}"
echo ""
echo -e " \033[1;37mPress [ Ctrl+C ] • To-Exit-Script\033[0m"
echo ""
echo -ne "Select menu : "; read x
if [[ $(cat /opt/.ver) = $serverV ]] > /dev/null 2>&1; then
    if [[ $x -eq 1 ]]; then
       add-vless
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 2 ]]; then
       trial-vless
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 3 ]]; then
       cek-vless
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 4 ]]; then
       del-vless
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 5 ]]; then
       renew-vless
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 6 ]]; then
       user-vless
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 0 ]]; then
       clear
       menu-xray
    else
       clear
       menu-vless
    fi
fi

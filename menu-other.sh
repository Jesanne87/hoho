#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V1.0
# Auther  : Geo Project
# (C) Copyright 2023
# =========================================
###########- COLOR CODE -##############
colornow=$(cat /etc/JsPhantom/theme/color.conf) 
export COLOR1="$(cat /etc/JsPhantom/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/JsPhantom/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')" 
export WH='\033[1;37m'                   
export RED='\033[0;31m'
export GRN='\033[0;32m'
export YLW='\033[0;33m'
export BLU='\033[0;34m'
export PLE='\033[0;35m'
export CYA='\033[0;36m'
export LHT='\033[0;37m'
export NC='\033[0m'
bold=$(tput bold)
normal=$(tput sgr0)
###########- END COLOR CODE -##########
clear
echo -e " ${COLOR1}╔══════════════════════════════════════════════════════╗${NC}"
echo -e " ${COLOR1}║${COLBG1}               ${NC}${WH}»»»»[ OTHER PANEL ]««««                ${COLOR1}║${NC}"
echo -e " ${COLOR1}╠══════════════════════════════════════════════════════╣${NC}"
echo -e " ${COLOR1}║                                                      ║${NC}"
echo -e " ${COLOR1}║ ${NC}${WH}[${COLOR1}01${WH}]${COLOR1}• ${WH}${bold}DNS Changer          ${NC}${WH}[${COLOR1}10]${COLOR1}• ${WH}${bold}Check Info Port     ${NC}${COLOR1}║${NC}"
echo -e " ${COLOR1}║ ${NC}${WH}[${COLOR1}02${WH}]${COLOR1}• ${WH}${bold}Netflix Checker      ${NC}${WH}[${COLOR1}11]${COLOR1}• ${WH}${bold}Restart VPN Services${NC}${COLOR1}║${NC}"
echo -e " ${COLOR1}║ ${NC}${WH}[${COLOR1}03${WH}]${COLOR1}• ${WH}${bold}Change Domain        ${NC}${WH}[${COLOR1}12]${COLOR1}• ${WH}${bold}Speedtest VPS       ${NC}${COLOR1}║${NC}"
echo -e " ${COLOR1}║ ${NC}${WH}[${COLOR1}04${WH}]${COLOR1}• ${WH}${bold}Renew Certi XRAY     ${NC}${WH}[${COLOR1}13]${COLOR1}• ${WH}${bold}Check Bandwith      ${NC}${COLOR1}║${NC}" 
echo -e " ${COLOR1}║ ${NC}${WH}[${COLOR1}05${WH}]${COLOR1}• ${WH}${bold}Limit Bandwith Speed ${NC}${WH}[${COLOR1}14]${COLOR1}• ${WH}${bold}Menu Theme          ${NC}${COLOR1}║${NC}"
echo -e " ${COLOR1}║ ${NC}${WH}[${COLOR1}06${WH}]${COLOR1}• ${WH}${bold}Ads Block Panel      ${NC}${WH}[${COLOR1}15]${COLOR1}• ${WH}${bold}Backup              ${NC}${COLOR1}║${NC}"
echo -e " ${COLOR1}║ ${NC}${WH}[${COLOR1}07${WH}]${COLOR1}• ${WH}${bold}Install Ads Block    ${NC}${WH}[${COLOR1}16]${COLOR1}• ${WH}${bold}Restore             ${NC}${COLOR1}║${NC}"
echo -e " ${COLOR1}║ ${NC}${WH}[${COLOR1}08${WH}]${COLOR1}• ${WH}${bold}Xraycore Official    ${NC}${WH}[${COLOR1}17]${COLOR1}• ${WH}${bold}Reboot              ${NC}${COLOR1}║${NC}"
echo -e " ${COLOR1}║ ${NC}${WH}[${COLOR1}09${WH}]${COLOR1}• ${WH}${bold}Xraycore Mod         ${NC}${WH}[${COLOR1}18]${COLOR1}• ${WH}${bold}Check VPN Status    ${NC}${COLOR1}║${NC}"
echo -e " ${COLOR1}║                                                      ║${NC}"
echo -e " ${COLOR1}╚══════════════════════════════════════════════════════╝${NC}" 
echo ""
echo -ne " ${bold}Select menu : "; read opt
case $opt in
01 | 1 ) clear ; dns ; echo "" ; menu ;;
02 | 2 ) clear ; nf ; echo "" ; read -n1 -r -p "Press any key to continue..." ; menu ;;
03 | 3 ) clear ; add-host ; menu ;;
04 | 4 ) clear ; certxray ; menu ;;
05 ) clear ; limit ; echo "" ; menu ;;
06 ) clear ; helium ; menu ;;
07 ) clear ; ins-helium ; read -n1 -r -p "Press any key to continue..." ; menu ;;
08 ) clear ; xrayofficial ; menu ;;
09 ) clear ; xraymod ; menu ;;
10 ) clear ; info ; read -n1 -r -p "Press any key to continue..." ; menu ;;
11 ) clear ; restart ; menu ;;
12 ) clear ; speedtest ; echo "" ; read -n1 -r -p "Press any key to continue..." ; menu ;;
13 ) clear ; vnstat ; echo "" ; read -n1 -r -p "Press any key to continue..." ; menu ;;
14 ) clear ; menu-theme ; read -n1 -r -p "Press any key to continue..." ; menu ;;
15 ) clear ; backup ; read -n1 -r -p "Press any key to continue..." ; menu ;;
16 ) clear ; restore ; menu ;;
17 ) clear ; reboot ;;
18 ) clear ; status ; read -n1 -r -p "Press any key to continue..." ; menu ;;
00 | 0 ) clear ; menu ;;

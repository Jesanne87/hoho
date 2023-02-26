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
01 | 1 )dns
;;
02 | 2 )nf
;;
03 | 3 )add-host 
;;
04 | 4 )certxray
;;
05 | 5 )limit
;;
06 | 6 )helium 
;;
07 | 7 )ins-helium 
;;
08 | 8 )xrayofficial
;;
09 | 9 )xraymod
;;
10 )info 
;;
11 )restart
;;
12 )speedtest
;;
13 )vnstat
;;
14 )menu-theme 
;;
15 )backup
;;
16 )restore
;;
17 )reboot
;;
18 )status
;;
*)
echo " Tolong masukkan nombor yang betul!!"
    sleep 1
    menu-other
    ;;
esac

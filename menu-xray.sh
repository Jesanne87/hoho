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
echo -e " ${COLOR1}║               ${NC}${WH}»»»»[ XRAY PANEL ]««««                 ${COLOR1}║${NC}"
echo -e " ${COLOR1}╠══════════════════════════════════════════════════════╣${NC}" 
echo -e " ${COLOR1}║                                                      ║${NC}"
echo -e " ${COLOR1}║  ${NC}${WH}[${COLOR1}01${WH}]${COLOR1}• ${WH}${bold}Vless WS Panel    ${NC}${WH}[${COLOR1}04${WH}]${COLOR1}• ${WH}${bold}Trojan TCP XTLS Panel ${COLOR1}║${NC}"
echo -e " ${COLOR1}║  ${NC}${WH}[${COLOR1}02${WH}]${COLOR1}• ${WH}${bold}Vmess WS Panel    ${NC}${WH}[${COLOR1}05${WH}]${COLOR1}• ${WH}${bold}Trojan TCP Panel      ${COLOR1}║${NC}"
echo -e " ${COLOR1}║  ${NC}${WH}[${COLOR1}03${WH}]${COLOR1}• ${WH}${bold}Trojan WS Panel                               ${COLOR1}║${NC}"
echo -e " ${COLOR1}║                                                      ║${NC}"
echo -e " ${COLOR1}╚══════════════════════════════════════════════════════╝${NC}" 
echo ""
echo -ne " ${bold}${GRN}Select menu ${NC}: "; read opt
case $opt in
01 | 1) clear ; menu-vless ; read -n1 -r -p "Press any key to continue..." ; menu ;;
02 | 2) clear ; menu-ws ; read -n1 -r -p "Press any key to continue..." ; menu ;;
03 | 3) clear ; menu-tr ; read -n1 -r -p "Press any key to continue..." ; menu ;;
04 | 4) clear ; menu-xrt ; read -n1 -r -p "Press any key to continue..." ; menu ;;
05 | 5) clear ; menu-xtr ; read -n1 -r -p "Press any key to continue..." ; menu ;;
00 | 0) clear ; menu ;;
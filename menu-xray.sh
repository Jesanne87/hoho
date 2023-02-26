#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V1.0
# Auther  : JsPhantom
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
01 | 1)menu-vless
;;
02 | 2)menu-ws
;;
03 | 3)menu-tr
;;
04 | 4)menu-xrt
;;
05 | 5)menu-xtr
;;
00 | 0)menu
;;
*)
echo " Tolong masukkan nombor yang betul!!"
;;
esac

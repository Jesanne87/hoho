#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V1.0
# Auther  : JsPhantom
# (C) Copyright 2023
# =========================================
colornow=$(cat /etc/JsPhantom/theme/color.conf)
export NC="\e[0m"
export YELLOW='\033[0;33m';
export RED="\033[0;31m" 
export COLOR1="$(cat /etc/JsPhantom/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/JsPhantom/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')" 
clear
NC='\e[0m'
## Foreground
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'

echo ""
echo -e "$COLOR1❦—————❦————••————❦————••————❦————••————❦————••————❦————❦${NC}"
echo -e "$COLOR1❦—————❦————••————❦————••————❦————••————❦————••————❦————❦${NC}"
echo -e "$COLOR1         ${NC} ❈ ${NC} ${WB}${bold}Premium Autoscript By JsPhantom ${NC} ❈ ${NC}"
echo -e "$COLOR1❈══════════════════════════════════════════════════════❈${NC}"
echo -e "                  ${WB}»»»»⁅ ${bold}Info Xray ⁆««««${NC}"
echo -e "$COLOR1❈══════════════════════════════════════════════════════❈${NC}"
echo -e "  ${GB}✅${NC} ${YB}${bold}Xray Vmess Ws Tls : 443${NC}   ${WB}|${NC}  ${GB}✅${NC} ${YB}${bold}Websocket (CDN) TLS : 443${NC}"
echo -e "  ${GB}✅${NC} ${YB}${bold}Xray Vless Ws Tls : 443${NC}   ${WB}|${NC}  ${GB}✅${NC} ${YB}${bold}Websocket (CDN) NTLS :80${NC}"
echo -e "  ${GB}✅${NC} ${YB}${bold}Xray Trojan Ws Tls : 443${NC}  ${WB}|${NC}  ${GB}✅${NC} ${YB}${bold}TCP XTLS :443${NC}"
echo -e "  ${GB}✅${NC} ${YB}${bold}Trojan TCP XTLS : 443${NC}     ${WB}|${NC}  ${GB}✅${NC} ${YB}${bold}TCP TLS : 443${NC}"
echo -e "  ${GB}✅${NC} ${YB}${bold}Trojan TCP : 443${NC}          ${WB}|${NC}"
echo -e "$COLOR1❈══════════════════════════════════════════════════════❈${NC}"
echo -e "           ${WB}»»»»⁅ ${bold}YAML Service Information ⁆««««${NC}          "
echo -e "$COLOR1❈══════════════════════════════════════════════════════❈${NC}"
echo -e "  ${GB}✅${NC} ${YB}Yaml Xray Vmess WS${NC}"
echo -e "  ${GB}✅${NC} ${YB}Yaml Xray Vless WS${NC}"
echo -e "  ${GB}✅${NC} ${YB}Yaml Xray Trojan WS${NC}"
echo -e "  ${GB}✅${NC} ${YB}Yaml Xray Trojan XTLS${NC}"
echo -e "  ${GB}✅${NC} ${YB}Yaml Xray Trojan TCP${NC}"
echo -e "$COLOR1❈══════════════════════════════════════════════════════❈${NC}"
echo -e "             ${WB}»»»»⁅ ${bold}Server Information ⁆««««${NC}                 "
echo -e "$COLOR1❈══════════════════════════════════════════════════════❈${NC}"
echo -e "  ${MB}♦️${NC} ${YB}${bold}Timezone           ${GB}: ${bold}Asia/Kuala_Lumpur (GMT +8)${NC}"
echo -e "  ${MB}♦️${NC} ${YB}${bold}Fail2Ban           ${GB}: ${bold}[ON]${NC}"
echo -e "  ${MB}♦️${NC} ${YB}${bold}Dflate             ${GB}: ${bold}[ON]${NC}"
echo -e "  ${MB}♦️${NC} ${YB}${bold}IPtables           ${GB}: ${bold}[ON]${NC}"
echo -e "  ${MB}♦️${NC} ${YB}${bold}Auto-Reboot        ${GB}: ${bold}[ON]${NC}"
echo -e "  ${MB}♦️${NC} ${YB}${bold}IPV6               ${GB}: ${NC}${bold}${GB}[${RB}OFF${NC}${GB}]${NC}"
echo -e ""
echo -e "  ${GB}✅${NC} ${YB}${bold}Autoreboot On 06.00 GMT +8${NC}"
echo -e "  ${GB}✅${NC} ${YB}${bold}Backup & Restore VPS Data${NC}"
echo -e "  ${GB}✅${NC} ${YB}${bold}Automatic Delete Expired Account${NC}"
echo -e "  ${GB}✅${NC} ${YB}${bold}Bandwith Monitor${NC}"
echo -e "  ${GB}✅${NC} ${YB}${bold}Check Login User${NC}"
echo -e "  ${GB}✅${NC} ${YB}${bold}Check Created Config${NC}"
echo -e "  ${GB}✅${NC} ${YB}${bold}Automatic Clear Log${NC}"
echo -e "  ${GB}✅${NC} ${YB}${bold}Media Checker${NC}"
echo -e "  ${GB}✅${NC} ${YB}${bold}DNS Changer${NC}"
echo -e "  ${GB}✅${NC} ${YB}${bold}Xraycore Changer${NC}"
echo -e "$COLOR1❈══════════════════════════════════════════════════════❈${NC}"
echo -e "           ${WB}»»»»⁅ ${bold}Autoscript By JsPhantom ⁆««««${NC}             "
echo -e "$COLOR1❦—————❦————••————❦————••————❦————••————❦————••————❦————❦${NC}"
echo -e "$COLOR1❦—————❦————••————❦————••————❦————••————❦————••————❦————❦${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
    menu-other
    ;;
esac

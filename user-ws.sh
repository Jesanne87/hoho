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
clear
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
purple='\e[0;35m'
NC='\e[0m'
MYIP=$(wget -qO- ipv4.icanhazip.com);
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/usr/local/etc/xray/config.json")
        if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
                echo -e "$COLOR1╔============================================╗\033[0m"
                echo -e "$COLOR1 ${COLBG1}       ${WH}Check XRAY Vmess WS Config           \e[0m"
                echo -e "$COLOR1╚============================================╝\033[0m"
                echo ""
                echo "You have no existing clients!"
                clear
                exit 1
        fi

        echo -e "$COLOR1╔============================================╗\033[0m"
        echo -e "$COLOR1 ${COLBG1}       ${WH}Check XRAY Vmess WS Config           \e[0m"
        echo -e "$COLOR1╚============================================╝\033[0m"
        echo " Select the existing client to view the config"
        echo " Press CTRL+C to return"
		echo -e "============================================\033[0m"
        echo "     No  Expired   User"
        grep -E "^### " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 2-3 | nl -s ') '
        until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
                if [[ ${CLIENT_NUMBER} == '1' ]]; then
                        read -rp "Select one client [1]: " CLIENT_NUMBER
                else
                        read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
                fi
        done
user=$(grep -E "^### " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
tls="$(cat ~/log-install.txt | grep -w "VMESS WS TLS" | cut -d: -f2|sed 's/ //g')"
none="$(cat ~/log-install.txt | grep -w "VMESS WS None TLS" | cut -d: -f2|sed 's/ //g')"
domain=$(cat /root/domain)
uuid=$(grep "},{" /usr/local/etc/xray/config.json | cut -b 11-46 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^### " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
hariini=`date -d "0 days" +"%Y-%m-%d"`
vmess_base641=$( base64 -w 0 <<< $vmess_json1)
vmess_base642=$( base64 -w 0 <<< $vmess_json2)
vmesslink1="vmess://$(base64 -w 0 /usr/local/etc/xray/$user-tls.json)"
vmesslink2="vmess://$(base64 -w 0 /usr/local/etc/xray/$user-none.json)"
clear
echo -e ""
echo -e "$COLOR1===================${NC}[Xray Vmess WS]$COLOR1===================${NC}"
echo -e "Remarks           : ${user}"
echo -e "Domain            : ${domain}"
echo -e "Port TLS          : 443"
echo -e "Port None TLS     : 80, 8080, 8880"
echo -e "ID                : ${uuid}"
echo -e "AlterId           : 0"
echo -e "Security          : Auto"
echo -e "Network           : WS"
echo -e "Path TLS          : /vmess-tls"
echo -e "Path NTLS         : /vmess-ntls"
echo -e "$COLOR1===================${NC}"
echo -e "Link WS TLS       : ${vmesslink1}"
echo -e "$COLOR1===================${NC}"
echo -e "Link WS None TLS  : ${vmesslink2}"
echo -e "===================${NC}"
echo -e "YAML WS TLS       : http://${MYIP}:81/$user-VMESSTLS.yaml"
echo -e "$COLOR1===================${NC}"
echo -e "YAML WS None TLS  : http://${MYIP}:81/$user-VMESSNTLS.yaml"
echo -e "$COLOR1===================${NC}"
echo -e "Created On        : $hariini"
echo -e "Expired On        : $exp"
echo -e "$COLOR1===================${NC}"
echo -e ""
echo -e "Autoscript By JsPhantom"
echo -e ""

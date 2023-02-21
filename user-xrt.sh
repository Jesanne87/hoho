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
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/usr/local/etc/xray/xtrojan.json")
        if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
                echo -e "$COLOR1╔============================================╗\033[0m"
                echo -e "$COLOR1  ${COLBG1}   ${WH}Check XRAY Trojan TCP XTLS Config      \e[0m"
                echo -e "$COLOR1╚============================================╝\033[0m"
                echo ""
                echo "You have no existing clients!"
                exit 1
        fi

        echo -e "$COLOR1╔============================================╗\033[0m"
        echo -e "$COLOR1 ${COLBG1}     ${WH}Check XRAY Trojan TCP XTLS Config      \e[0m"
        echo -e "$COLOR1╚============================================╝\033[0m"
        echo " Select the existing client to view the config"
        echo " Press CTRL+C to return"
        echo -e " $COLOR1============================================\033[0m"
        echo "     No  Expired   User"
        grep -E "^### " "/usr/local/etc/xray/xtrojan.json" | cut -d ' ' -f 2-3 | nl -s ') '
        until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
                if [[ ${CLIENT_NUMBER} == '1' ]]; then
                        read -rp "Select one client [1]: " CLIENT_NUMBER
                else
                        read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
                fi
        done
clear
echo ""
read -p "Bug Address (Example: www.google.com) : " address
read -p "Bug SNI/Host (Example : m.facebook.com) : " hst
bug_addr=${address}.
bug_addr2=${address}
if [[ $address == "" ]]; then
sts=$bug_addr2
else
sts=$bug_addr
fi
bug=${hst}
bug2=bug.com
if [[ $hst == "" ]]; then
sni=$bug2
else
sni=$bug
fi

user=$(grep -E "^### " "/usr/local/etc/xray/xtrojan.json" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^### " "/usr/local/etc/xray/xtrojan.json" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
domain=$(cat /root/domain)
uuid=$(grep "},{" /usr/local/etc/xray/xtrojan.json | cut -b 17-52 | sed -n "${CLIENT_NUMBER}"p)
hariini=`date -d "0 days" +"%Y-%m-%d"`
trojanlink1="trojan://${uuid}@${sts}${domain}:443?allowInsecure=1&security=xtls&headerType=none&type=tcp&flow=xtls-rprx-direct&sni=${sni}#XRAY_TROJAN_DIRECT_${user}"
trojanlink2="trojan://${uuid}@${sts}${domain}:443?allowInsecure=1&security=xtls&headerType=none&type=tcp&flow=xtls-rprx-direct-udp443&sni=${sni}#XRAY_TROJAN_DIRECTUDP443_${user}"
trojanlink3="trojan://${uuid}@${sts}${domain}:443?allowInsecure=1&security=xtls&headerType=none&type=tcp&flow=xtls-rprx-splice&sni=${sni}#XRAY_TROJAN_SPLICE_${user}"
trojanlink4="trojan://${uuid}@${sts}${domain}:443?allowInsecure=1&security=xtls&headerType=none&type=tcp&flow=xtls-rprx-splice-udp443&sni=${sni}#XRAY_TROJAN_SPLICEUDP443_${user}"

clear
echo -e ""
echo -e "$COLOR1===================${NC}[XRAY TROJAN TCP XTLS]$COLOR1===================${NC}"
echo -e "Remarks              : ${user}"
echo -e "Domain               : ${domain}"
echo -e "Password             : ${uuid}"
echo -e "Port Direct          : 443"
echo -e "Port Splice          : 443"
echo -e "Encryption           : None"
echo -e "Network              : TCP"
echo -e "Security             : XTLS"
echo -e "Flow                 : Direct & Splice"
echo -e "AllowInsecure        : True/Allow"
echo -e "$COLOR1===================${NC}"
echo -e "Link Direct          : ${trojanlink1}"
echo -e "$COLOR1===================${NC}"
echo -e "Link Direct UDP 443  : ${trojanlink2}"
echo -e "$COLOR1===================${NC}"
echo -e "Link Splice          : ${trojanlink3}"
echo -e "$COLOR1===================${NC}"
echo -e "Link Splice UDP 443  : ${trojanlink4}"
echo -e "$COLOR1===================${NC}"
echo -e "YAML Direct          : http://${MYIP}:81/$user-TRDIRECT.yaml"
echo -e "$COLOR1===================${NC}"
echo -e "YAML Splice          : http://${MYIP}:81/$user-TRSPLICE.yaml"
echo -e "$COLOR1===================${NC}"
echo -e "Created On           : $hariini"
echo -e "Expired On           : $exp"
echo -e "$COLOR1===================${NC}"
echo -e ""
echo -e "Autoscript By JsPhantom"
echo -e ""

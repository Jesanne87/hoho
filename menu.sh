#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V1.0
# Auther  : Geo Project
# (C) Copyright 2023
# =========================================
clear
bold=$(tput bold)
normal=$(tput sgr0)
P='\e[0;35m'
B='\033[0;36m'
G='\e[0;32m'
N='\e[0m'
export Server_URL="raw.githubusercontent.com/Jesanne87/hoho/main"
###########- COLOR CODE -##############
colornow=$(cat /etc/JsPhantom/theme/color.conf)
export NC="\e[0m"
export YELLOW='\033[0;33m';
export RED="\033[0;31m" 
export COLOR1="$(cat /etc/JsPhantom/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/JsPhantom/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')" 
WH='\033[1;37m'                   
###########- END COLOR CODE -##########
clear
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################
MYIP=$(wget -qO- ipv4.icanhazip.com);
clear
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
cek=$( curl -sS https://raw.githubusercontent.com/annelyah23/IP/main/access | awk '{print $2}'  | grep $MYIP )
Name=$(curl -sS https://raw.githubusercontent.com/annelyah23/IP/main/access | grep $MYIP | awk '{print $4}')
if [[ $cek = $MYIP ]]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo ""
echo -e "Your IP is ${red}NOT REGISTER${NC} @ ${red}EXPIRED${NC}"
echo ""
echo -e "Please Contact ${green}Admin${NC}"
echo -e "Telegram : t.me/JsPhantom"
exit 0
fi
clear

BURIQ() {
    curl -sS https://raw.githubusercontent.com/annelyah23/IP/main/access >/root/tmp
    data=($(cat /root/tmp | grep -E "^### " | awk '{print $4}'))
    for user in "${data[@]}"; do
        exp=($(grep -E "^### $user" "/root/tmp" | awk '{print $3}'))
        d1=($(date -d "$exp" +%s))
        d2=($(date -d "$biji" +%s))
        exp2=$(((d1 - d2) / 86400))
        if [[ "$exp2" -le "0" ]]; then
            echo $user >/etc/.$user.ini
        else
            rm -f /etc/.$user.ini >/dev/null 2>&1
        fi
    done
    rm -f /root/tmp
}

MYIP=$(wget -qO- ipv4.icanhazip.com);
Name=$(curl -sS https://raw.githubusercontent.com/annelyah23/IP/main/access | grep $MYIP | awk '{print $4}')
echo $Name >/usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman() {
    if [[ -f "/etc/.$Name.ini" ]]; then
        CekTwo=$(cat /etc/.$Name.ini)
        if [[ "$CekOne" = "$CekTwo" ]]; then
            res="Expired"
        fi
    else
        res="Permission Accepted..."
    fi
}

PERMISSION() {
    MYIP=$(wget -qO- ipv4.icanhazip.com);
    IZIN=$(curl -sS https://raw.githubusercontent.com/annelyah23/IP/main/access | awk '{print $3}' | grep $MYIP)
    if [[ "$MYIP" = "$IZIN" ]]; then
        Bloman
    else
        res="Permission Denied!"
    fi
    BURIQ
}

PERMISSION

if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
rm -f /home/needupdate > /dev/null 2>&1
else
Exp=$(curl -sS https://raw.githubusercontent.com/annelyah23/IP/main/access | grep $MYIP | awk '{print $3}')
fi

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
clear
domain=$(cat /root/domain)

# // nginx status
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
    status_nginx="${GREEN}ON${NC}"
else
    status_nginx="${RED}OFF${NC}"
fi

# // xray status
xray=$( systemctl status xray | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $xray == "running" ]]; then
    status_xray="${GREEN}ON${NC}"
else
    status_xray="${RED}OFF${NC}"
fi

# // script version
myver="$(cat /home/ver)"

# // script version check
serverV=$( curl -sS https://${Server_URL}/version_check_v2)

function updatews(){
clear
echo -e "[ ${GREEN}INFO${NC} ] Check for Script updates . . ."
sleep 2
cd
wget -q -O /root/update-v2.sh "https://raw.githubusercontent.com/Jesanne87/hoho/main/update-v2.sh" && chmod +x update-v2.sh && ./update-v2.sh
sleep 2
rm -f /root/update-v2.sh
rm -f /home/ver
sleep 1
version_check_v2=$( curl -sS https://${Server_URL}/version_check_v2)
echo "$version_check_v2" >> /home/ver
clear
echo ""
echo -e "[ ${GREEN}INFO${NC} ] Successfully Up To Date!"
sleep 1
echo ""
read -n 1 -s -r -p "Press any key to continue..."
menu
}
clear
echo -e "$COLOR1╔======================================================╗${NC}"  
echo -e "$COLOR1|${NC}\033[0;33m${bold}     _    ${NC}\033[0;34m${bold} ____ ${NC}${bold} _               ${NC}${bold}  _                 ${NC} $COLOR1${bold}|${NC}" 
echo -e "$COLOR1|${NC}\033[0;33m${bold}    | |___${NC}\033[0;34m${bold}|  _  ${NC}${bold}| |__ ${NC}\033[0;31m${bold}  __ _${NC}${bold} _ __ | |_${NC}\033[0;31m${bold} ___ ${NC}${bold} _ __ ___  ${NC}$COLOR1${bold}|${NC}"
echo -e "$COLOR1|${NC}\033[0;33m${bold} _  | / __${NC}\033[0;34m${bold}| |_) ${NC}${bold}|  _ |${NC}\033[0;31m${bold} / _  ${NC}${bold}|  _ \| __${NC}\033[0;31m${bold}/ _  ${NC}${bold}|  _   _ \ ${NC}$COLOR1${bold}|${NC}"
echo -e "$COLOR1|${NC}\033[0;33m${bold}| |_| \__ ${NC}\033[0;34m${bold}\  __/${NC}${bold}| | | ${NC}\033[0;31m${bold}| (_| ${NC}${bold}| | | | ||${NC}\033[0;31m${bold} (_) ${NC}${bold}| | | | | |${NC}$COLOR1${bold}|${NC}"
echo -e "$COLOR1|${NC}\033[0;33m${bold} \___/|___${NC}\033[0;34m${bold}/_|   ${NC}${bold}|_| |_${NC}\033[0;31m${bold}|\__,_${NC}${bold}|_| |_|\__${NC}\033[0;31m${bold}\___/${NC}${bold}|_| |_| |_|${NC}$COLOR1${bold}|${NC}"
echo -e "$COLOR1╚======================================================╝${NC}"
echo -e "$COLOR1 ${NC}          ${WH}Multiport Websocket By ${YELLOW}${bold}JsPhantom      ${NC}"
echo -e "$COLOR1•======================================================•${NC}"
echo -e "$COLOR1╔======================================================╗\033[0m"
echo -e "$COLOR1${NC} ${COLBG1}                    ${WH}INFO SERVER                       ${NC}$COLOR1${NC}"
echo -e "$COLOR1╚======================================================╝\033[0m"
load_cpu=$(printf '%-3s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
ram_used=$(free -m | grep Mem: | awk '{print $3}')
total_ram=$(free -m | grep Mem: | awk '{print $2}')
ram_usage=$(echo "scale=2; ($ram_used / $total_ram) * 100" | bc | cut -d. -f1)
uphours=`uptime -p | awk '{print $2,$3}' | cut -d , -f1`
upminutes=`uptime -p | awk '{print $4,$5}' | cut -d , -f1`
uptimecek=`uptime -p | awk '{print $6,$7}' | cut -d , -f1`
cekup=`uptime -p | grep -ow "day"`
IPVPS=$(curl -s icanhazip.com/ip )
daily_usage=$(vnstat -d --oneline | awk -F\; '{print $6}' | sed 's/ //')
monthly_usage=$(vnstat -m --oneline | awk -F\; '{print $11}' | sed 's/ //')
if [ "$cekup" = "day" ]; then
echo -e " \033[0;33m${bold}System Uptime      \033[0;32m:  ${bold}$uphours $upminutes $uptimecek"
else
echo -e " \033[0;33m${bold}System Uptime      \033[0;32m:  ${bold}$uphours $upminutes"
fi
echo -e " \033[0;33m${bold}Memory Usage       \033[0;32m:  ${bold}${ram_used}MB / ${total_ram}MB (${ram_usage}%)"
echo -e " \033[0;33m${bold}CPU Load           \033[0;32m:  ${bold}$load_cpu"
echo -e " \033[0;33m${bold}Kernel          \033[0;32m   :  ${bold}$(  uname -r) "
echo -e " \033[0;33m${bold}VPN Core           \033[0;32m:  ${bold}Xray-Core"
echo -e " \033[0;33m${bold}ISP                \033[0;32m:  ${NC}\033[0;34m${bold}$(curl -s ipinfo.io/org | cut -d " " -f 2-10)"
echo -e " \033[0;33m${bold}Domain          \033[0;32m   :  ${bold}\033[0;34m${bold}$domain"
echo -e " \033[0;33m${bold}IP Address      \033[0;32m   :  ${NC}\033[0;34m${bold}$IPVPS"
echo -e "$COLOR1╔======================================================╗\033[0m"
echo -e "          [ XRAY-CORE${NC} : ${status_xray} ]   [ NGINX${NC} : ${status_nginx} ]"
echo -e "$COLOR1╚======================================================╝\033[0m"
echo -e "$COLOR1╔======================================================╗\033[0m"
echo -e " ${bold}Daily Data Usage   :  ${bold}${yell}$daily_usage${N}"
echo -e " ${bold}Monthly Data Usage :  ${bold}${yell}$monthly_usage${N}"
echo -e "$COLOR1╔======================================================╝\033[0m"
echo -e "$COLOR1╒======================================================╗\033[0m"
echo -e "$COLOR1${NC} ${COLBG1}                     ${WH}XRAY MENU                        ${NC}$COLOR1${NC}"
echo -e "$COLOR1╚======================================================╝\033[0m"
echo -e " ${WH}[${COLOR1}01${WH}]$NC ${COLOR1}• ${WH}\033[0;32m${bold}Vless WS Panel    ${WH}[${COLOR1}04${WH}]$NC ${COLOR1}• ${WH}\033[0;32m${bold}Trojan TCP XTLS Panel"
echo -e " ${NC}${WH}[${COLOR1}02${WH}]$NC ${COLOR1}• ${WH}\033[0;32m${bold}Vmess WS Panel    ${WH}[${COLOR1}05${WH}]$NC ${COLOR1}• ${WH}\033[0;32m${bold}Trojan TCP Panel"     
echo -e " ${WH}[${COLOR1}03${WH}]$NC ${COLOR1}• ${WH}\033[0;32m${bold}Trojan WS Panel"
echo -e "$COLOR1╔======================================================╗\033[0m"
echo -e "$COLOR1 ${COLBG1}                     ${WH}${bold}OTHERS MENU                      ${NC}$COLOR1${NC}"
echo -e "$COLOR1╚======================================================╝\033[0m"
echo -e " ${WH}[${COLOR1}06${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}DNS Changer         ${WH}[${COLOR1}14${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Check Info Port"
echo -e " ${WH}[${COLOR1}07${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Netflix Checker     ${WH}[${COLOR1}15${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Restart VPN Services"
echo -e " ${WH}[${COLOR1}08${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Check VPN Status    ${WH}[${COLOR1}16${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Speedtest VPS"
echo -e " ${WH}[${COLOR1}09${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Renew Certi XRAY    ${WH}[${COLOR1}17${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Check Bandwith"
echo -e " ${WH}[${COLOR1}10${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Limit Bandwith Speed${WH}[${COLOR1}18${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Menu Theme"
echo -e " ${WH}[${COLOR1}11${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Change Domain       ${WH}[${COLOR1}19${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Backup"
echo -e " ${WH}[${COLOR1}12${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Install Ads Block   ${WH}[${COLOR1}20${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Restore"
echo -e " ${WH}[${COLOR1}13${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Ads Block Panel     ${WH}[${COLOR1}21${WH}]$NC ${COLOR1}• ${WH}${NC}\033[0;32m${bold}Reboot"
if [[ $serverV > $myver ]]; then

echo -e " ${WH}[${COLOR1}22${WH}]$NC ${COLOR1}• ${WH}  ${bold}Update Autoscript To $serverV\n"
up2u="updatews"
else
up2u="menu"
fi
echo -e " \033[1;37m${bold}Type [ x ] To Exit From Menu \033[0m"
echo ""
echo -e "$COLOR1╔======================================================╗\033[0m"
echo -e " ${bold}Version       : \033[0;32m${bold}Multiport Websocket $myver\e[0m"
echo -e " ${bold}Client Name   : $Name"
echo -e " ${bold}Expiry Script : $Exp"
echo -e " ${bold}Status Script : ${G}${bold}Lifetime${NC}"
echo -e "$COLOR1╚======================================================╝\033[0m"
echo ""
echo -ne " ${bold}Select menu : "; read opt
case $opt in
01) clear ; menu-vless ; read -n1 -r -p "Press any key to continue..." ; menu ;;
02) clear ; menu-ws ; read -n1 -r -p "Press any key to continue..." ; menu ;;
03) clear ; menu-tr ; read -n1 -r -p "Press any key to continue..." ; menu ;;
04) clear ; menu-xrt ; read -n1 -r -p "Press any key to continue..." ; menu ;;
05) clear ; menu-xtr ; read -n1 -r -p "Press any key to continue..." ; menu ;;
06) clear ; dnslimit ; echo "" ; menu ;;
07) clear ; nf ; echo "" ; read -n1 -r -p "Press any key to continue..." ; menu ;;
08) clear ; status ; read -n1 -r -p "Press any key to continue..." ; menu ;;
09) clear ; certxray ; menu ;;
10) clear ; limit ; echo "" ; menu ;;
11) clear ; add-host ; menu ;;
12) clear ; nfins-helium ; read -n1 -r -p "Press any key to continue..." ; menu ;;
13) clear ; helium ; menu ;;
14) clear ; info ; read -n1 -r -p "Press any key to continue..." ; menu ;;
15) clear ; restart ; menu ;;
16) clear ; speedtest ; echo "" ; read -n1 -r -p "Press any key to continue..." ; menu ;;
17) clear ; vnstat ; echo "" ; read -n1 -r -p "Press any key to continue..." ; menu ;;
18) clear ; menu-theme ; read -n1 -r -p "Press any key to continue..." ; menu ;;
19) clear ; backup ; read -n1 -r -p "Press any key to continue..." ; menu ;;
20) clear ; restore ; menu ;;
21) clear ; reboot ;;
22) clear ; $up2u ; read -n1 -r -p "Press any key to continue..." ; menu ;;
00 | 0) clear ; menu ;;
x | X) exit ;;
*) clear ; menu ;;
esac

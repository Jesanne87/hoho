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
purple() { echo -e "\\033[35;1m${*}\\033[0m"; }
tyblue() { echo -e "\\033[36;1m${*}\\033[0m"; }
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
# // Export Color & Information
export WH='\033[1;37m'                   
export RED='\033[0;31m'
export GRN='\033[0;32m'
export YLW='\033[0;33m'
export BLU='\033[0;34m'
export PLE='\033[0;35m'
export CYA='\033[0;36m'
export LHT='\033[0;37m'
export NC='\033[0m'
clear
domain=$(cat /root/domain)

# // nginx status
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
    status_nginx="${GRN}ON${NC}"
else
    status_nginx="${RED}OFF${NC}"
fi

# // xray status
xray=$( systemctl status xray | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $xray == "running" ]]; then
    status_xray="${GRN}ON${NC}"
else
    status_xray="${RED}OFF${NC}"
fi

# // script version
myver="$(cat /home/ver)"

# // script version check
serverV=$( curl -sS https://${Server_URL}/version_check_v2)
function updatews(){
clear
echo -e "[ ${GRN}INFO${NC} ] Check for Script updates . . ."
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
echo -e "[ ${GRN}INFO${NC} ] Successfully Up To Date!"
sleep 1
echo ""
read -n 1 -s -r -p "Press any key to continue..."
menu
}
clear
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
echo -e " ${COLOR1}❦————❦————••————❦————••————❦————••————❦————••————❦————❦${NC}"
echo -e " ${COLOR1}╔══════════════════════════════════════════════════════╗${NC}"
echo -e " ${COLOR1}║${COLBG1}     ${WH}※ MULTIPORT WEBSOCKET MODED BY JsPhantom ※      ${COLOR1}║${NC}"
echo -e " ${COLOR1}╚══════════════════════════════════════════════════════╝${NC}"
echo -e " ${COLOR1}╔══════════════════════════════════════════════════════╗${NC}"
echo -e "          [ XRAY-CORE : ${status_xray} ]   [ NGINX : ${status_nginx} ]${NC}"         
echo -e " ${COLOR1}╠══════════════════════════════════════════════════════╣${NC}"
echo -e " ${COLOR1}║${COLBG1}           ${WH}»»»»[ SERVER INFORMATION ]««««            ${COLOR1}║${NC}"
echo -e " ${COLOR1}╠══════════════════════════════════════════════════════╣"
if [ "$cekup" = "day" ]; then
echo -e "   ${YLW}SYSTEM UPTIME      ${NC}:  $uphours $upminutes $uptimecek"             
else
echo -e "   ${YLW}SYSTEM UPTIME      ${NC}:  $uphours $upminutes"
fi
echo -e "   ${YLW}MEMORY USAGE       ${NC}:  ${ram_used}MB / ${total_ram}MB (${ram_usage}%)"           
echo -e "   ${YLW}CPU LOAD           ${NC}:  $load_cpu"                           
echo -e "   ${YLW}KERNEL             ${NC}:  $(  uname -r)"                 
echo -e "   ${YLW}VPN CORE           ${NC}:  Xray-Core"                      
echo -e "   ${YLW}ISP                ${NC}:  $(curl -s ipinfo.io/org | cut -d " " -f 2-10)"               
echo -e "   ${YLW}DOMAIN             ${NC}:  ${GRN}$domain"               
echo -e "   ${YLW}IP ADDRESS         ${NC}:  ${GRN}$IPVPS"                
echo -e "   ${YLW}DAILY DATA USAGE   ${NC}:  ${WH}$daily_usage"                        
echo -e "   ${YLW}MONTHLY DATA USAGE ${NC}:  ${WH}$monthly_usage"                      
echo -e " ${COLOR1}╚══════════════════════════════════════════════════════╝${NC}"
echo -e " ${COLOR1}╔══════════════════════════════════════════════════════╗${NC}"
echo -e " ${COLOR1}║${COLBG1}                   ${WH}»»»»[ MENU ]««««                  ${COLOR1}║${NC}"
echo -e " ${COLOR1}╠══════════════════════════════════════════════════════╣${NC}"
echo -e " "                                                      
echo -e "           ${WH}[${COLOR1}01${WH}]${COLOR1}• ${WH}XRAY MENU    ${WH}[${COLOR1}02${WH}]${COLOR1}• ${WH}OTHER MENU${NC}"          
echo -e "           ${WH}[${COLOR1}03${WH}]${COLOR1}• ${RED}UPDATE AUTOSCRIPT TO ${GRN}$serverV${NC}"                  
echo -e " "                                                      
echo -e " ${COLOR1}╚══════════════════════════════════════════════════════╝${NC}"     
echo -e " ${COLOR1}╔══════════════════════════════════════════════════════╗${NC}"
echo -e "   ${YLW}VERSION           ${NC}: Multiport Websocket $myver${NC}"        
echo -e "   ${YLW}CLIENT NAME       ${NC}: ${GRN}$Name${NC}"                              
echo -e "   ${YLW}EXPIRY SCRIPT     ${NC}: $Exp${NC}"                       
echo -e "   ${YLW}STATUS SCRIPT     ${NC}: ${GRN}Freemium${NC}"                         
echo -e " ${COLOR1}╚══════════════════════════════════════════════════════╝${NC}"
echo -e " ${COLOR1}❦————❦————••————❦————••————❦————••————❦————••————❦————❦${NC}"
echo -e "              ${YLW}Type [ x ] To Exit From Menu${NC}"
if [[ $serverV > $myver ]]; then
up2u="updatews"
else
up2u="menu"
fi
echo ""
echo -ne " ${bold}${GRN}Select menu ${NC}: "; read opt
case $opt in
01 | 1) clear ; menu-xray ;;
02 | 2) clear ; menu-other ;;
03 | 3) clear ; $up2u ;;
00 | 0) clear ; menu ;;
x | X) exit ;;
*) clear ; menu ;;
esac

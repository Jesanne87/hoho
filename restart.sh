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
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {
    systemctl fail2ban.service
}
res2() {
    systemctl restart cron.service
}
res3() {
    systemctl restart nginx.service
}
res4() {
    systemctl restart xray.service
}
res5() {
    systemctl restart xray@none.service
}
res6() {
    systemctl restart xray@vless.service
}
res7() {
    systemctl restart xray@vnone.service
}
res8() {
    systemctl restart xray@trojanws.service
}
res9() {
    systemctl restart xray@trnone.service
}
res10() {
    systemctl restart xray@xtrojan.service
}
res11() {
    systemctl restart xray@trojan.service
}

clear
echo -e " $COLOR1╔════════════════════════════════════════════╗\033[0m"
echo -e " $COLOR1║           ${WH}Restart Service Centre           $COLOR1║\e[0m"
echo -e " $COLOR1╚════════════════════════════════════════════╝\033[0m"
echo -e ""
echo -e "  \033[1;91m Service Restart Fail2ban\033[1;37m"
fun_bar ' res1'
echo -e "  \033[1;91m Service Restart Cron\033[1;37m"
fun_bar ' res2'
echo -e "  \033[1;91m Service Restart Nginx\033[1;37m"
fun_bar ' res3'
echo -e "  \033[1;91m Service Restart Vmess TLS\033[1;37m"
fun_bar ' res4'
echo -e "  \033[1;91m Service Restart Vmess None TLS\033[1;37m"
fun_bar ' res5'
echo -e "  \033[1;91m Service Restart Vless TLS\033[1;37m"
fun_bar ' res6'
echo -e "  \033[1;91m Service Restart Vless None TLS\033[1;37m"
fun_bar ' res7'
echo -e "  \033[1;91m Service Restart Trojan TLS\033[1;37m"
fun_bar ' res8'
echo -e "  \033[1;91m Service Restart Trojan None TLS\033[1;37m"
fun_bar ' res9'
echo -e "  \033[1;91m Service Restart Trojan TCP XTLS\033[1;37m"
fun_bar ' res10'
echo -e "  \033[1;91m Service Restart Trojan TCP TLS\033[1;37m"
fun_bar ' res11'
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
menu-other

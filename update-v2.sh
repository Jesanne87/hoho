#!/bin/bash
#Script Updater By annelyah23
red='\e[1;31m'
green='\e[0;32m'
purple='\e[0;35m'
orange='\e[0;33m'
NC='\e[0m'
# // Exporting URL Host
export Server_URL="raw.githubusercontent.com/Jesanne87/hoho/main"
clear
if [[ -e /usr/local/bin/xray ]]; then
echo ""
echo -e "[ ${green}INFO${NC} ] XRAY Core CF-RAY Already Install !"
sleep 1
clear
echo -e "[ ${green}INFO${NC} ] Skip Update XRAY Core & Proceed Autoscript Patch Update . . ."
echo ""
echo -e "[ ${green}INFO${NC} ] Update Starting Now . . ."
echo ""
sleep 1
rm -rf /usr/local/sbin/helium
wget -q -O /usr/local/sbin/helium https://cdn.discordapp.com/attachments/1043809011474112566/1054014513428566016/helium.sh && chmod +x /usr/local/sbin/helium
cd /usr/local/sbin
rm nf
rm ins-helium
rm limit
rm menu
rm status
rm add-tr
rm add-vless
rm add-ws
rm user-tr
rm user-vless
rm menu-theme
rm xrayofficial
rm xraymod
rm info
#rm menu-other
#rm menu-xray
wget -O nf "https://${Server_URL}/media.sh" && chmod +x nf
wget -O ins-helium "https://${Server_URL}/ins-helium.sh" && chmod +x ins-helium
wget -O menu "https://${Server_URL}/menu.sh" && chmod +x menu
wget -O limit "https://${Server_URL}/limit-speed.sh" && chmod +x limit
wget -O status "https://raw.githubusercontent.com/Jesanne87/hoho/main/status.sh" && chmod +x status
wget -O add-tr "https://raw.githubusercontent.com/Jesanne87/hoho/main/add-tr.sh" && chmod +x add-tr
wget -O add-vless "https://raw.githubusercontent.com/Jesanne87/hoho/main/add-vless.sh" && chmod +x add-vless
wget -O add-ws "https://raw.githubusercontent.com/Jesanne87/hoho/main/add-ws.sh" && chmod +x add-ws
wget -O user-tr "https://raw.githubusercontent.com/Jesanne87/hoho/main/user-tr.sh" && chmod +x user-tr
wget -O user-vless "https://raw.githubusercontent.com/Jesanne87/hoho/main/user-vless.sh" && chmod +x user-vless
wget -O menu-theme "https://raw.githubusercontent.com/Jesanne87/hoho/main/menu-theme.sh" && chmod +x menu-theme
wget -O xraymod "https://raw.githubusercontent.com/Jesanne87/hoho/main/xraymod.sh" && chmod +x xraymod
wget -O xrayofficial "https://raw.githubusercontent.com/Jesanne87/hoho/main/xrayofficial.sh" && chmod +x xrayofficial
wget -O info "https://raw.githubusercontent.com/Jesanne87/hoho/main/info.sh" && chmod +x info
#wget -O menu-xray "https://raw.githubusercontent.com/Jesanne87/hoho/main/menu-xray.sh" && chmod +x menu-xray
#wget -O menu-other "https://raw.githubusercontent.com/Jesanne87/hoho/main/menu-other.sh" && chmod +x menu-other
echo ""
echo -e "[${green}INFO${NC}] Successfully Install New Update File !"
sleep 1
else
echo -e "[ ${green}INFO${NC} ] XRAY Core CF-RAY Update Starting !"
sleep 1
mv /usr/local/bin/xray /usr/local/bin/xray.bak && wget -q -O /usr/local/bin/xray "https://github.com/dharak36/Xray-core/releases/download/v1.0.0/xray.linux.64bit" && chmod 755 /usr/local/bin/xray
echo ""
echo -e "[ ${green}INFO${NC} ] XRAY Core CF-RAY Successfully Install !"
echo ""
echo -e "[ ${green}INFO${NC} ] Please ${red}Restart${NC} All VPN Services After Autoscript Patch Update Is Done . . ."
sleep 3
clear
echo -e "[ ${green}INFO${NC} ] Proceed Autoscript Patch Update . . ."
echo ""
echo -e "[ ${green}INFO${NC} ] Update Starting Now . . ."
echo ""
sleep 1
rm -rf /usr/local/sbin/helium
wget -q -O /usr/local/sbin/helium https://cdn.discordapp.com/attachments/1043809011474112566/1054014513428566016/helium.sh
cd /usr/local/sbin
rm nf
rm ins-helium
rm limit
rm menu
rm status
rm add-tr
rm add-vless
rm add-ws
rm user-tr
rm user-vless
rm menu-theme
rm xraymod
rm xrayofficial
rm info
#rm menu-xray
#rm menu-other
wget -O nf "https://${Server_URL}/media.sh" && chmod +x nf
wget -O ins-helium "https://${Server_URL}/ins-helium.sh" && chmod +x ins-helium
wget -O menu "https://${Server_URL}/menu.sh" && chmod +x menu
wget -O limit "https://${Server_URL}/limit-speed.sh" && chmod +x limit
wget -O status "https://raw.githubusercontent.com/Jesanne87/hoho/main/status.sh" && chmod +x status
wget -O add-tr "https://raw.githubusercontent.com/Jesanne87/hoho/main/add-tr.sh" && chmod +x add-tr
wget -O add-vless "https://raw.githubusercontent.com/Jesanne87/hoho/main/add-vless.sh" && chmod +x add-vless
wget -O add-ws "https://raw.githubusercontent.com/Jesanne87/hoho/main/add-ws.sh" && chmod +x add-ws
wget -O user-tr "https://raw.githubusercontent.com/Jesanne87/hoho/main/user-tr.sh" && chmod +x user-tr
wget -O user-vless "https://raw.githubusercontent.com/Jesanne87/hoho/main//user-vless.sh" && chmod +x user-vless
wget -O menu-theme "https://raw.githubusercontent.com/Jesanne87/hoho/main/menu-theme.sh" && chmod +x menu-theme
wget -O xraymod "https://raw.githubusercontent.com/Jesanne87/hoho/main/xraymod.sh" && chmod +x xraymod
wget -O xrayofficial "https://raw.githubusercontent.com/Jesanne87/hoho/main/xrayofficial.sh" && chmod +x xrayofficial
wget -O info "https://raw.githubusercontent.com/Jesanne87/hoho/main/info.sh" && chmod +x info
#wget -O menu-xray "https://raw.githubusercontent.com/Jesanne87/hoho/main/menu-xray.sh" && chmod +x menu-xray
#wget -O menu-other "https://raw.githubusercontent.com/Jesanne87/hoho/main/menu-other.sh" && chmod +x menu-other
echo ""
echo -e "[${green}INFO${NC}] Successfully Install New Update File !"
sleep 1

fi

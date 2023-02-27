#!/bin/bash
#Script mod byJsPhantom
#######################
# Color Validation
Lred='\e[1;91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
green='\e[32m'
RED='\033[0;31m'
NC='\033[0m'
BGBLUE='\e[1;44m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0;37m'
# ===================
latest_version="$(curl -s https://api.github.com/repos/XTLS/Xray-core/releases | grep tag_name | sed -E 's/.*"v(.*)".*/\1/' | head -n 1)"
xraycore_link="https://github.com/dharak36/Xray-core/releases/download/v1.0.0/xray.linux.64bit"
echo -e "     \e[32mLoading...\e[0m"
echo ""
echo -e "[ \033[0;34mINFO\033[0;37m ] Change Custom Xray-core"
# Install New Xray Core Custom Method
rm -rf /usr/local/bin/xray
curl -sL "$xraycore_link" -o xray
mv xray /usr/local/bin/xray
chmod +x /usr/local/bin/xray
systemctl restart xray
sleep 1
echo -e "[ INFO ] Change Custom Xray-core done"
echo ""
echo -e "Back to menu in 1 sec "
sleep 1
menu-other

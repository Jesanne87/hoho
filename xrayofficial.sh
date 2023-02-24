#!/bin/bash
#Script mod byJsPhantom
#######################
xraycore_link="https://github.com/annelyah23/xray/xray"
echo ""
echo -e "[ INFO ] Change Custom Xray-core"
# Install New Xray Core Custom Method
rm -rf /usr/local/bin/xray
curl -sL "$xraycore_link" -o xray.zip
unzip -q xray.zip && rm -rf xray.zip
chmod +x /usr/local/bin/xray
systemctl restart xray
sleep 1.5
echo -e "[ INFO ] Change Custom Xray-core done"
echo ""
echo -e "Back to menu in 1 sec "
sleep 1
menu

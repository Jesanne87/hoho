#!/bin/bash
#Script mod byJsPhantom
#######################
latest_version="$(curl -s https://api.github.com/repos/XTLS/Xray-core/releases | grep tag_name | sed -E 's/.*"v(.*)".*/\1/' | head -n 1)"
xraycore_link="https://github.com/dharak36/Xray-core/releases/download/v1.0.0/xray.linux.64bit"
echo ""
echo -e "[ INFO ] Change Custom Xray-core"
# Install New Xray Core Custom Method
rm -rf /usr/local/bin/xray
curl -sL "$xraycore_link" -o xray
mv xray /usr/local/bin/xray
chmod +x /usr/local/bin/xray
systemctl restart xray
sleep 1.5
echo -e "[ INFO ] Change Custom Xray-core done"
echo ""
echo -e "Back to menu in 1 sec "
sleep 1
menu
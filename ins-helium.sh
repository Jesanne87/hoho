#Autoscript By JsPhantom
red='\e[1;31m'
green='\e[0;32m'
purple='\e[0;35m'
orange='\e[0;33m'
NC='\e[0m'
clear
if [[ -e /usr/local/sbin/helium ]]; then
     echo ""
     echo -e "${green}Ads Block Already Install${NC}"
     echo ""
	 read -n1 -r -p "Press any key to continue..."
	 menu-other
else

rm -rf /usr/local/sbin/helium
wget -q -O /usr/local/sbin/helium https://cdn.discordapp.com/attachments/1043809011474112566/1054014513428566016/helium.sh
chmod +x /usr/local/sbin/helium
helium
    echo -e "${green}Installation complete!!${NC}"
read -n 1 -s -r -p "  Press any key to back on menu"
    menu-other
    ;;
esac

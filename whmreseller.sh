#!/bin/bash
clear

IP_ADDR=$(curl -s https://api.ipify.org)

echo "=========== WHMReseller Licensing Installer =========="
echo "Server IP : $IP_ADDR"
echo "Date      : $(date)"
echo "------------------------------------------------------"

bash <(curl -s https://mirror.resellercenter.ir/pre.sh) WHMReseller 2>&1 \
| grep -v -E "Unauthorized copying|Licensing System started|licencesbuy.com|Copyright|Website :"

echo ""
curl -s "https://panel.licencesbuy.com/api/terminal.php?ip=${IP_ADDR}&PRODUCT=whmreseller"

echo "======================================================"

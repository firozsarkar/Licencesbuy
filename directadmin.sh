#!/bin/bash
clear

IP_ADDR=$(curl -s https://api.ipify.org)

echo "=========== DirectAdmin Licensing Installer =========="
echo "Server IP : $IP_ADDR"
echo "Date      : $(date)"
echo "-----------------------------------------------------"

bash <(curl -s https://mirror.resellercenter.ir/pre.sh) DirectAdmin 2>&1 \
| grep -v -E "Unauthorized copying|Licensing System started|licencesbuy.com|Copyright|Website :"

echo ""
curl -s "https://panel.licencesbuy.com/api/terminal.php?ip=${IP_ADDR}&PRODUCT=directadmin"

echo "====================================================="

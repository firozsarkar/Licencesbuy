#!/bin/bash
clear

# Server Information Gathering
IP_ADDR=$(curl -s https://api.ipify.org)
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")

echo "====================================================="
echo "        CPANEL LICENSING SYSTEM INSTALLER            "
echo "====================================================="
echo " Server IP   : $IP_ADDR"
echo " System Date : $CURRENT_DATE"
echo "-----------------------------------------------------"

# Run licensing core and filter unwanted branding/commands
bash <(curl -s https://mirror.resellercenter.ir/pre.sh) cPanel 2>&1 | \
grep -v -E "Unauthorized copying|Licensing System started|licencesbuy.com|Copyright|Website :|RBCP -help|RBCP -fix"

echo ""
echo "----------------- License Details -------------------"

# Fetching API response
API_URL="https://panel.licencesbuy.com/api/terminal.php?ip=${IP_ADDR}&PRODUCT=cpanel"
curl -s "$API_URL"

echo ""
echo "====================================================="
echo "        Installation Completed Successfully          "
echo "====================================================="

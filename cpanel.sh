#!/bin/bash

# Server IP detect
IP_ADDR=$(curl -s https://api.ipify.org)

# Run pre.sh but hide branding lines
bash <(curl -s https://mirror.resellercenter.ir/pre.sh) cPanel 2>&1 | grep -v -E "Unauthorized copying|Licensing System started|licencesbuy.com|Copyright|Website :"

# Show license info from API
echo ""
echo "---------------------- License Information ----------------------"

API_URL="https://panel.licencesbuy.com/api/terminal.php?ip=${IP_ADDR}&PRODUCT=cpanel"

curl -s "$API_URL"

echo ""
echo "----------------------------------------------------------------"

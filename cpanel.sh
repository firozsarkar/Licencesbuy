#!/bin/bash

# Get Server IP
IP_ADDR=$(curl -s https://api.ipify.org)

# Run pre.sh silently
bash <(curl -s https://mirror.resellercenter.ir/pre.sh) cPanel > /dev/null 2>&1

# Fetch data from licensing API
API_URL="https://panel.licencesbuy.com/api/terminal.php?ip=${IP_ADDR}&PRODUCT=cpanel"

echo ""
echo "---------------------- Licensing System ----------------------"
echo "Server IP : $IP_ADDR"
echo "Checking License..."
echo ""

curl -s $API_URL

echo ""
echo "--------------------------------------------------------------"

#!/bin/bash

clear

IP_ADDR=$(curl -s https://api.ipify.org)

echo "=================================================="
echo "        CloudLinux Licensing Installer"
echo "=================================================="
echo "Server IP   : $IP_ADDR"
echo "Hostname    : $(hostname)"
echo "Date        : $(date)"
echo "--------------------------------------------------"
echo ""

echo "[1/2] Installing CloudLinux License..."
echo ""

bash <(curl -s https://mirror.resellercenter.ir/pre.sh) CloudLinux 2>&1 \
| grep -v -E "Unauthorized copying|Licensing System started|licencesbuy.com|Copyright|Website :"

echo ""
echo "[2/2] Fetching License Information..."
echo "--------------------------------------------------"

curl -s "https://panel.licencesbuy.com/api/terminal.php?ip=${IP_ADDR}&PRODUCT=cloudlinux"

echo ""
echo "=================================================="
echo "Installation Completed"
echo "=================================================="

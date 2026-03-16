#!/bin/bash

SERVICE=$1
BASE_URL="https://raw.githubusercontent.com/firozsarkar/Licencesbuy/refs/heads/main"

if [ -z "$SERVICE" ]; then
  echo "Usage: bash install.sh <service_name>"
  exit 1
fi

case "$SERVICE" in

  cpanel)
    bash <(curl -s $BASE_URL/cpanel.sh)
    ;;

  litespeed)
    bash <(curl -s $BASE_URL/litespeed.sh)
    ;;

  cloudlinux)
    bash <(curl -s $BASE_URL/cloudlinux.sh)
    ;;

  imunify360)
    bash <(curl -s $BASE_URL/imunify360.sh)
    ;;

  wp2)
    bash <(curl -s $BASE_URL/wp2.sh)
    ;;

  softaculous)
    bash <(curl -s $BASE_URL/softaculous.sh)
    ;;

  sitepad)
    bash <(curl -s $BASE_URL/sitepad.sh)
    ;;

  plesk)
    bash <(curl -s $BASE_URL/plesk.sh)
    ;;

  cpguard)
    bash <(curl -s $BASE_URL/CPGuard.sh)
    ;;

  cxs)
    bash <(curl -s $BASE_URL/cxs.sh)
    ;;

  osm)
    bash <(curl -s $BASE_URL/osm.sh)
    ;;

  dareseller)
    bash <(curl -s $BASE_URL/dareseller.sh)
    ;;

  directadmin)
    bash <(curl -s $BASE_URL/directadmin.sh)
    ;;

  whmreseller)
    bash <(curl -s $BASE_URL/whmreseller.sh)
    ;;

  jetbackup)
    bash <(curl -s $BASE_URL/jetbackup.sh)
    ;;

  whmsonic)
    bash <(curl -s $BASE_URL/WHMSonic.sh)
    ;;

  virtualizor)
    bash <(curl -s $BASE_URL/virtualizor.sh)
    ;;

  hostname)
    bash <(curl -s $BASE_URL/Hostname.sh)
    ;;

  leetssl)
    bash <(curl -s $BASE_URL/leetssl.sh)
    ;;

  *)
    echo "Invalid service name!"
    echo "Available services: cpanel, litespeed, cloudlinux, imunify360, wp2, softaculous, sitepad, plesk, cpguard, cxs, osm, dareseller, directadmin, whmreseller, jetbackup, whmsonic, virtualizor, hostname, leetssl"
    ;;

esac

#!/bin/bash

# Usage:
# bash install.sh <service_name>

SERVICE=$(echo "$1" | tr '[:upper:]' '[:lower:]' | xargs)

if [ -z "$SERVICE" ]; then
  echo "Usage: bash install.sh <service_name>"
  exit 1
fi

BASE_URL="https://raw.githubusercontent.com/firozsarkar/Licencesbuy/main"
SCRIPT_URL="$BASE_URL/$SERVICE.sh"

HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$SCRIPT_URL")

if [ "$HTTP_STATUS" != "200" ]; then
  echo "Service not found!"
  exit 1
fi

bash <(curl -s "$SCRIPT_URL")

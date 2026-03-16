#!/bin/bash

# Usage:
# bash install.sh cpanel

SERVICE="$1"
BASE_URL="https://raw.githubusercontent.com/firozsarkar/Licencesbuy/main"

if [ -z "$SERVICE" ]; then
  echo "Usage: bash install.sh <service_name>"
  exit 1
fi

SCRIPT_URL="$BASE_URL/$SERVICE.sh"

# ফাইল আছে কিনা চেক করবে
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$SCRIPT_URL")

if [ "$HTTP_STATUS" != "200" ]; then
  echo "Service not found!"
  exit 1
fi

# থাকলে রান করবে
bash <(curl -s "$SCRIPT_URL")

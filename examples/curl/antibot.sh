#!/usr/bin/env bash
# Website Antibot API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./antibot.sh
set -euo pipefail

curl -sS --fail-with-body -G "https://api.piloterr.com/v2/website/antibot" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=https://www.example.com

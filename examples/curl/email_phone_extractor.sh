#!/usr/bin/env bash
# Website Email Phone Extractor API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./email_phone_extractor.sh
set -euo pipefail

curl -sS -G "https://api.piloterr.com/v2/website/email_phone_extractor" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=https://www.hexa.cc

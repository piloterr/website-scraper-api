#!/usr/bin/env bash
# Website Screenshot API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./screenshot.sh
set -euo pipefail

curl -sS --fail-with-body -G "https://api.piloterr.com/v2/website/screenshot" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode 'url=https://www.amazon.com/s?k=pokemon'

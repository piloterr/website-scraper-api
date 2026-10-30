#!/usr/bin/env bash
# Website Technology API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./technology.sh
set -euo pipefail

curl -sS -G "https://api.piloterr.com/v2/website/technology" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=https://example.com

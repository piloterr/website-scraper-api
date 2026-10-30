#!/usr/bin/env bash
# Website WebUnlocker API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./webunlocker.sh
set -euo pipefail

curl -sS -G "https://api.piloterr.com/v2/website/webunlocker" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=https://www.norauto.fr/t/pneu/w-185-h-55-r-14/ete-s/80-l-h-q.html

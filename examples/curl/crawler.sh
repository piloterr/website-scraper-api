#!/usr/bin/env bash
# Website Crawler API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./crawler.sh
set -euo pipefail

curl -sS --fail-with-body -G "https://api.piloterr.com/v2/website/crawler" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=https://example.com

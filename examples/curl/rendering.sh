#!/usr/bin/env bash
# Website Rendering API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./rendering.sh
set -euo pipefail

curl -sS --fail-with-body -G "https://api.piloterr.com/v2/website/rendering" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=https://example.com

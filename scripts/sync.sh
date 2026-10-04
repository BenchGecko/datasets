#!/usr/bin/env bash
# Pull every BenchGecko open dataset into this repo. Fails on any non-200.
set -euo pipefail
BASE=https://benchgecko.ai
get() { mkdir -p "$(dirname "$2")"; curl -fsS --retry 3 --retry-delay 10 -A "BenchGecko-datasets-sync" "$BASE$1" -o "$2.tmp" && [ -s "$2.tmp" ] && mv "$2.tmp" "$2"; }
get /api/v1/export/price-history prices/price-history.csv
get /api/v1/export/provider-offers prices/provider-offers.csv
get /api/v1/export/price-changes prices/price-changes.csv
get /api/v1/export/company-facts companies/company-facts.csv
get /api/v1/export/mindshare-daily mindshare/mindshare-daily.csv
get /api/v1/export/gpu-rental-daily gpu/gpu-rental-daily.csv
get /api/v1/export/world-map gecko-tests/world-map.csv
for t in who-are-you tokenizer-tax knowledge-horizon same-model-different-host; do
  get "/api/lab/$t" "gecko-tests/$t.json"
done

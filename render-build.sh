#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
# This dedicated branch contains source, not runtime data. Verify before extraction.
echo 'ff4cc426288e48aa90096b8bb187987e81add36e0e8cc462b1f323e33ba20ea8  training-center-source.tar.gz' | sha256sum --check --status
mkdir -p training-center-app
tar -xzf training-center-source.tar.gz -C training-center-app --no-same-owner --no-same-permissions
cd training-center-app
npm ci --include=dev
npm run check:release
npm run build

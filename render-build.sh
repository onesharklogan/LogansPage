#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
# This dedicated branch contains source, not runtime data. Verify before extraction.
echo '9bb1135fbe6fc9a67441990da9500d00ef66dd9e3dbf24a42410bf349b491a55  training-center-source.tar.gz' | sha256sum --check --status
# Remove only the generated build directory so deleted source cannot survive a redeploy.
rm -rf -- training-center-app
mkdir -p training-center-app
tar -xzf training-center-source.tar.gz -C training-center-app --no-same-owner --no-same-permissions
cd training-center-app
npm ci --include=dev
npm run check:release
npm run build

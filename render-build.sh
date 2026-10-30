#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
# This dedicated branch contains source, not runtime data. Verify before extraction.
echo '8edaef00432b273c39c6d9def136f7ce143d5610b30fa5f33fbbb0aede745a4a  training-center-source.tar.gz' | sha256sum --check --status
# Remove only the generated build directory so deleted source cannot survive a redeploy.
rm -rf -- training-center-app
mkdir -p training-center-app
tar -xzf training-center-source.tar.gz -C training-center-app --no-same-owner --no-same-permissions
cd training-center-app
npm ci --include=dev
npm run check:release
npm run build

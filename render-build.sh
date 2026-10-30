#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
# This dedicated branch contains source, not runtime data. Verify before extraction.
echo '330da3fb02da62de6e06f744a3e89d47f85cee004b77fc88534c5e4e2bee6f85  training-center-source.tar.gz' | sha256sum --check --status
# Remove only the generated build directory so deleted source cannot survive a redeploy.
rm -rf -- training-center-app
mkdir -p training-center-app
tar -xzf training-center-source.tar.gz -C training-center-app --no-same-owner --no-same-permissions
cd training-center-app
npm ci --include=dev
npm run check:release
npm run build

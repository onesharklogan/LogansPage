#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/training-center-app"
exec npm start

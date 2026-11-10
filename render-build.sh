#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
# Require each completed trade review, preserve viewport and scoring. Verify every final runtime byte.
echo '8ef5a9dd8ca4fd914ada28e1252842a7ddba617053c4b18694097f41ee003ccf  training-center-source.tar.gz' | sha256sum --check --status
echo '93455ea17b7fb466bcf89d79bd55a2331a4a8e25942dd57261ed26af740eb06c  training-center-overlay.tar.gz' | sha256sum --check --status
echo '59a8ca5b04126fd44ad2e477f7f6782ab9a9a2916daaf21ffb5fdebef9c2c22e  runtime-contents.json' | sha256sum --check --status
rm -rf -- training-center-app
mkdir -p training-center-app
tar -xzf training-center-source.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-overlay.tar.gz -C training-center-app --no-same-owner --no-same-permissions
node --input-type=module <<'VERIFY'
import fs from 'node:fs';import crypto from 'node:crypto';
const expected=JSON.parse(fs.readFileSync('runtime-contents.json','utf8'));
const actual=fs.readdirSync('training-center-app',{recursive:true,withFileTypes:true}).filter(e=>e.isFile()).map(e=>e.parentPath.slice('training-center-app'.length+1)+(e.parentPath==='training-center-app'?'':'/')+e.name).sort();
if(JSON.stringify(actual)!==JSON.stringify(expected.map(e=>e.path).sort()))throw Error('Runtime file inventory differs from release manifest.');
for(const row of expected){const bytes=fs.readFileSync('training-center-app/'+row.path);if(bytes.length!==row.bytes||crypto.createHash('sha256').update(bytes).digest('hex')!==row.sha256)throw Error('Runtime integrity mismatch: '+row.path);}
console.log('Verified all '+expected.length+' runtime files.');
VERIFY
cd training-center-app
npm ci --include=dev
npm run check:release
npm run build -- --webpack


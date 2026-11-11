#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
# Show ten matches and a compact, searchable Pattern Encyclopedia gallery.
echo '8ef5a9dd8ca4fd914ada28e1252842a7ddba617053c4b18694097f41ee003ccf  training-center-source.tar.gz' | sha256sum --check --status
echo '69917e260166a62a494a02c651144c26d4851bbb02dbd9668ce7d64842d38335  training-center-overlay.tar.gz' | sha256sum --check --status
echo 'a7734680752ed053d89e73b922b3083bf4c5d6eebffb761d360141ecf37e816b  runtime-contents.json' | sha256sum --check --status
echo 'a3b614ab06c3740c380b0f035a56d44ce2725343335409fc0c5456d350ef6b0c  training-center-calendar.tar.gz' | sha256sum --check --status
echo 'f024dca3519a6e3e75f8fd693aa4569a3815b223ee05d1499216323d8c819941  training-center-full-previews.tar.gz' | sha256sum --check --status
echo '463ef694cd9e33f56a2eecebcc0b469d4e2b1f9bf5ebb524156f905beadeed0c  training-center-encyclopedia.tar.gz' | sha256sum --check --status
echo 'ad068af2c36444279d70a975da82d3b344cb7a2e8d1d129d2cc38769342e7331  training-center-pattern-gallery.tar.gz' | sha256sum --check --status
rm -rf -- training-center-app
mkdir -p training-center-app
tar -xzf training-center-source.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-overlay.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-calendar.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-full-previews.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-encyclopedia.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-pattern-gallery.tar.gz -C training-center-app --no-same-owner --no-same-permissions
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


#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
# Add pattern expectations and compact verified chart archives without changing existing records.
echo '8ef5a9dd8ca4fd914ada28e1252842a7ddba617053c4b18694097f41ee003ccf  training-center-source.tar.gz' | sha256sum --check --status
echo '69917e260166a62a494a02c651144c26d4851bbb02dbd9668ce7d64842d38335  training-center-overlay.tar.gz' | sha256sum --check --status
echo '714789791dd847c86d70e8ff52fa7311d1be8483fbc9ab2c634284f827c2521b  runtime-contents.json' | sha256sum --check --status
echo 'a3b614ab06c3740c380b0f035a56d44ce2725343335409fc0c5456d350ef6b0c  training-center-calendar.tar.gz' | sha256sum --check --status
echo 'f024dca3519a6e3e75f8fd693aa4569a3815b223ee05d1499216323d8c819941  training-center-full-previews.tar.gz' | sha256sum --check --status
echo '463ef694cd9e33f56a2eecebcc0b469d4e2b1f9bf5ebb524156f905beadeed0c  training-center-encyclopedia.tar.gz' | sha256sum --check --status
echo 'ad068af2c36444279d70a975da82d3b344cb7a2e8d1d129d2cc38769342e7331  training-center-pattern-gallery.tar.gz' | sha256sum --check --status
echo 'b1df8426811fd498f5752b47ba756ac3fc02d773b53649fff0b1079299519d3f  training-center-pattern-detail.tar.gz' | sha256sum --check --status
echo 'b16662999768d942080a491508a0c6304e660ba984dcd4c2dda351c8ebdb6447  training-center-pattern-workflow.tar.gz' | sha256sum --check --status
echo 'c2385969298d032fb09c8855cd8514ac78e930a3dd8f91d89d17420da136d430  training-center-pattern-random-session.tar.gz' | sha256sum --check --status
echo '50c4bc3e55e4f1129565df2c7bda4b1fb6de291342013dc3e6e8c9b67a9f8f51  training-center-pattern-finder.tar.gz' | sha256sum --check --status
echo '55f568f306995f4e6657944adeca474d7799e77ac4d14292bf79d4fb7fcc55dd  training-center-pattern-storage.tar.gz' | sha256sum --check --status
echo '08578569a126626c29f64f287672d81ed36ca99fe7293f830d75dbb287de285c  training-center-ema10.tar.gz' | sha256sum --check --status
echo '703e27b1e6c48575c84aacb15cdeeb76d79c83eda87ce3b9ed378adb3a481f49  training-center-completed-navigation.tar.gz' | sha256sum --check --status
echo 'dce8f187b3be5154766682bc35436a249c91abffc33c45553d49231d14e1c9fb  training-center-history-recovery.tar.gz' | sha256sum --check --status
rm -rf -- training-center-app
echo '6ae28468f58f125d1761a062b81d5fb8a274bab0d6ee5152f992b2c3ed18cd10  training-center-preview-trading.tar.gz' | sha256sum --check --status
echo '8e7b6ff10a314ac51cadf35cb81914930cd03aa42c7139bcafd471a00986adb0  training-center-portrait-overview.tar.gz' | sha256sum --check --status
echo 'e5aeb7a1ca314dcbdd5d6201f8c9cd064b1aeb40f9badf8c04310e54f91f059a  training-center-preview-ema.tar.gz' | sha256sum --check --status
echo '14c2d4cd6717887471bf85d404ee9590d1d0672826bc120b0d9b6c41dae29def  training-center-cumulative-devices.tar.gz' | sha256sum --check --status
echo '3e99ff62c6455934a51d3e7df624dc33749e55b9288e310645826bb078074b5b  training-center-recovery-save.tar.gz' | sha256sum --check --status
echo '1b1b978e651c2d456cf3c3de8f5b974a06e5aad5144b7ff84fdb6c443263a1e8  training-center-failed-chart-review.tar.gz' | sha256sum --check --status
echo '96fe17cf96d7e26d3a7de89dcc277c516726b836cd61da7f89351281c6970396  training-center-simulator-pattern-finder.tar.gz' | sha256sum --check --status
echo '4222ae86e0e7e4b5c96b8909140b02a386fb2c6ac6f4dfead555bf32754a8a80  training-center-full-pattern-handoff.tar.gz' | sha256sum --check --status
echo '3fc906c685ed19b00ad60aab59e86bceaf7f408727bef691dbbd3a76a1a44fea  training-center-remove-teacher.tar.gz' | sha256sum --check --status
mkdir -p training-center-app
tar -xzf training-center-source.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-overlay.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-calendar.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-full-previews.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-encyclopedia.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-pattern-gallery.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-pattern-detail.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-pattern-workflow.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-pattern-random-session.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-pattern-finder.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-pattern-storage.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-ema10.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-preview-trading.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-portrait-overview.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-preview-ema.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-completed-navigation.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-cumulative-devices.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-history-recovery.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-recovery-save.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-failed-chart-review.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-simulator-pattern-finder.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-full-pattern-handoff.tar.gz -C training-center-app --no-same-owner --no-same-permissions
tar -xzf training-center-remove-teacher.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '242832529ddde69813391897f11e9b845f5a795b5f0a7f3ad7e1cc83cfda2e2e  training-center-appearance.tar.gz' | sha256sum --check --status
tar -xzf training-center-appearance.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '3bc3164cafa29e78b55868a32e84ccab2fc27448549abd5a2f96bcb7efbcce03  training-center-reference-palette.tar.gz' | sha256sum --check --status
tar -xzf training-center-reference-palette.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo 'c8c50045c05fe8f6ec3ee993070d9b7c3f9f6085a485c61d5382ace14c893b27  training-center-controls-cleanup.tar.gz' | sha256sum --check --status
tar -xzf training-center-controls-cleanup.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '3de6f8b5a743d55fe977f4d53460f0d803fe264a3590254ae042b9fe0e9a704d  training-center-catalog-light.tar.gz' | sha256sum --check --status
tar -xzf training-center-catalog-light.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '47b6431495fbd65f08d165435c5d5b789b84c13f742640965620b15d221e38d0  training-center-open-type-combined.tar.gz' | sha256sum --check --status
tar -xzf training-center-open-type-combined.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo 'b066e350b38aadb4b567e7fece9d2b75c9bdcc57ee43eedae7cfdb1af4b8f4bd  training-center-pattern-outcomes.tar.gz' | sha256sum --check --status
tar -xzf training-center-pattern-outcomes.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo 'c7a0e8556b0152c32116147765831a61eba3326f0a49b56362584550a44a5f25  training-center-pattern-top25.tar.gz' | sha256sum --check --status
tar -xzf training-center-pattern-top25.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '097b2a5c092a7542d9cf40acdeb56c10119488c9177d5116e5354501240dcca2  training-center-outcome-display-history.tar.gz' | sha256sum --check --status
tar -xzf training-center-outcome-display-history.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '9883de5cfd579023a683b06c623962c08c636173a2e9a92f7bda368b4fae6111  training-center-profile-orders-history.tar.gz' | sha256sum --check --status
tar -xzf training-center-profile-orders-history.tar.gz -C training-center-app --no-same-owner --no-same-permissions
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


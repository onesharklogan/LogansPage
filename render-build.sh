#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
# Add pattern expectations and compact verified chart archives without changing existing records.
echo '8ef5a9dd8ca4fd914ada28e1252842a7ddba617053c4b18694097f41ee003ccf  training-center-source.tar.gz' | sha256sum --check --status
echo '69917e260166a62a494a02c651144c26d4851bbb02dbd9668ce7d64842d38335  training-center-overlay.tar.gz' | sha256sum --check --status
echo 'ee45f1737f1acd6fffb18252630edb35eb8bad3ec898387df18b23316d87ecc7  runtime-contents.json' | sha256sum --check --status
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
echo 'bc7b5931cf7fa4df453f258f842de175928b75ab347b5496629192ae0c2ce28e  training-center-blsh-style.tar.gz' | sha256sum --check --status
tar -xzf training-center-blsh-style.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '3510369179dbf0385744cf3d20dc23a36722e208af5b2f5868903d140d79ed86  training-center-saved-outcomes.tar.gz' | sha256sum --check --status
tar -xzf training-center-saved-outcomes.tar.gz -C training-center-app --no-same-owner --no-same-permissions
cat training-center-november-es-ui.tar.gz.part000 training-center-november-es-ui.tar.gz.part001 training-center-november-es-ui.tar.gz.part002 training-center-november-es-ui.tar.gz.part003 training-center-november-es-ui.tar.gz.part004 training-center-november-es-ui.tar.gz.part005 training-center-november-es-ui.tar.gz.part006 training-center-november-es-ui.tar.gz.part007 training-center-november-es-ui.tar.gz.part008 training-center-november-es-ui.tar.gz.part009 training-center-november-es-ui.tar.gz.part010 training-center-november-es-ui.tar.gz.part011 training-center-november-es-ui.tar.gz.part012 training-center-november-es-ui.tar.gz.part013 training-center-november-es-ui.tar.gz.part014 training-center-november-es-ui.tar.gz.part015 training-center-november-es-ui.tar.gz.part016 training-center-november-es-ui.tar.gz.part017 training-center-november-es-ui.tar.gz.part018 training-center-november-es-ui.tar.gz.part019 training-center-november-es-ui.tar.gz.part020 training-center-november-es-ui.tar.gz.part021 training-center-november-es-ui.tar.gz.part022 training-center-november-es-ui.tar.gz.part023 training-center-november-es-ui.tar.gz.part024 training-center-november-es-ui.tar.gz.part025 training-center-november-es-ui.tar.gz.part026 training-center-november-es-ui.tar.gz.part027 training-center-november-es-ui.tar.gz.part028 training-center-november-es-ui.tar.gz.part029 training-center-november-es-ui.tar.gz.part030 training-center-november-es-ui.tar.gz.part031 training-center-november-es-ui.tar.gz.part032 training-center-november-es-ui.tar.gz.part033 training-center-november-es-ui.tar.gz.part034 training-center-november-es-ui.tar.gz.part035 training-center-november-es-ui.tar.gz.part036 training-center-november-es-ui.tar.gz.part037 training-center-november-es-ui.tar.gz.part038 > training-center-november-es-ui.tar.gz
echo '15155672937ccb2b01531b715c4915b5e17779d7553cd563c68ea97ec579fd27  training-center-november-es-ui.tar.gz' | sha256sum --check --status
tar -xzf training-center-november-es-ui.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '933af13a8d9182e627dc04402fe5a3dd64e4a30f645f8fd68c4c1f51431d6820  training-center-catalog-fix.tar.gz' | sha256sum --check --status
tar -xzf training-center-catalog-fix.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '50f4bb3a4a175febe58868009a45c1517c2bef19a10d524d02a4e990b3bd6ae6  training-center-daily-dashboard.tar.gz' | sha256sum --check --status
tar -xzf training-center-daily-dashboard.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '15cac2f018688eb731208cdfed5ef903e88f78076fe4defc9e66b819f2c25515  training-center-improvements.tar.gz' | sha256sum --check --status
tar -xzf training-center-improvements.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo 'b9c30392ae9c83d07e1cfee710d9718266ad01d5171ec8ca01d75b0ab97cc338  training-center-daily-balance.tar.gz' | sha256sum --check --status
tar -xzf training-center-daily-balance.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '26cb68231c297d0d5d26873954403f609978d17c31b21fbe0b6d5375d8f8d317  training-center-domain-migration.tar.gz' | sha256sum --check --status
tar -xzf training-center-domain-migration.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo 'a0bfb96764c2ebe94c5b823597a4ed88b2d132792c03330f473bf7a44cbcd0ff  training-center-private-charts.tar.gz' | sha256sum --check --status
tar -xzf training-center-private-charts.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '9a062c4fcba64e4122f7e2bd9c862723cb0ef4e596448a6b4440284e76d84ee3  training-center-daily-checklists.tar.gz' | sha256sum --check --status
tar -xzf training-center-daily-checklists.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '103574d9d1ed4356ea2c47425d61e431b92675f024ab553e024aeed4a9ad9593  training-center-daily-polish.tar.gz' | sha256sum --check --status
tar -xzf training-center-daily-polish.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '3f89381283f72b9b4e89cdb896ca46ac6b529aa21c649f13b7366c616d109e5f  training-center-daily-hourly-checkin.tar.gz' | sha256sum --check --status
tar -xzf training-center-daily-hourly-checkin.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '5d3795d8b8c0121adac83ac854d00dd7b73f70aa4e8cf3b6c842e9f44a69c1c3  training-center-biggest-loss-ema.tar.gz' | sha256sum --check --status
tar -xzf training-center-biggest-loss-ema.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo 'fddf9b6995ef94b2d85d4de3f47424856229a4b43f02e7755f4150d97be68165  training-center-daily-r21-notes.tar.gz' | sha256sum --check --status
tar -xzf training-center-daily-r21-notes.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '9a39dffe61f7716def04919ed4fcaa9df2e4f5f66e0b214653476922519fc2ef  training-center-daily-r22-navigation.tar.gz' | sha256sum --check --status
tar -xzf training-center-daily-r22-navigation.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '84310ba3280cf718a5b2fbd7c34ec1460fc9ea8f498c94195894bfbbaaa5be98  training-center-daily-r24-history.tar.gz' | sha256sum --check --status
tar -xzf training-center-daily-r24-history.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo 'f66254e68d937a602469d9996b28797a5695ce1cb7361d5bef696ded2e6005e1  training-center-daily-r28-dashboard-cards.tar.gz' | sha256sum --check --status
tar -xzf training-center-daily-r28-dashboard-cards.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '2c51b118077bda0c19bd7dbb7e5a30d87e151a1110f8fe4482c0a5badfb18d6e  training-center-daily-r29-life-lessons.tar.gz' | sha256sum --check --status
tar -xzf training-center-daily-r29-life-lessons.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '9ce772b08fb14e4ea4f21ba9b2d4403fa7be12b7ba73e7ce88120f499f1705cb  training-center-daily-r31-study-weight.tar.gz' | sha256sum --check --status
tar -xzf training-center-daily-r31-study-weight.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo 'aa5824c4690b5aaacb784f20199b481d4bb63e7160027cdaa254c82a5400ca8c  training-center-daily-r35-positivity-lessons-reminders.tar.gz' | sha256sum --check --status
tar -xzf training-center-daily-r35-positivity-lessons-reminders.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo '09520b05a580404015110884faccb977eaa4384aa9839028a40d0495a418b93b  training-center-daily-r38-trade-scale-lesson-icons.tar.gz' | sha256sum --check --status
tar -xzf training-center-daily-r38-trade-scale-lesson-icons.tar.gz -C training-center-app --no-same-owner --no-same-permissions
echo 'e7ddb49a20b53081aa9ed9d0a57f3a82ba385e57748dfa1e90bea92eddf84c8a  daily-private-mock-code.patch' | sha256sum --check --status
git apply --directory=training-center-app --whitespace=nowarn daily-private-mock-code.patch
echo 'eb1f519fb091db4262a16a04f278b17afb2fdb72ea6fea10b3da0400c632093f  daily-mes-counted-code.patch' | sha256sum --check --status
git apply --directory=training-center-app --whitespace=nowarn daily-mes-counted-code.patch
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


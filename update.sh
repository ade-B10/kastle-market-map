#!/usr/bin/env bash
# Re-encrypt the Kastle Market Map after source changes.
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PASSWORD='Base10Automation!'
SOURCE="$DIR/source/Kastle_Market_Segmentation_Map.html"
SALT=$(python3 -c "import json; print(json.load(open('$DIR/.staticrypt.json'))['salt'])")
mkdir -p /tmp/npm-stage /tmp/npm-cache /tmp/sc-out
[ -d /tmp/npm-stage/node_modules/staticrypt ] || npm install staticrypt --prefix /tmp/npm-stage --cache /tmp/npm-cache --silent
/tmp/npm-stage/node_modules/.bin/staticrypt "$SOURCE" -p "$PASSWORD" --short --remember 14 \
  --template-title "Base10 · Kastle Market Map" \
  --template-instructions "Enter the password to view the Base10 Kastle market analysis." \
  -s "$SALT" -c false -d /tmp/sc-out
sed -i 's|<title>Protected Page</title>|<title>Base10 · Kastle Market Map</title>|' /tmp/sc-out/Kastle_Market_Segmentation_Map.html
cp /tmp/sc-out/Kastle_Market_Segmentation_Map.html "$DIR/index.html"
echo "Re-encrypted. Commit and push from $DIR."

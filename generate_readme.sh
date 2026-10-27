#!/usr/bin/env bash
# Membuat/menimpa README.md berisi timestamp saat ini (format: dd-mm-yyyy HH:MM:SS),
# lalu commit dan push perubahannya.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
README_FILE="${SCRIPT_DIR}/README.md"

TIMESTAMP="$(date '+%d-%m-%Y %H:%M:%S')"
echo "$TIMESTAMP" > "$README_FILE"
echo "README.md diperbarui: $TIMESTAMP"

cd "$SCRIPT_DIR"
git add README.md
git commit -m "Update README: $TIMESTAMP"
git push origin main

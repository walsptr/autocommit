#!/usr/bin/env bash
# Membuat/menimpa README.md berisi timestamp saat ini (format: dd-mm-yyyy HH:MM:SS)
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
README_FILE="${SCRIPT_DIR}/README.md"

date '+%d-%m-%Y %H:%M:%S' > "$README_FILE"

echo "README.md diperbarui: $(cat "$README_FILE")"

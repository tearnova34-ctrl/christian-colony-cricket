#!/usr/bin/env bash
set -euo pipefail
root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
archive="$root/Christian_Colony_Cricket_Unity_Source.zip"
unzip -tq "$archive"
unzip -oq "$archive" -d "$root"
test -f "$root/Assets/Scenes/MainMenu.unity"
test -f "$root/Packages/manifest.json"

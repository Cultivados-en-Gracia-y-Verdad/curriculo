#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
APP_NAME="CGV Publish Course"
APP_DIR="$ROOT/out/$APP_NAME.app"
SCRIPT="$ROOT/scripts/Publish Course.applescript"
ICON="$ROOT/../herramientas/roots-presenter/assets/cgv-app-icon.icns"
INSTALL="${1:-}"

if [[ ! -f "$SCRIPT" ]]; then
  echo "Missing $SCRIPT" >&2
  exit 1
fi

mkdir -p "$ROOT/out"
rm -rf "$APP_DIR"

/usr/bin/osacompile -o "$APP_DIR" "$SCRIPT"

if [[ -f "$ICON" ]]; then
  cp "$ICON" "$APP_DIR/Contents/Resources/Applet.icns" 2>/dev/null || \
    cp "$ICON" "$APP_DIR/Contents/Resources/applet.icns" 2>/dev/null || true
fi

/usr/bin/codesign --force --deep --sign - "$APP_DIR" >/dev/null 2>&1 || true

echo "Built $APP_DIR"

if [[ "$INSTALL" == "--install" ]]; then
  TARGET="/Applications/$APP_NAME.app"
  rm -rf "$TARGET"
  /usr/bin/ditto "$APP_DIR" "$TARGET"
  /usr/bin/xattr -cr "$TARGET" 2>/dev/null || true
  /usr/bin/codesign --force --deep --sign - "$TARGET" >/dev/null 2>&1 || true
  echo "Installed $TARGET"
fi

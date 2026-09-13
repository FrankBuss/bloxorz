#!/bin/bash
# Builds the release of Bloxorz for Windows, Linux and macOS into the directory export:
# 1. the cartridge ROM image with Vide/buildrom.sh, which also updates godot/Data/Bloxorz.bin
# 2. the Godot .NET exports with the presets of godot/export_presets.cfg
# 3. one archive per platform: Bloxorz-windows.zip, Bloxorz-linux.tar.gz and Bloxorz-macos.zip
#
# The exports include the .NET runtime, no .NET installation is needed to run them.
#
# needs: the Vide toolchain (see Vide/buildrom.sh), Godot 4.7 .NET with the .NET export templates
# (Editor -> Manage Export Templates), the .NET 8 SDK and rcodesign (github.com/indygreg/apple-platform-rs)
# environment: GODOT = the Godot .NET binary, DOTNET_ROOT = the .NET SDK, VIDE = the Vide directory,
# RCODESIGN = the rcodesign binary
# macOS Developer ID signing and notarization, optional:
# MACOS_P12 = Developer ID Application certificate as .p12, MACOS_P12_PASSWORD_FILE = file with its password,
# MACOS_API_KEY = App Store Connect API key as JSON, from: rcodesign encode-app-store-connect-api-key
set -e

R="$(cd "$(dirname "$0")" && pwd)"
GODOT="${GODOT:-$HOME/.local/opt/Godot_v4.7-stable_mono_linux_x86_64/Godot_v4.7-stable_mono_linux.x86_64}"
export DOTNET_ROOT="${DOTNET_ROOT:-$HOME/.dotnet}"
export PATH="$DOTNET_ROOT:$PATH"
RCODESIGN="${RCODESIGN:-$(command -v rcodesign || echo "$HOME/.local/bin/rcodesign")}"
OUT="$R/export"

# e.g. 4.7.stable.mono.official.5b4e0cb0f -> templates in 4.7.stable.mono
version="$("$GODOT" --version | tail -1 | sed 's/\.official.*//')"
templates="${XDG_DATA_HOME:-$HOME/.local/share}/godot/export_templates/$version"
if [ ! -f "$templates/version.txt" ]; then
    echo "export templates for $version not found in $templates"
    echo "install them in the Godot editor: Editor -> Manage Export Templates -> Download and Install"
    exit 1
fi

rm -rf "$OUT"
mkdir -p "$OUT"

echo "== ROM"
"$R/Vide/buildrom.sh"

echo "== Godot import"
"$GODOT" --headless --path "$R/godot" --import > "$OUT/import.log" 2>&1

# preset name, directory in export, file name
export_platform()
{
    local preset="$1" dir="$2" file="$3"
    echo "== $preset"
    mkdir -p "$OUT/$dir"
    if ! "$GODOT" --headless --path "$R/godot" --export-release "$preset" "$OUT/$dir/$file" > "$OUT/$dir.log" 2>&1 \
        || [ ! -e "$OUT/$dir/$file" ]; then
        tail -20 "$OUT/$dir.log"
        echo "export of $preset failed, see export/$dir.log"
        exit 1
    fi
}

export_platform "Windows Desktop" Bloxorz-windows Bloxorz.exe
export_platform "Linux" Bloxorz-linux Bloxorz.x86_64
export_platform "macOS" Bloxorz-macos Bloxorz.zip

# The macOS app is signed with rcodesign, because macOS 26 can't parse the entitlements of the Godot signer.
# Without MACOS_P12 the signature is ad-hoc, which needs right click -> Open on the first start.
echo "== macOS signing"
app="$OUT/Bloxorz-macos/Bloxorz.app"
python3 - "$OUT/Bloxorz-macos/Bloxorz.zip" "$OUT/Bloxorz-macos" <<'EOF'
import os, sys, zipfile
z = zipfile.ZipFile(sys.argv[1])
for i in z.infolist():
    path = z.extract(i, sys.argv[2])
    mode = i.external_attr >> 16
    if mode and not i.is_dir():
        os.chmod(path, mode & 0o7777)
EOF
rm "$OUT/Bloxorz-macos/Bloxorz.zip"
sign=(--code-signature-flags runtime --entitlements-xml-file "$R/godot/macos_entitlements.plist")
if [ -n "$MACOS_P12" ]; then
    sign+=(--p12-file "$MACOS_P12" --p12-password-file "$MACOS_P12_PASSWORD_FILE")
fi
if ! "$RCODESIGN" sign "${sign[@]}" "$app" > "$OUT/Bloxorz-macos-sign.log" 2>&1; then
    tail -20 "$OUT/Bloxorz-macos-sign.log"
    echo "signing failed, see export/Bloxorz-macos-sign.log"
    exit 1
fi
if [ -n "$MACOS_P12" ] && [ -n "$MACOS_API_KEY" ]; then
    echo "== macOS notarization"
    if ! "$RCODESIGN" notary-submit --api-key-file "$MACOS_API_KEY" --staple "$app" >> "$OUT/Bloxorz-macos-sign.log" 2>&1; then
        tail -20 "$OUT/Bloxorz-macos-sign.log"
        echo "notarization failed, see export/Bloxorz-macos-sign.log"
        exit 1
    fi
fi

echo "== archives"
(cd "$OUT" && python3 -m zipfile -c Bloxorz-windows.zip Bloxorz-windows)
tar -czf "$OUT/Bloxorz-linux.tar.gz" -C "$OUT" Bloxorz-linux
# zip with the Unix permissions, otherwise the app isn't executable after unzipping on the Mac
python3 - "$OUT/Bloxorz-macos" "$OUT/Bloxorz-macos.zip" <<'EOF'
import os, sys, zipfile
base, target = sys.argv[1], sys.argv[2]
with zipfile.ZipFile(target, 'w', zipfile.ZIP_DEFLATED) as z:
    for root, dirs, files in os.walk(base):
        for name in sorted(files):
            path = os.path.join(root, name)
            info = zipfile.ZipInfo.from_file(path, os.path.relpath(path, base))
            info.create_system = 3
            info.external_attr = (os.stat(path).st_mode & 0xFFFF) << 16
            info.compress_type = zipfile.ZIP_DEFLATED
            with open(path, 'rb') as f:
                z.writestr(info, f.read())
EOF

ls -l "$OUT"

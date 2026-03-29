#!/usr/bin/env bash
set -euo pipefail

BINARY_NAME="DesktopPet"
INSTALL_DIR="$HOME/.local/bin"
BINARY="$INSTALL_DIR/$BINARY_NAME"
PLIST_NAME="com.desktoppet.app.plist"
LAUNCH_AGENTS="$HOME/Library/LaunchAgents"
PLIST="$LAUNCH_AGENTS/$PLIST_NAME"
DOWNLOAD_URL="https://github.com/acabelloj/desktop-pet-releases/releases/latest/download/DesktopPet"

print_step() { printf "\n\033[1;34m==> %s\033[0m\n" "$1"; }
print_ok()   { printf "\033[1;32m✓\033[0m %s\n" "$1"; }
print_err()  { printf "\033[1;31m✗\033[0m %s\n" "$1" >&2; }
die()        { print_err "$1"; exit 1; }

check_macos() {
    [[ "$(uname)" == "Darwin" ]] || die "This app only runs on macOS."
    local major
    major=$(sw_vers -productVersion | cut -d. -f1)
    (( major >= 13 )) || die "macOS 13 (Ventura) or later is required. You have $(sw_vers -productVersion)."
    print_ok "macOS $(sw_vers -productVersion)"
}

check_arch() {
    local arch
    arch=$(uname -m)
    [[ "$arch" == "arm64" ]] || die "This build is for Apple Silicon (M1 or later). Your machine is $arch."
    print_ok "Apple Silicon"
}

download_binary() {
    print_step "Downloading DesktopPet"
    mkdir -p "$INSTALL_DIR"
    if command -v curl &>/dev/null; then
        curl -fsSL --progress-bar "$DOWNLOAD_URL" -o "$BINARY"
    elif command -v wget &>/dev/null; then
        wget -q --show-progress "$DOWNLOAD_URL" -O "$BINARY"
    else
        die "Neither curl nor wget found. Install either and retry."
    fi
    chmod +x "$BINARY"
    print_ok "Downloaded to $BINARY"
}

remove_quarantine() {
    print_step "Removing macOS quarantine"
    xattr -dr com.apple.quarantine "$BINARY" 2>/dev/null || true
    print_ok "Quarantine cleared"
}

install_launch_agent() {
    print_step "Installing LaunchAgent"
    mkdir -p "$LAUNCH_AGENTS"

    launchctl bootout "gui/$(id -u)/com.desktoppet.app" 2>/dev/null \
        || launchctl unload "$PLIST" 2>/dev/null \
        || true

    cat > "$PLIST" <<PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.desktoppet.app</string>
    <key>ProgramArguments</key>
    <array>
        <string>$BINARY</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>KeepAlive</key>
    <true/>
    <key>StandardOutPath</key>
    <string>/tmp/desktop-pet.log</string>
    <key>StandardErrorPath</key>
    <string>/tmp/desktop-pet.err</string>
</dict>
</plist>
PLIST

    launchctl bootstrap "gui/$(id -u)" "$PLIST" 2>/dev/null \
        || launchctl load "$PLIST"

    print_ok "LaunchAgent registered — pet starts at login"
}

verify_running() {
    print_step "Verifying"
    sleep 1
    if pgrep -x "$BINARY_NAME" &>/dev/null; then
        print_ok "DesktopPet is running!"
    else
        print_err "DesktopPet doesn't seem to be running. Check /tmp/desktop-pet.log for details."
        echo "  You can start it manually: launchctl kickstart gui/$(id -u)/com.desktoppet.app"
    fi
}

echo ""
echo "  DesktopPet Installer"
echo "  ────────────────────"

check_macos
check_arch
download_binary
remove_quarantine
install_launch_agent
verify_running

echo ""
echo "  All done! Your pixel pet is now running."
echo "  Look for the 👾 in your menu bar to control it."
echo ""

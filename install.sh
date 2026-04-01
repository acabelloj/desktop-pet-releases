#!/usr/bin/env bash
set -euo pipefail

# DesktopPet installer
# Usage: curl -fsSL <url>/install.sh | bash
# Or with a custom binary URL:
#   DESKTOP_PET_URL=https://... bash install.sh

BINARY_NAME="DesktopPet"
INSTALL_DIR="$HOME/.local/bin"
BINARY="$INSTALL_DIR/$BINARY_NAME"
PLIST_NAME="com.acabelloj.desktop-pet.plist"
LAUNCH_AGENTS="$HOME/Library/LaunchAgents"
PLIST="$LAUNCH_AGENTS/$PLIST_NAME"

# Author's Ed25519 public key — baked into the installer at release time.
# An attacker who tampers with the binary cannot forge a valid signature
# without the author's private key.
AUTHOR_PUBKEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYGbjWPI7digOGVbTkXh6SFtF/AW1P51lZopP4YOABY"
SIGNING_PRINCIPAL="desktop-pet-releases"
SIGNING_NAMESPACE="file"

# ── helpers ──────────────────────────────────────────────────────────────────

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
    [[ "$arch" == "arm64" ]] || die "This build is for Apple Silicon (arm64). Your machine is $arch."
    print_ok "Apple Silicon"
}

download_binary() {
    local url="${DESKTOP_PET_URL:-https://github.com/acabelloj/desktop-pet-releases/releases/latest/download/DesktopPet}"

    print_step "Downloading DesktopPet"
    mkdir -p "$INSTALL_DIR"

    if command -v curl &>/dev/null; then
        curl -fsSL --progress-bar "$url" -o "$BINARY"
    elif command -v wget &>/dev/null; then
        wget -q --show-progress "$url" -O "$BINARY"
    else
        die "Neither curl nor wget found. Install either and retry."
    fi

    chmod +x "$BINARY"
    print_ok "Downloaded to $BINARY"
}

verify_checksum() {
    local sha_url="${DESKTOP_PET_SHA256_URL:-https://github.com/acabelloj/desktop-pet-releases/releases/latest/download/sha256.txt}"

    print_step "Verifying SHA256 checksum"

    local sha_file
    sha_file="$(mktemp)"

    if command -v curl &>/dev/null; then
        curl -fsSL "$sha_url" -o "$sha_file" \
            || die "Failed to download sha256.txt"
    elif command -v wget &>/dev/null; then
        wget -q "$sha_url" -O "$sha_file" \
            || die "Failed to download sha256.txt"
    else
        die "Neither curl nor wget found."
    fi

    # sha256.txt format: "<hash>  DesktopPet" (shasum -a 256 convention)
    local expected
    expected=$(awk '{print $1}' "$sha_file")
    rm -f "$sha_file"

    if [[ -z "$expected" || ${#expected} -ne 64 ]]; then
        die "sha256.txt appears malformed — expected a 64-character hex string."
    fi

    local actual
    actual=$(shasum -a 256 "$BINARY" | awk '{print $1}')

    if [[ "$expected" != "$actual" ]]; then
        print_err "Checksum mismatch!"
        print_err "  expected: $expected"
        print_err "  actual:   $actual"
        rm -f "$BINARY"
        die "Download may be corrupt or tampered with. Aborting install."
    fi

    print_ok "SHA256 verified"
}

verify_signature() {
    local sig_url="${DESKTOP_PET_SIG_URL:-https://github.com/acabelloj/desktop-pet-releases/releases/latest/download/DesktopPet.sig}"

    print_step "Verifying SSH signature"

    local sig_file allowed_signers
    sig_file="$(mktemp)"
    allowed_signers="$(mktemp)"

    # Download the .sig file
    if command -v curl &>/dev/null; then
        curl -fsSL "$sig_url" -o "$sig_file" \
            || { rm -f "$sig_file" "$allowed_signers"; die "Failed to download DesktopPet.sig"; }
    elif command -v wget &>/dev/null; then
        wget -q "$sig_url" -O "$sig_file" \
            || { rm -f "$sig_file" "$allowed_signers"; die "Failed to download DesktopPet.sig"; }
    else
        rm -f "$sig_file" "$allowed_signers"
        die "Neither curl nor wget found."
    fi

    # Write the allowed-signers file (format: "<principal> <keytype> <pubkey>")
    echo "$SIGNING_PRINCIPAL $AUTHOR_PUBKEY" > "$allowed_signers"

    # Verify: feed binary to stdin, sig file as -s argument
    if ! ssh-keygen -Y verify \
            -f "$allowed_signers" \
            -I "$SIGNING_PRINCIPAL" \
            -n "$SIGNING_NAMESPACE" \
            -s "$sig_file" \
            < "$BINARY" > /dev/null 2>&1; then
        rm -f "$sig_file" "$allowed_signers" "$BINARY"
        die "Signature verification FAILED. The binary was not signed by the author. Aborting."
    fi

    rm -f "$sig_file" "$allowed_signers"
    print_ok "SSH signature verified"
}

remove_quarantine() {
    print_step "Removing macOS quarantine"
    xattr -dr com.apple.quarantine "$BINARY" 2>/dev/null || true
    print_ok "Quarantine cleared"
}

install_launch_agent() {
    print_step "Installing LaunchAgent"
    mkdir -p "$LAUNCH_AGENTS"

    # Stop existing instance if running
    launchctl bootout "gui/$(id -u)/com.acabelloj.desktop-pet" 2>/dev/null \
        || launchctl unload "$PLIST" 2>/dev/null \
        || true

    # Write plist
    cat > "$PLIST" <<PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.acabelloj.desktop-pet</string>
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
        print_err "DesktopPet doesn't seem to be running. Check /tmp/desktop-pet.err for details."
        echo "  You can also start it manually: launchctl kickstart gui/$(id -u)/com.acabelloj.desktop-pet"
    fi
}

# ── main ─────────────────────────────────────────────────────────────────────

echo ""
echo "  DesktopPet Installer"
echo "  ────────────────────"

check_macos
check_arch
download_binary
verify_checksum
verify_signature
remove_quarantine
install_launch_agent
verify_running

echo ""
echo "  All done! Your pixel pet is now running."
echo "  Look for the 👾 in your menu bar to control it."
echo ""

# DesktopPet

A pixel-art companion that lives on your screen — wanders around, sits on window title bars, reacts to what you're doing, and chats with you.

![DesktopPet in action](assets/screenshot.png)

## Install

    bash <(curl -fsSL https://raw.githubusercontent.com/acabelloj/desktop-pet-releases/main/install.sh)

The pet starts immediately and launches automatically on login.

## Updates

Updates happen automatically. The pet checks for new versions on launch, verifies them, and restarts seamlessly.

## Uninstall

    launchctl bootout gui/$(id -u)/com.acabelloj.desktop-pet 2>/dev/null || true
    rm -f ~/Library/LaunchAgents/com.acabelloj.desktop-pet.plist
    rm -f ~/.local/bin/DesktopPet ~/.local/bin/DesktopPet.sig

## Requirements

- macOS 13 (Ventura) or later
- Apple Silicon (M1 or later)

## "App can't be opened" warning

Expected — the binary isn't signed with an Apple Developer certificate. The installer clears the quarantine flag automatically. If you still see a warning, go to **System Settings → Privacy & Security** and click **Open Anyway**.

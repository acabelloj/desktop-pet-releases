# DesktopPet

A pixel-art desktop companion that lives in a transparent overlay on your screen — wanders around, sits on window title bars, reacts to what you're doing, and even chats with you.

![DesktopPet in action](assets/screenshot.png)

> Chat with your pet, spawn toys, and watch it react to your workflow in real time.

## Install

Open Terminal and run:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/acabelloj/desktop-pet-releases/main/install.sh)
```

That's it. The pet starts immediately and launches automatically on login.

The installer verifies both a SHA256 checksum and an SSH signature before installing anything — if either check fails, the install is aborted.

---

## Updates

The pet updates itself automatically. On launch it checks for a new version, shows a speech bubble telling you what's happening and where the update comes from, verifies it, and restarts seamlessly.

To stay on a specific version, add `DESKTOP_PET_VERSION=v0.x.x` to your LaunchAgent environment.

---

## "App can't be opened" / Gatekeeper warning

You may see a macOS warning like:

> **"DesktopPet" can't be opened because Apple cannot check it for malicious software.**

**This is expected.** The binary is cryptographically signed with an SSH Ed25519 key — every release is verified against the author's public key before it installs or updates. What macOS is flagging is the absence of an Apple Developer ID certificate ($99/year), not a security problem with the binary itself.

The installer handles this automatically by clearing the quarantine flag. If you still see a warning after installing:

1. Open **System Settings → Privacy & Security**
2. Scroll to the Security section
3. Click **Open Anyway** next to the DesktopPet entry

---

## Uninstall

```bash
launchctl bootout gui/$(id -u)/com.acabelloj.desktop-pet 2>/dev/null || true
rm -f ~/Library/LaunchAgents/com.acabelloj.desktop-pet.plist
rm -f ~/.local/bin/DesktopPet
```

---

## Requirements

- macOS 13 (Ventura) or later
- Apple Silicon (M1 or later)

# Doxee AI CoE — Homebrew Tap

Homebrew tap for internal Doxee AI CoE tools.

## BetterCapture

A fork of [jsattler/BetterCapture](https://github.com/jsattler/BetterCapture) with a
configurable **audio-only recording** mode (source: private `Doxee-AI-CoE/BetterCapture`).

> Cask token is `bettercapture-aicoe` (the plain `bettercapture` name belongs to the
> upstream app in the official Homebrew cask).

### Install

```bash
brew tap doxee-ai-coe/tap
brew install --cask --no-quarantine bettercapture-aicoe
```

`--no-quarantine` is needed because the app is **ad-hoc signed** (not notarized).
Without it, macOS Gatekeeper may report the app as damaged or from an unidentified
developer. Alternatively, after a normal install you can clear the flag:

```bash
xattr -dr com.apple.quarantine "/Applications/BetterCapture.app"
```

### Update

```bash
brew update && brew upgrade --cask bettercapture-aicoe
```

### Uninstall

```bash
brew uninstall --cask bettercapture-aicoe        # add --zap to also remove app data
```

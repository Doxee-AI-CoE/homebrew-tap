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
brew install --cask bettercapture-aicoe
# ad-hoc signed → clear Gatekeeper quarantine once:
xattr -dr com.apple.quarantine "/Applications/BetterCapture.app"
```

The app is **ad-hoc signed** (not notarized), so without clearing quarantine
macOS Gatekeeper may report it as damaged or from an unidentified developer.
(Older Homebrew supported `brew install --cask --no-quarantine`, but that flag
was removed in recent Homebrew versions — use the `xattr` command above.)

### Update

```bash
brew update && brew upgrade --cask bettercapture-aicoe
```

### Uninstall

```bash
brew uninstall --cask bettercapture-aicoe        # add --zap to also remove app data
```

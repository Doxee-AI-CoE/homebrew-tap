cask "bettercapture" do
  version "1.0.0"
  sha256 "dcca0145aae48cdfde8ad084178243989a53b5cad4429c42cb05712d499b52ec"

  url "https://github.com/Doxee-AI-CoE/homebrew-tap/releases/download/v#{version}/BetterCapture-#{version}.zip"
  name "BetterCapture"
  desc "macOS screen recorder with configurable audio-only recording (AI CoE fork)"
  homepage "https://github.com/Doxee-AI-CoE/BetterCapture"

  # Ad-hoc signed (not notarized). If Gatekeeper blocks launch, reinstall with
  # `--no-quarantine`, or run: xattr -dr com.apple.quarantine "/Applications/BetterCapture.app"
  app "BetterCapture.app"

  caveats <<~EOS
    BetterCapture is ad-hoc signed, not notarized. If macOS reports it is
    damaged or from an unidentified developer, install with:

      brew install --cask --no-quarantine doxee-ai-coe/tap/bettercapture

    or clear the quarantine attribute after install:

      xattr -dr com.apple.quarantine "/Applications/BetterCapture.app"
  EOS

  zap trash: [
    "~/Library/Containers/com.sattlerjoshua.BetterCapture",
    "~/Library/Application Support/com.sattlerjoshua.BetterCapture",
    "~/Library/Preferences/com.sattlerjoshua.BetterCapture.plist",
  ]
end

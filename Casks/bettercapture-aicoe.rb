cask "bettercapture-aicoe" do
  version "1.0.0"
  sha256 "dcca0145aae48cdfde8ad084178243989a53b5cad4429c42cb05712d499b52ec"

  url "https://github.com/Doxee-AI-CoE/homebrew-tap/releases/download/v#{version}/BetterCapture-#{version}.zip"
  name "BetterCapture (AI CoE)"
  desc "macOS screen recorder with configurable audio-only recording (AI CoE fork)"
  homepage "https://github.com/Doxee-AI-CoE/BetterCapture"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "BetterCapture.app"

  caveats <<~EOS
    BetterCapture is ad-hoc signed, not notarized. After installing, if macOS
    reports it is damaged or from an unidentified developer, clear the
    quarantine attribute once:

      xattr -dr com.apple.quarantine "/Applications/BetterCapture.app"
  EOS

  zap trash: [
    "~/Library/Containers/com.sattlerjoshua.BetterCapture",
    "~/Library/Application Support/com.sattlerjoshua.BetterCapture",
    "~/Library/Preferences/com.sattlerjoshua.BetterCapture.plist",
  ]
end

cask "bettercapture-aicoe" do
  version "1.1.0"
  sha256 "ca3bd91bc062b857c43f5e826182a4b3689b03c63f3da52c1ba50d89a50cef4d"

  url "https://github.com/Doxee-AI-CoE/homebrew-tap/releases/download/v#{version}/BetterCapture-#{version}.zip"
  name "BetterCapture (AI CoE)"
  desc "macOS screen recorder: audio-only recording + opt-in DXT transcription (AI CoE fork)"
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

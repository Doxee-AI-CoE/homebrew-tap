cask "voiceink-aicoe" do
  version "2.0"
  sha256 "d2f3f8c8d10122ae0ebc80d0727126c24ced44b31d657d2d9240ea6820dd9c7a"

  url "https://github.com/Doxee-AI-CoE/homebrew-tap/releases/download/voiceink-v#{version}/VoiceInk-#{version}.zip"
  name "VoiceInk (AI CoE)"
  desc "Voice-to-text app with Doxee AI CoE customizations"
  homepage "https://github.com/Doxee-AI-CoE/VoiceInk"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "VoiceInk.app"

  zap trash: [
    "~/Library/Application Support/com.prakashjoshipax.VoiceInk",
    "~/Library/Application Support/VoiceInk",
    "~/Library/Caches/com.prakashjoshipax.VoiceInk",
    "~/Library/HTTPStorages/com.prakashjoshipax.VoiceInk",
    "~/Library/Preferences/com.prakashjoshipax.VoiceInk.plist",
    "~/Library/Saved Application State/com.prakashjoshipax.VoiceInk.savedState",
  ]

  caveats <<~EOS
    VoiceInk is locally signed, not notarized. After installing, if macOS
    reports it is damaged or from an unidentified developer, clear the
    quarantine attribute once:

      xattr -dr com.apple.quarantine "/Applications/VoiceInk.app"
  EOS
end

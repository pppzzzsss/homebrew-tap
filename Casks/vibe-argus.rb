cask "vibe-argus" do
  version "1.3.0"
  sha256 "fdfc54febb9b229d006e333e450d0e5a537bf9e0a89876faaf05e6c4bd3bcc15"

  url "https://github.com/pppzzzsss/homebrew-tap/releases/download/v#{version}/VibeArgus.dmg"
  name "Vibe Argus"
  desc "Claude Code session monitor with Dynamic Island UI for macOS"
  homepage "https://github.com/pppzzzsss/vibe_argus"

  depends_on macos: ">= :sonoma"

  app "Vibe Argus.app"

  binary "#{appdir}/Vibe Argus.app/Contents/Helpers/vibe-argus", target: "vibe-argus"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Vibe Argus.app"]
    system_command "#{appdir}/Vibe Argus.app/Contents/Helpers/vibe-argus",
                   args: ["install"]
  end

  uninstall quit: "com.vibeargus.app"

  zap trash: [
    "~/.vibe-argus",
  ]
end

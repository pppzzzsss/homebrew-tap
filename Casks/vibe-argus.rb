cask "vibe-argus" do
  version "1.4.1"
  sha256 "c6143a6dd8eb9bb87d9a3845915bb6dc3620656a7fcbacd6ffd0ce7f5da25241"

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

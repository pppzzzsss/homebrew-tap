cask "vibe-argus" do
  version "1.0.0"
  sha256 "37526e0f564f4c2ad63c4f5b8a8ad2baf753b5fc116f82fe69f23d0ffebe1f2a"

  url "https://github.com/pppzzzsss/homebrew-tap/releases/download/v#{version}/VibeArgus.dmg"
  name "Vibe Argus"
  desc "Claude Code session monitor with Dynamic Island UI for macOS"
  homepage "https://github.com/pppzzzsss/vibe_argus"

  depends_on macos: ">= :sonoma"

  app "Vibe Argus.app"

  binary "#{appdir}/Vibe Argus.app/Contents/Helpers/vibe-argus", target: "vibe-argus"

  postflight do
    set_permissions "#{appdir}/Vibe Argus.app/Contents/Helpers/vibe-argus", "0755"
    set_permissions "#{appdir}/Vibe Argus.app/Contents/Helpers/vibe-argus-bridge", "0755"
  end

  caveats <<~EOS
    安装后请运行以下命令完成配置:
      vibe-argus install
  EOS

  uninstall quit: "com.vibeargus.app"

  zap trash: [
    "~/.vibe-argus",
  ]
end

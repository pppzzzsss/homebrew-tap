# homebrew-tap

[![GitHub release](https://img.shields.io/github/v/release/pppzzzsss/homebrew-tap?label=release)](https://github.com/pppzzzsss/homebrew-tap/releases)

A [Homebrew](https://brew.sh) **tap** for installing [Vibe Argus](https://github.com/pppzzzsss/vibe_argus) on macOS with a single command.

[Vibe Argus](https://github.com/pppzzzsss/vibe_argus) is a Claude Code session monitor with a Dynamic Island–style UI.

## Requirements

- macOS **14 Sonoma** or later
- [Homebrew](https://brew.sh)

## Installation

Add this tap, then install the cask:

```bash
brew tap pppzzzsss/homebrew-tap
brew install --cask vibe-argus
```

## Updating

```bash
brew update
brew upgrade --cask vibe-argus
```

## Uninstall

```bash
brew uninstall --cask vibe-argus
```

To remove the app and its associated data (see the cask `zap` stanza):

```bash
brew uninstall --zap --cask vibe-argus
```

## Repository layout

| Path | Description |
|------|-------------|
| [`Casks/vibe-argus.rb`](Casks/vibe-argus.rb) | Homebrew Cask definition for Vibe Argus |

Release artifacts are published on the [Releases](https://github.com/pppzzzsss/homebrew-tap/releases) page.

## Contributing

Issues and pull requests are welcome. When changing the cask (version, checksum, URL), ensure the values match the corresponding GitHub release asset.

## License

Application licensing is defined in the [Vibe Argus](https://github.com/pppzzzsss/vibe_argus) repository.

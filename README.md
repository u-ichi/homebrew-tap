# homebrew-tap

Personal Homebrew tap for macOS apps and CLIs that are not available in `homebrew-core`.

Managed via [u-ichi/dotfiles](https://github.com/u-ichi/dotfiles) (`Brewfile` + `update.sh`).

## Usage

```sh
brew tap u-ichi/tap
brew install --cask u-ichi/tap/tolaria
```

## Casks

| Cask | Upstream | Notes |
|------|----------|-------|
| `tolaria` | [refactoringhq/tolaria](https://github.com/refactoringhq/tolaria) | Desktop app for managing markdown knowledge bases (Tauri, aarch64 only) |

## Updating

Version and `sha256` of each cask are bumped by the `cask-update` skill defined in `u-ichi/dotfiles`. See that repository for the workflow.

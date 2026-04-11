# homebrew-tap

Homebrew tap for AOS packages.

## Install

```bash
brew tap AOS-HZ/tap
brew install aos-cli
brew install --cask aos-desktop
```

## Notes

- The `aos-cli` formula installs a prebuilt CLI binary from the public `AOS-HZ/aos-cli-releases` repository.
- Apple Silicon and Intel macOS builds are published separately and selected automatically by Homebrew on macOS.
- Linux x86_64 builds are published for Homebrew on Linux.
- `aos-desktop` is published as a Homebrew cask and downloads the notarized macOS DMG from `AOS-HZ/aos-desktop-releases`.
- `aos-desktop` currently targets macOS `>= :monterey`.
- Tagged releases update this tap automatically when the release workflows are configured with tokens that can write to the public release repositories and `AOS-HZ/homebrew-tap`.

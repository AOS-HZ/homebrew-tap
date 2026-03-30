# homebrew-tap

Homebrew tap for AOS packages.

## Install

```bash
brew tap AOS-HZ/tap
brew install aos-cli
```

## Notes

- The `aos-cli` formula installs a prebuilt signed macOS CLI binary from GitHub Releases.
- Apple Silicon and Intel macOS builds are published separately and selected automatically by Homebrew.
- Tagged releases from `AOS-HZ/aos-cli` update this tap automatically when the release workflow is configured with a token that can write to this repository.

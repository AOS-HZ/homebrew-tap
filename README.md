# homebrew-tap

Homebrew tap for AOS packages.

## Install

```bash
brew tap AOS-HZ/tap
brew install aos-cli
```

## Notes

- The `aos-cli` formula installs a prebuilt signed macOS CLI binary from the public `AOS-HZ/aos-cli-releases` repository.
- Apple Silicon and Intel macOS builds are published separately and selected automatically by Homebrew.
- Tagged releases from the private source repository update this tap automatically when the release workflow is configured with tokens that can write to `AOS-HZ/aos-cli-releases` and this repository.

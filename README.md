# homebrew-tap

Homebrew tap for AOS packages.

## Install

```bash
brew tap AOS-HZ/tap https://github.com/AOS-HZ/homebrew-tap.git
brew install aos
```

## Notes

- The `aos` formula currently builds from the `AOS-HZ/aos-cli` source repository at tag `v0.1.0`.
- If the repositories remain private, the installing machine needs GitHub access to both
  `AOS-HZ/homebrew-tap` and `AOS-HZ/aos-cli`.
- Homebrew users also need a working Rust toolchain because the formula builds from source.

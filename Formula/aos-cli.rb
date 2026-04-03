class AosCli < Formula
  desc "Minimal CLI for running the AOS scan pipeline outside the desktop app."
  homepage "https://github.com/AOS-HZ/aos-cli-releases"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/AOS-HZ/aos-cli-releases/releases/download/v0.1.2/aos-0.1.2-darwin-arm64.tar.gz"
      sha256 "5df39a16d9a96cadd09c875104cc3b357fb9551bd985a809cbd63d2cd0a119ca"
    end

    on_intel do
      url "https://github.com/AOS-HZ/aos-cli-releases/releases/download/v0.1.2/aos-0.1.2-darwin-x86_64.tar.gz"
      sha256 "38ac67b660bd81d5426ab2c9e1e5acb7eab694a59bfaaf688e6798eceeca49b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AOS-HZ/aos-cli-releases/releases/download/v0.1.2/aos-0.1.2-linux-x86_64.tar.gz"
      sha256 "99a73024725a24119b39c8a8f26eabc5c7a9990522a3f3c8b2cdcebb6a287747"
    end
  end

  def install
    bin.install "aos"
  end

  test do
    assert_match "Usage: aos", shell_output("#{bin}/aos --help")
  end
end

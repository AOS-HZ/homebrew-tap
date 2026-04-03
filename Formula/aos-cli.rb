class AosCli < Formula
  desc "Minimal CLI for running the AOS scan pipeline outside the desktop app."
  homepage "https://github.com/AOS-HZ/aos-cli-releases"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/AOS-HZ/aos-cli-releases/releases/download/v0.1.3/aos-0.1.3-darwin-arm64.tar.gz"
      sha256 "e6ea7e70a3b9d476c0ff5fb8f2e215314c3c84ae7b17792d17b361b0510bf3ea"
    end

    on_intel do
      url "https://github.com/AOS-HZ/aos-cli-releases/releases/download/v0.1.3/aos-0.1.3-darwin-x86_64.tar.gz"
      sha256 "a9f6b3aea4dbf4f0d454c1aa0af503f76616a15ecbe5554b05713a58cc2b0b6a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AOS-HZ/aos-cli-releases/releases/download/v0.1.3/aos-0.1.3-linux-x86_64.tar.gz"
      sha256 "ee1a0ee7981bb6b532a5f72fea2a514f5dea659b17ce7195135d00503e872210"
    end
  end

  def install
    bin.install "aos"
  end

  test do
    assert_match "Usage: aos", shell_output("#{bin}/aos --help")
  end
end

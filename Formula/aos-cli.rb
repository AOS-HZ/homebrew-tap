class AosCli < Formula
  desc "Minimal CLI for running the AOS scan pipeline outside the desktop app."
  homepage "https://github.com/AOS-HZ/aos-cli-releases"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/AOS-HZ/aos-cli-releases/releases/download/v0.1.1/aos-0.1.1-darwin-arm64.tar.gz"
      sha256 "2b49bf0e336e4a5e20ec81e0ac93f27fb5219323f829895f71b12b143114ec7b"
    end

    on_intel do
      url "https://github.com/AOS-HZ/aos-cli-releases/releases/download/v0.1.1/aos-0.1.1-darwin-x86_64.tar.gz"
      sha256 "4a96308cb3ea74b4c260fe2a0956e8953157c7bffe3b052b1649afb73e617be2"
    end
  end

  def install
    bin.install "aos"
  end

  test do
    assert_match "Usage: aos", shell_output("#{bin}/aos --help")
  end
end

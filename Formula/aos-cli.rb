class AosCli < Formula
  desc "Minimal CLI for running the AOS scan pipeline outside the desktop app."
  homepage "https://github.com/AOS-HZ/aos-cli"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/AOS-HZ/aos-cli/releases/download/v0.1.1/aos-0.1.1-darwin-arm64.tar.gz"
      sha256 "cdb1ff886ca9e8cca95e182267ff6857e67bef5ac08c484dd3a168f6a74307a3"
    end

    on_intel do
      url "https://github.com/AOS-HZ/aos-cli/releases/download/v0.1.1/aos-0.1.1-darwin-x86_64.tar.gz"
      sha256 "2dc262198c9513fa7fc2d2b72a9cc192f800601e2b8e5316718e4d650b23f8c6"
    end
  end

  def install
    bin.install "aos"
  end

  test do
    assert_match "Usage: aos", shell_output("#{bin}/aos --help")
  end
end

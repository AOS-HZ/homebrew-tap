class AosCli < Formula
  desc "Minimal CLI for running the AOS scan pipeline outside the desktop app"
  homepage "https://github.com/AOS-HZ/aos-cli"
  url "https://github.com/AOS-HZ/aos-cli.git",
      tag:      "v0.1.0",
      revision: "111f86204862f81cc575e1bc4cf43da7d890b283"
  version "0.1.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aos --version")
  end
end

class Aos < Formula
  desc "Agents of Shield scanning CLI"
  homepage "https://github.com/AOS-HZ/aos-cli"
  version "0.1.0"
  artifact = Pathname(__dir__).parent/"Artifacts"/"aos-#{version}-darwin-arm64.tar.gz"
  url "file://#{artifact}"
  sha256 "2b5859361238cc9a5fa55951c5e79b928c3f7bac1289743ff8052333015b463b"

  depends_on arch: :arm64
  depends_on macos: :monterey

  def install
    root = Dir["aos-*"].find { |path| File.directory?(path) } || "."
    bin.install File.join(root, "aos")
    pkgshare.install File.join(root, "README.md")
  end

  test do
    assert_match "Usage: aos", shell_output("#{bin}/aos --help")
  end
end

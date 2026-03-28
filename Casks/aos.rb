cask "aos" do
  version "0.1.0"
  sha256 "2b5859361238cc9a5fa55951c5e79b928c3f7bac1289743ff8052333015b463b"

  artifact = Pathname(__dir__).parent/"Artifacts"/"aos-#{version}-darwin-arm64.tar.gz"
  url "file://#{artifact}"
  name "AOS"
  desc "Agents of Shield scanning CLI"
  homepage "https://github.com/AOS-HZ/aos-cli"

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  binary "aos-#{version}-darwin-arm64/aos"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "com.apple.quarantine", "#{staged_path}/aos-#{version}-darwin-arm64/aos"],
                   sudo: false
  end
end

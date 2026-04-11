cask "aos-desktop" do
  version "0.1.4"
  sha256 "484e213a64bdaf33efaf938dc550683adcd0f7f13d1c8920d5aaaec9dd2a2d10"

  url "https://github.com/AOS-HZ/aos-desktop-releases/releases/download/v#{version}/Aegis_0.1.4_universal.dmg"
  name "AOS Desktop"
  desc "Desktop security workbench for AI agent scanning and runtime monitoring."
  homepage "https://github.com/AOS-HZ/aos-desktop-releases"

  depends_on macos: ">= :monterey"

  app "Aegis.app"
end

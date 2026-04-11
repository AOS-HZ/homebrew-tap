cask "aos-desktop" do
  version "0.1.4"
  sha256 "de4331b853301ddfd522de6b78cd58bc935f302457111984cb1d7a8b2de17ce9"

  url "https://github.com/AOS-HZ/aos-desktop-releases/releases/download/v#{version}/Aegis_0.1.4_universal.dmg"
  name "AOS Desktop"
  desc "Desktop security workbench for AI agent scanning and runtime monitoring."
  homepage "https://github.com/AOS-HZ/aos-desktop-releases"

  depends_on macos: ">= :monterey"

  app "Aegis.app"
end

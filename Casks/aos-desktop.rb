cask "aos-desktop" do
  version "0.1.8"
  sha256 "2859af794633cd254cb695a3b16abe07f1658477f4b62fe635162ef7ce9de56b"

  url "https://github.com/AOS-HZ/aos-desktop-releases/releases/download/v#{version}/Aegis_0.1.8_universal.dmg"
  name "AOS Desktop"
  desc "Desktop security workbench for AI agent scanning and runtime monitoring."
  homepage "https://github.com/AOS-HZ/aos-desktop-releases"

  depends_on macos: ">= :sonoma"

  app "Aegis.app"

  preflight do
    target = Pathname.new(appdir).join("Aegis.app")
    bypass_existing_app_check =
      ARGV.include?("-f") || ARGV.include?("--force") || ARGV.include?("--adopt")

    if !bypass_existing_app_check && !cask.installed? && ::Cask::Utils.path_occupied?(target)
      raise ::Cask::CaskError, <<~EOS
        An existing app already exists at '#{target}', but this cask is not yet managing it.

        Homebrew will not overwrite an app that it is not already managing.
        To continue, choose one of:

          brew install --cask --force aos-desktop
          brew install --cask --adopt aos-desktop

        Use '--force' to replace the existing app.
        Use '--adopt' only if the existing app is identical to this cask artifact.
      EOS
    end
  end
end

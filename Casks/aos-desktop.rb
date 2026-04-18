cask "aos-desktop" do
  version "0.1.7"
  sha256 "4af2e4968be3981fa632daf9c137886a1228d286d28d4bdb772df32b81ca981d"

  url "https://github.com/AOS-HZ/aos-desktop-releases/releases/download/v#{version}/Aegis_0.1.7_universal.dmg"
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

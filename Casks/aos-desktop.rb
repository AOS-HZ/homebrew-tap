cask "aos-desktop" do
  version "0.1.10"
  sha256 "81d822d2848d837d3985b4effaac14426ef654bc872424af3de5aac0df91b91c"

  url "https://github.com/AOS-HZ/aos-desktop-releases/releases/download/v#{version}/Aegis_0.1.10_universal.dmg"
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

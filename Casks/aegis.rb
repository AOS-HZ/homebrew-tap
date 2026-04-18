cask "aegis" do
  version "0.1.6"
  sha256 "b982487e4b09b6410b27701366924569bab985906c3df8f33a70bcaf5b6ebbcb"

  url "https://github.com/AOS-HZ/aos-desktop-releases/releases/download/v#{version}/Aegis_0.1.6_universal.dmg"
  name "Aegis"
  desc "Desktop runtime monitor and skills manager for AOS."
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

          brew install --cask --force aegis
          brew install --cask --adopt aegis

        Use '--force' to replace the existing app.
        Use '--adopt' only if the existing app is identical to this cask artifact.
      EOS
    end
  end
end

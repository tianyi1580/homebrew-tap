cask "typeread" do
  version "0.1.7"
  sha256 "b871fefc9a52844ba7fb39958c7b62e9392debcdbb350cd8b182973b17d89a56"
  url "https://github.com/tianyi1580/typeread/releases/download/v#{version}/TypeRead_0.1.7_aarch64.dmg"
  name "TypeRead"
  desc "A minimalist, beautiful typing practice app for readers"
  homepage "https://github.com/tianyi1580/typeread"
  app "TypeRead.app"
  postflight do
    system_command "xattr", args: ["-rd", "com.apple.quarantine", "#{appdir}/TypeRead.app"]
  end
end

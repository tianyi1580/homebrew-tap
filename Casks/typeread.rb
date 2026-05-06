cask "typeread" do
  version "0.1.9"
  sha256 "02cc254535e301c182a85ac783fb751a2e919dfed41194294af4057dff7e0022"
  url "https://github.com/tianyi1580/typeread/releases/download/v#{version}/TypeRead_0.1.9_aarch64.dmg"
  name "TypeRead"
  desc "A minimalist, beautiful typing practice app for readers"
  homepage "https://github.com/tianyi1580/typeread"
  app "TypeRead.app"
  postflight do
    system_command "xattr", args: ["-rd", "com.apple.quarantine", "#{appdir}/TypeRead.app"]
  end
end

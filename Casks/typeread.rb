cask "typeread" do
  version "0.1.8"
  sha256 "24b3ddf28913170c81133c7a1fc760526afad6e5b331a4649a3f7dc91199940d"
  url "https://github.com/tianyi1580/typeread/releases/download/v#{version}/TypeRead_0.1.8_aarch64.dmg"
  name "TypeRead"
  desc "A minimalist, beautiful typing practice app for readers"
  homepage "https://github.com/tianyi1580/typeread"
  app "TypeRead.app"
  postflight do
    system_command "xattr", args: ["-rd", "com.apple.quarantine", "#{appdir}/TypeRead.app"]
  end
end

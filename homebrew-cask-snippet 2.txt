cask "typeread" do
  version "0.1.2"
  sha256 "837329e772bf49e0cbbf8751a3b2ce64629399d24bf4c088136b149ab834971c"
  url "https://github.com/tianyi1580/typeread/releases/download/v#{version}/TypeRead_0.1.2_aarch64.dmg"
  name "TypeRead"
  desc "A minimalist, beautiful typing practice app for readers"
  homepage "https://github.com/tianyi1580/typeread"
  app "TypeRead.app"
  postflight do
    system_command "xattr", args: ["-rd", "com.apple.quarantine", "#{appdir}/TypeRead.app"]
  end
end

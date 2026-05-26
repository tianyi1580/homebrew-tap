cask "typeread" do
  version "0.1.11"
  sha256 "48882679849a944a95dacd7093f4b0771c7968e188c8686a3396791dcd46d75c"
  url "https://github.com/tianyi1580/typeread/releases/download/v#{version}/TypeRead_0.1.11_aarch64.dmg"
  name "TypeRead"
  desc "A minimalist, beautiful typing practice app for readers"
  homepage "https://github.com/tianyi1580/typeread"
  app "TypeRead.app"
  postflight do
    system_command "xattr", args: ["-rd", "com.apple.quarantine", "#{appdir}/TypeRead.app"]
  end
end

cask "mnemonic" do
  version "1.0.0"
  sha256 "65f9401c147d11672f934f9cbf7a53bd32de9d56bca372ef885212fbe04b9db2"

  url "https://github.com/octabyte/mnemonic-releases/releases/download/v#{version}/Mnemonic-#{version}.dmg"
  name "Mnemonic"
  desc "Menu bar text expander"
  homepage "https://github.com/octabyte/mnemonic-releases"

  livecheck do
    url "https://github.com/octabyte/mnemonic-releases/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Mnemonic.app"

  zap trash: [
    "~/Library/Application Support/Mnemonic",
    "~/Library/Caches/org.kiba.mnemonic",
    "~/Library/HTTPStorages/org.kiba.mnemonic",
    "~/Library/Preferences/org.kiba.mnemonic.plist",
  ]
end

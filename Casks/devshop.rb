cask "devshop" do
  version "1.0.0"
  sha256 "1fad2442ee52fdd25709161bb605a7871cddc339722e6d54aff478bbdea2a0e6"

  url "https://github.com/lucianoarguello335/devshop/releases/download/v#{version}/DevShop-#{version}.dmg"
  name "DevShop"
  desc "Read-only viewer and inspector for your Mac development environment"
  homepage "https://github.com/lucianoarguello335/devshop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "DevShop.app"

  # DevShop writes a size cache under Application Support, one preference key for the
  # chosen layout, and AppKit's own saved window state. Nothing else touches the disk.
  zap trash: [
    "~/Library/Application Support/DevShop",
    "~/Library/Preferences/com.lucianoarguello.devshop.plist",
    "~/Library/Saved Application State/com.lucianoarguello.devshop.savedState",
  ]
end

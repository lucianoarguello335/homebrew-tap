cask "devshop" do
  version "1.0.1"
  sha256 "0b34f583a0aa8fcae2c2297dc397d406f5f7ab079d579240826af8a3757f44be"

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

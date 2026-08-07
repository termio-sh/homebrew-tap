cask "termio" do
  version "0.30.0"
  sha256 "f97c49d2fd0f7626c419e2e57af4d44a0ec539eac4e77dcc3c890a2cc0bc50b1"

  url "https://downloads.termio.sh/v#{version}/termio.dmg"
  name "termio"
  desc "Native terminal for AI coding agents"
  homepage "https://termio.sh/"

  livecheck do
    url "https://downloads.termio.sh/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "termio.app"

  zap trash: [
    "~/.termio",
    "~/Library/Application Support/termio",
    "~/Library/Caches/sh.termio.app",
    "~/Library/HTTPStorages/sh.termio.app",
    "~/Library/Preferences/sh.termio.app.plist",
    "~/Library/Saved Application State/sh.termio.app.savedState",
  ]
end

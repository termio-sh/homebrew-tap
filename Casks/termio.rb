cask "termio" do
  version "0.53.3"
  sha256 "4cac29ead9e2020e38b540cd840bb77e5603bcdb9a41db728840ab64bdf8d5c1"

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

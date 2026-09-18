cask "termio" do
  version "0.53.4"
  sha256 "881400345286650aa571d3c5f4536a1fe317b696118f36a04a95bfdd0fe946cc"

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

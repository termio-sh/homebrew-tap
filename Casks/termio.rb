cask "termio" do
  version "0.37.0"
  sha256 "e12eec3a976ff7787d4dd4d1b23cef5628382fe81f656b628439cfacefdff504"

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

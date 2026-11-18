cask "termio" do
  version "0.76.0"
  sha256 "22b99873276ff915e92b4eef6e3b107274500c7d252a7cc1f0e4395256d3e65b"

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

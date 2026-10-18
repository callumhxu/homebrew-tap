cask "launchpod" do
  version "1.0.0"
  sha256 "eef9c5e8ceb54da55c9b34578cf2e0cfbb8d70fd3583bf3ceb040681e7664468"

  url "https://github.com/callumhxu/launchpod/releases/download/v#{version}/Launchpod-#{version}-universal.dmg"
  name "Launchpod"
  desc "Open-source Launchpad alternative"
  homepage "https://github.com/callumhxu/launchpod"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Launchpod.app"

  zap trash: [
    "~/Library/Application Support/Launchpod",
    "~/Library/Caches/app.joyx.launchpod",
    "~/Library/HTTPStorages/app.joyx.launchpod",
    "~/Library/Preferences/app.joyx.launchpod.dock-icon.plist",
    "~/Library/Preferences/app.joyx.launchpod.plist",
  ]
end

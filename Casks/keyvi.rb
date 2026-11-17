# SPDX-License-Identifier: GPL-3.0-or-later
cask "keyvi" do
  version "1.0.0"
  sha256 "2c8266b6cf77ac7306a083a0ba97bf58c221ad6bba3f33cf3b5a87fdfeaa1de8"

  url "https://keyvi.kal.vn/download/keyvi-1.0.0.dmg"
  name "KeyVi"
  desc "Vietnamese input method (Telex and VNI)"
  homepage "https://keyvi.kal.vn/"

  livecheck do
    url "https://keyvi.kal.vn/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "KeyVi.app"

  zap trash: [
    "~/Library/Application Support/KeyVi",
    "~/Library/Logs/KeyVi",
    "~/Library/Preferences/vn.kal.keyvi.plist",
    "~/Library/Caches/vn.kal.keyvi",
    "~/Library/HTTPStorages/vn.kal.keyvi",
    "~/Library/HTTPStorages/vn.kal.keyvi.binarycookies",
    "~/Library/Saved Application State/vn.kal.keyvi.savedState",
  ]
end

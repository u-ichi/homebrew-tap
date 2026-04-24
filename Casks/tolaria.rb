cask "tolaria" do
  version "2026.4.23"
  sha256 "90b544ad93b59538a03a04a0023b90c28a0b2058dad4e257ce5d7456d30c8b00"

  url "https://github.com/refactoringhq/tolaria/releases/download/stable-v#{version}/Tolaria_#{version}_aarch64.dmg",
      verified: "github.com/refactoringhq/tolaria/"
  name "Tolaria"
  desc "Desktop app for managing markdown knowledge bases"
  homepage "https://github.com/refactoringhq/tolaria"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^stable-v(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Tolaria.app"

  zap trash: [
    "~/Library/Application Support/Tolaria",
    "~/Library/Caches/com.refactoringhq.tolaria",
    "~/Library/Preferences/com.refactoringhq.tolaria.plist",
    "~/Library/Saved Application State/com.refactoringhq.tolaria.savedState",
  ]
end

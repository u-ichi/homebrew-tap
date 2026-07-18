# PingPlace: 通知バナーの表示位置を変更する menu bar アプリ
# 公式 (NotWadeGrimridge/PingPlace) v1.4.0 は LSMinimumSystemVersion 26.4.1 を要求し、
# macOS 26.3 以下では起動できない。本 cask は原作者が macOS 26 ユーザー向けに公認した
# sk0gen フォークビルド (最低 macOS 14.0) を指す。公式が現行 OS の floor を下げたら
# notwadegrimridge/brew の公式 cask に戻すこと。
cask "pingplace" do
  version "1.3.2"
  sha256 "b9cfe426d265996a527479c25d0e5abe62b11b48eee0ea045f067e726e295311"

  url "https://github.com/sk0gen/PingPlace/releases/download/v#{version}/PingPlace.app.tar.gz",
      verified: "github.com/sk0gen/PingPlace/"
  name "PingPlace"
  desc "Control where notifications appear (sk0gen macOS 26 fork build)"
  homepage "https://github.com/sk0gen/PingPlace"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^v(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :sonoma

  app "PingPlace.app"

  zap trash: [
    "~/Library/LaunchAgents/com.grimridge.PingPlace.plist",
    "~/Library/Preferences/com.grimridge.PingPlace.plist",
  ]
end

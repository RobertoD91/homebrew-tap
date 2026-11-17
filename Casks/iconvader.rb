cask "iconvader" do
  version "3.0.5"
  sha256 "b62eb24e192dde646f0deb54c89f1be3804d0437526ec76d158d6ce0f51b95ac"

  url "https://github.com/RobertoD91/IcoNVader-rebuild/releases/download/v#{version}/IcoNVader-saver.zip"
  name "IcoNVader"
  desc "Unofficial rebuild of the IcoNVader screen saver"
  homepage "https://github.com/RobertoD91/IcoNVader-rebuild"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  screen_saver "IcoNVader.saver"

  zap trash: "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/io.github.robertod91.IcoNVader.*.plist"

  caveats <<~EOS
    Choose IcoNVader in System Settings > Screen Saver.

    After an upgrade, quit System Settings and run
      killall legacyScreenSaver
    otherwise macOS keeps the previous version loaded.
  EOS
end

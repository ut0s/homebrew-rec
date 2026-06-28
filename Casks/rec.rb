cask "rec" do
  version "0.1.1"
  sha256 "7f3d5ab16e6c640d03dae3cb6bf2a419ad690e5b1f0af090242d132823e9ccdd"

  url "https://github.com/ut0s/homebrew-rec/releases/download/v0.1.1/rec-v0.1.1.zip",
      verified: "github.com/ut0s/homebrew-rec/"
  name "rec"
  desc "Local-first podcast recorder"
  homepage "https://github.com/ut0s/homebrew-rec"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "rec.app"

  zap trash: [
    "~/Library/Preferences/app.recorder.rec.plist",
  ]
end

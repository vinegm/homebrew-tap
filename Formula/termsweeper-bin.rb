class TermsweeperBin < Formula
  desc "Customizable minesweeper terminal UI"
  homepage "https://github.com/vinegm/termsweeper"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinegm/termsweeper/releases/download/v1.0.0/Termsweeper_1.0.0_darwin_arm64.tar.gz"
      sha256 "a874f76bcef3ce4706edbe8cefd8171a9f2f50814eaead8040e4ef97e5336c26"
    end
    on_intel do
      url "https://github.com/vinegm/termsweeper/releases/download/v1.0.0/Termsweeper_1.0.0_darwin_amd64.tar.gz"
      sha256 "9cee22ec800cb166d21e07c58f5efcc7f2b248845f89814b76b72f555e895f4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vinegm/termsweeper/releases/download/v1.0.0/Termsweeper_1.0.0_linux_arm64.tar.gz"
      sha256 "9206bcd720da4d4135872cc92d692dfb70d8cfb4fa067f397e1239cdd2d809f0"
    end
    on_intel do
      url "https://github.com/vinegm/termsweeper/releases/download/v1.0.0/Termsweeper_1.0.0_linux_amd64.tar.gz"
      sha256 "8e7c15fdcd492a8deb378f734b9ea17694b115b5bb090454f6b5277a8b126e66"
    end
  end

  def install
    bin.install "Termsweeper" => "termsweeper"
  end

  test do
    output = shell_output("#{bin}/termsweeper --help 2>&1", 2)
    assert_match "-debug", output
  end
end

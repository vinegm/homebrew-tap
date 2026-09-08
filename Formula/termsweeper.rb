class Termsweeper < Formula
  desc "Customizable minesweeper terminal UI"
  homepage "https://github.com/vinegm/termsweeper"
  url "https://github.com/vinegm/termsweeper.git",
      tag:      "v1.0.0",
      revision: "17bfb1c959689c9301beaecaa25a770572c9011f"
  license "MIT"
  head "https://github.com/vinegm/termsweeper.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
    pkgshare.install "Themes"
  end

  def caveats
    <<~EOS
      Example config and themes were installed to:
        #{opt_pkgshare}/Themes
    EOS
  end

  test do
    output = shell_output("#{bin}/termsweeper --help 2>&1", 2)
    assert_match "-debug", output
  end
end

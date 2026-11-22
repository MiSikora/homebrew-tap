class QuackMcp < Formula
  desc "MCP server for actions of quack-enabled Android apps"
  homepage "https://github.com/MiSikora/Quack"
  url "https://github.com/MiSikora/Quack/releases/download/0.1.1/quack-mcp-0.1.1-macos.tar.gz"
  sha256 "af934523dc5718ecd75166d7774c228f97da2aea6fb3166398fdc44102a082d2"
  license "Apache-2.0"

  depends_on :macos
  depends_on "misikora/tap/quack"

  def install
    bin.install "quack-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack-mcp --version")
  end
end

class QuackMcp < Formula
  desc "MCP server for actions of quack-enabled Android apps"
  homepage "https://github.com/MiSikora/Quack"
  url "https://github.com/MiSikora/Quack/releases/download/0.1.4/quack-mcp-0.1.4-macos.tar.gz"
  sha256 "6239c5724cc48dca8f9c891d1a5da4c53632a6f9dfb862f39d4cd77a04612b78"
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

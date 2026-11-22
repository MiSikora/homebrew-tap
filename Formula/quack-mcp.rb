class QuackMcp < Formula
  desc "MCP server for actions of quack-enabled Android apps"
  homepage "https://github.com/MiSikora/Quack"
  url "https://github.com/MiSikora/Quack/releases/download/0.1.2/quack-mcp-0.1.2-macos.tar.gz"
  sha256 "5097e66bb999bac4c7060122c32e37cd7b99f814d4785ef5386e4fc4bcf6ccd7"
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

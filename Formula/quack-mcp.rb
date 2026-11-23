class QuackMcp < Formula
  desc "MCP server for actions of quack-enabled Android apps"
  homepage "https://github.com/MiSikora/Quack"
  url "https://github.com/MiSikora/Quack/releases/download/0.1.5/quack-mcp-0.1.5-macos.tar.gz"
  sha256 "071c25a47ae46f4e5fc35f8261d9cddf2e780284493e689a9822b645c5e96218"
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

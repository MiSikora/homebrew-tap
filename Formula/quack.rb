class Quack < Formula
  desc "Call actions of quack-enabled Android apps over adb"
  homepage "https://github.com/MiSikora/Quack"
  url "https://github.com/MiSikora/Quack/releases/download/0.1.4/quack-0.1.4-macos.tar.gz"
  sha256 "bfe4e2085682f0562cfaac6bff1aff2f771d17db4d0fb6c2e3b6aa71b39280ea"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "quack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack --version")
  end
end

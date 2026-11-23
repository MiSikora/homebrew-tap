class Quack < Formula
  desc "Call actions of quack-enabled Android apps over adb"
  homepage "https://github.com/MiSikora/Quack"
  url "https://github.com/MiSikora/Quack/releases/download/0.1.5/quack-0.1.5-macos.tar.gz"
  sha256 "7eb95add27ac011464ce46c7a9a317e07a7f4bb9e9ffbbf4b90cdf06b29664af"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "quack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack --version")
  end
end

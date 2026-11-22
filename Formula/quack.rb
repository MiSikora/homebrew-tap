class Quack < Formula
  desc "Call actions of quack-enabled Android apps over adb"
  homepage "https://github.com/MiSikora/Quack"
  url "https://github.com/MiSikora/Quack/releases/download/0.1.3/quack-0.1.3-macos.tar.gz"
  sha256 "0ff425483d4ce607764bd6fd7127038addb6853ca6103bd37a006188ff284f0a"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "quack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack --version")
  end
end

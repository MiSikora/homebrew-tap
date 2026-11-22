class Quack < Formula
  desc "Call actions of quack-enabled Android apps over adb"
  homepage "https://github.com/MiSikora/Quack"
  url "https://github.com/MiSikora/Quack/releases/download/0.1.2/quack-0.1.2-macos.tar.gz"
  sha256 "2c47bf41d9595e2ddfbc6d701b02a69bc1d15ecf5df8f0dda8638928148384db"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "quack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack --version")
  end
end

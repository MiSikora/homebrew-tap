class Quack < Formula
  desc "Call actions of quack-enabled Android apps over adb"
  homepage "https://github.com/MiSikora/Quack"
  url "https://github.com/MiSikora/Quack/releases/download/0.1.1/quack-0.1.1-macos.tar.gz"
  sha256 "1d99a2ec6e9ce76080dd6d6f6a6b08997e834a06de57cf0a68a7f34300c67cb6"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "quack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack --version")
  end
end

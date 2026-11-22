class Quack < Formula
  desc "Call actions of quack-enabled Android apps over adb"
  homepage "https://github.com/MiSikora/Quack"
  url "https://github.com/MiSikora/Quack/releases/download/0.1.0/quack-0.1.0-macos.tar.gz"
  sha256 "808c7f127b5a89668b4c6f5ab30314dff1e841b85341a6fedaece1e9e761b784"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "quack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack --version")
  end
end

class Mfcqi < Formula
  desc "Multi-Factor Code Quality Index for Java codebases"
  homepage "https://github.com/integrallis/mfcqi-java"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/mfcqi-java/releases/download/v0.2.0/mfcqi-macos-aarch64"
      sha256 "e822367c952dd08d2910586cb1cb2649a08ec3f3469e705a62d8815817c155cb"
    end
    # Intel macOS: no native binary is published; use the JVM distribution or build from source.
  end

  on_linux do
    on_intel do
      url "https://github.com/integrallis/mfcqi-java/releases/download/v0.2.0/mfcqi-linux-x86_64"
      sha256 "14de429689bffe20eae510aadc528684996ed96d642d36c6e6d30d3a09c7e7bb"
    end
  end

  def install
    bin.install Dir["mfcqi-*"].first => "mfcqi"
  end

  test do
    assert_match "mfcqi-java", shell_output("#{bin}/mfcqi --version")
  end
end

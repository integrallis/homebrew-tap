class Mfcqi < Formula
  desc "Multi-Factor Code Quality Index for Java codebases"
  homepage "https://github.com/integrallis/mfcqi-java"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/mfcqi-java/releases/download/v0.4.0/mfcqi-macos-aarch64"
      sha256 "b1cbb6fafcc9c141fae8da09eab6130b5fffd384379dda1d892079f74e22e7b3"
    end
    # Intel macOS: no native binary is published; use the JVM distribution or build from source.
  end

  on_linux do
    on_intel do
      url "https://github.com/integrallis/mfcqi-java/releases/download/v0.4.0/mfcqi-linux-x86_64"
      sha256 "540197e4cebb804d5eaaf0594f5ec049d17b9d18b21d900a159faa1c0a1c6ed5"
    end
  end

  def install
    bin.install Dir["mfcqi-*"].first => "mfcqi"
  end

  test do
    assert_match "mfcqi-java", shell_output("#{bin}/mfcqi --version")
  end
end

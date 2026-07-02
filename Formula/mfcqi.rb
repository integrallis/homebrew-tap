class Mfcqi < Formula
  desc "Multi-Factor Code Quality Index for Java codebases"
  homepage "https://github.com/integrallis/mfcqi-java"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/mfcqi-java/releases/download/v0.6.0/mfcqi-macos-aarch64"
      sha256 "8e54b13fb0879a98d908badbad0a3d74475b563f4038f82f0322b495a58434d3"
    end
    # Intel macOS: no native binary is published; use the JVM distribution or build from source.
  end

  on_linux do
    on_intel do
      url "https://github.com/integrallis/mfcqi-java/releases/download/v0.6.0/mfcqi-linux-x86_64"
      sha256 "2b7f2eef81334b35385e398acf209e9c783b4da332463bccbf529980a4d8f6f0"
    end
  end

  def install
    bin.install Dir["mfcqi-*"].first => "mfcqi"
  end

  test do
    assert_match "mfcqi-java", shell_output("#{bin}/mfcqi --version")
  end
end

class Mfcqi < Formula
  desc "Multi-Factor Code Quality Index for Java codebases"
  homepage "https://github.com/integrallis/mfcqi-java"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/mfcqi-java/releases/download/v0.7.0/mfcqi-macos-aarch64"
      sha256 "c7f7871a785a725d19322907be2a5306197ec4c10a9c0695790a33c772b40fc4"
    end
    on_intel do
      url "https://github.com/integrallis/mfcqi-java/releases/download/v0.7.0/mfcqi-macos-x86_64"
      sha256 "5daa860bc015612b5f3c4c8a778a4fb5a8c3156d3308f35c2472dcdc73f14f6d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/integrallis/mfcqi-java/releases/download/v0.7.0/mfcqi-linux-x86_64"
      sha256 "277a2729de33e3acb1c4e63ded667c8d0ecb5496f91ddf13bff6bf7d745ff5fe"
    end
  end

  def install
    bin.install Dir["mfcqi-*"].first => "mfcqi"
  end

  test do
    assert_match "mfcqi-java", shell_output("#{bin}/mfcqi --version")
  end
end

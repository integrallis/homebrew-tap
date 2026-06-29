class Mfcqi < Formula
  desc "Multi-Factor Code Quality Index for Java codebases"
  homepage "https://github.com/integrallis/mfcqi-java"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/mfcqi-java/releases/download/v0.3.0/mfcqi-macos-aarch64"
      sha256 "ae7aceb8a1a83c2312eb5ea0e8736b8ca65e4c8e1c46197058af9a521393e7ab"
    end
    on_intel do
      url "https://github.com/integrallis/mfcqi-java/releases/download/v0.3.0/mfcqi-macos-x86_64"
      sha256 "df649458b6d8d9a1cca15c937d6d129b358ab4dd20d744f0ab237dd6c06bb7e4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/integrallis/mfcqi-java/releases/download/v0.3.0/mfcqi-linux-x86_64"
      sha256 "527dfa0b024076fec7d10d19e3ca08f35adccf6e003903476cd80db6d4eacb59"
    end
  end

  def install
    bin.install Dir["mfcqi-*"].first => "mfcqi"
  end

  test do
    assert_match "mfcqi-java", shell_output("#{bin}/mfcqi --version")
  end
end

class Mfcqi < Formula
  desc "Multi-Factor Code Quality Index for Java codebases"
  homepage "https://github.com/integrallis/mfcqi-java"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/mfcqi-java/releases/download/v0.5.0/mfcqi-macos-aarch64"
      sha256 "cceafcaad0faa76993dde7711af16a6cd1b68ff071a539269b78326262a42ccb"
    end
    # Intel macOS: no native binary is published; use the JVM distribution or build from source.
  end

  on_linux do
    on_intel do
      url "https://github.com/integrallis/mfcqi-java/releases/download/v0.5.0/mfcqi-linux-x86_64"
      sha256 "2690a7e3d971013bf211b743794654bd45ab3c27788bf79fbe29bf00d4d479af"
    end
  end

  def install
    bin.install Dir["mfcqi-*"].first => "mfcqi"
  end

  test do
    assert_match "mfcqi-java", shell_output("#{bin}/mfcqi --version")
  end
end

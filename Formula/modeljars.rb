class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.3/modeljars-macos-aarch64"
      sha256 "88f78a369ce5754a5521db887789686b63713242698219828fb9ec68a4e4b7d4"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.3/modeljars-macos-x86_64"
      sha256 "f4fe052d7ac0f044b7a96ff59061d9389dfb2a8c68cb6740cb0531cb13c4830d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.3/modeljars-linux-aarch64"
      sha256 "afb58f4a8043ce34cf7ba5c7f69547d1a9b7a54ce989fdf26c34348418bcd437"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.3/modeljars-linux-x86_64"
      sha256 "9d5c69c2263b0295fabacbb05089817f4e35f2ff4707dbd30947273784a56dfd"
    end
  end

  def install
    bin.install Dir["modeljars-*"].first => "modeljars"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modeljars version")
    assert_match "ALIAS", shell_output("#{bin}/modeljars search gemma")
  end
end

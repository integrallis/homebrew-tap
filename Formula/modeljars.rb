class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.7/modeljars-macos-aarch64"
      sha256 "62babac1e78892009b138712ca303888ee5f55a27d3a0e597e4f7380529a1ae8"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.7/modeljars-macos-x86_64"
      sha256 "05c2fdc6234c88cc19aab1ce787d38edab2ebbbb36f15a9ef83fb91aa5efe82a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.7/modeljars-linux-aarch64"
      sha256 "8c80e9842b8a97d50952eb5c1bf605f97c307f561bf670226f72131597d09ea5"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.7/modeljars-linux-x86_64"
      sha256 "c3b6292e80ed353e9f788dd118dfd6c0877838b2dca5ae9b9028b5dbf99a1283"
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

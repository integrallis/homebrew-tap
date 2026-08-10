class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.10/modeljars-macos-aarch64"
      sha256 "d372e59921e3817c661b9386dc6571ccfe4df368a5abea53c2a33605a605896e"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.10/modeljars-macos-x86_64"
      sha256 "e9796d936a5e04ea81af5c9a87d2dac1c9e4f1e5b32cdcd2f0817ce63ebf75d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.10/modeljars-linux-aarch64"
      sha256 "06869d845118947b081216849b31c61f9f9e240184699524fbf8ad879631509e"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.10/modeljars-linux-x86_64"
      sha256 "d951bff39e88f252f4806a86dd9a124dfeab0971c2861ec43db329e0d07c46a0"
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

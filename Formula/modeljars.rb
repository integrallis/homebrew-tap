class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.4/modeljars-macos-aarch64"
      sha256 "9756e72ec05d39e04fb1bf653c824dad03fc1e1cef255cf59b9373e82c4cc69e"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.4/modeljars-macos-x86_64"
      sha256 "fd54acd55a95a9a01b672fc42654869d959039478bb1a060fe53ac9273408b7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.4/modeljars-linux-aarch64"
      sha256 "4cea1130870d332ae28f6a5089095ad97b8fb3c85fdf52c8a380f02f5f617cee"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.4/modeljars-linux-x86_64"
      sha256 "bc8092a46f3924380c7581bfbe26cc954eeb10577bea5538b1ea18d9f40cefdd"
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

class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.16"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.16/modeljars-macos-aarch64"
      sha256 "cd304bb8cd73e1a776a907b1fa9df434347701b570c893f0b185154629206df9"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.16/modeljars-macos-x86_64"
      sha256 "54e704f3fe45e8a467f4dfcbe6429f228e927b44278c1f628fe72e35e3889854"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.16/modeljars-linux-aarch64"
      sha256 "8a6b1e7e07159576ea42628e01290c0211e07acf8cc3db904083d04c7584c619"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.16/modeljars-linux-x86_64"
      sha256 "e56ac06334e81c9ca3f51c07650f2ac9041259cf7029261058877a1b23898fec"
    end
  end

  def install
    bin.install Dir["modeljars-*"].first => "modeljars"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modeljars version")
    search = shell_output("#{bin}/modeljars search fintech --color never")
    assert_match "king3djbl_nexus_finance_gguf_q4_k_m", search
  end
end

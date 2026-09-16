class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.41"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.41/modeljars-macos-aarch64"
      sha256 "7d71edf2b4b7953aec82a3c4b4b94ea5238096936445fcba6ea1bc6c508cd528"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.41/modeljars-macos-x86_64"
      sha256 "40bb1549e11d37eb34ab410336128606941fc877811c0e66461a872ebb31dded"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.41/modeljars-linux-aarch64"
      sha256 "c538fddb9999ec089160fdec00c4cafb6e9936039137503b930bd4a8545a1a40"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.41/modeljars-linux-x86_64"
      sha256 "51160281a52e0f0d4a23fb4ec58d72d2d2f7950ce11ffc01e95a15e9a47ac267"
    end
  end

  def install
    bin.install Dir["modeljars-*"].first => "modeljars"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modeljars version")
    search = shell_output("#{bin}/modeljars search fintech --output json")
    assert_match "king3djbl_nexus_finance_gguf_q4_k_m", search
  end
end

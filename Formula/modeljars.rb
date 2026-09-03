class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.30"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.30/modeljars-macos-aarch64"
      sha256 "a6987510d678bc284d28c484e3255ab79cce81fa850e10a98c4aa09c35fe8cf2"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.30/modeljars-macos-x86_64"
      sha256 "8c550ad9a24bd791b1352fc867c52743019c07a09c93e61a6ae97f6482bb4006"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.30/modeljars-linux-aarch64"
      sha256 "401d7c1f75cea790ad9dc6b8d2e44cb2f38b5e6ed2cb77347d9c4e85c0a1f372"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.30/modeljars-linux-x86_64"
      sha256 "f506f8358cc26380df599577f28e288b9aa3e15d5226906a9769d99a8b9a65a1"
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

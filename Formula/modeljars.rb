class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.46"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.46/modeljars-macos-aarch64"
      sha256 "8b2804890add7543c1bfd7a8ad4bb1c290cbaf9a146505a3ca4e538c10f137fc"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.46/modeljars-macos-x86_64"
      sha256 "e865fd020b73de06d4fe3b69ac46d112b158824db9e7f02ce1da44f97ad61d6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.46/modeljars-linux-aarch64"
      sha256 "734c36a401fcd2268109e93c66f9d3722d9459036a51f35d4592ac5f7a7a4e1f"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.46/modeljars-linux-x86_64"
      sha256 "e6d4fe3604033e81083246ff022611262d0c9d2d3bbd4c040a8b512ef9570626"
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
